import Foundation
import CoreGraphics

// The original road bitmap uses 12=verge, 13=kerb, 14=road, 15=paint.
// Copper supplies the track/weather lighting. Asphalt and terrain average the
// artificial stripe shades; paint and kerbs retain their original colours.
// Surface motion uses the original completed road projection, not a clock.
final class LotusHDRoad {
    private struct Level { let size: Int;let light: [Float] }
    private struct TextureLine { let size: Int;let light: [Float] }
    private struct TerrainLevel { let size: Int;let colour: [SIMD3<Float>] }
    private struct TerrainLine { let size: Int;let colour: [SIMD3<Float>] }
    private struct TextureFilter { let lod: Double;let offsets: [Double] }
    private struct Geometry { let edges: [[[Double]]];let left: [[Double]];let right: [[Double]] }
    struct Edge { let x: Double;let left: UInt8;let right: UInt8 }
    struct Row { let initial: UInt8;let edges: [Edge] }
    private struct Point { let y: Double;let x: Double }
    private struct LaneTrack { let key: Int;let y: Int;let lateral: Double;let width: Double }
    private struct Curve {
        let origin: Double;let a: Double;let b: Double;let c: Double
        func value(_ y: Double) -> Double { let t = (y-origin)/32;return a+b*t+c*t*t }
    }
    private struct Trace {
        let samples: [Double]
        let slopes: [Double]
        func linearValue(_ y: Double) -> Double {
            let py = max(0,min(Double(samples.count-1),y)),i = Int(floor(py))
            let next = min(samples.count-1,i+1)
            return samples[i]+(samples[next]-samples[i])*(py-Double(i))
        }
        func value(_ y: Double) -> Double {
            if y<=0 { return samples[0]+y*slopes[0] }
            let last = samples.count-1
            if y>=Double(last) { return samples[last]+(y-Double(last))*slopes[last] }
            let i = Int(floor(y)),t = y-Double(i),t2 = t*t,t3 = t2*t
            return (2*t3-3*t2+1)*samples[i]+(t3-2*t2+t)*slopes[i]
                + (-2*t3+3*t2)*samples[i+1]+(t3-t2)*slopes[i+1]
        }
    }
    private let textures: [[Level]]
    private let terrainTextures: [Terrain:[TerrainLevel]]

    enum Terrain: String,CaseIterable {
        case grass,dryGrass,sand,snow,gravel
        static func landscape(_ id: String?,colour: UInt32) -> Terrain {
            // Ten original landscape banks are reused by all 32 championship
            // tracks and Practice. Use the completed viewport's landscape,
            // rather than a live level number which can already have changed.
            switch id {
            case "a57dc22ffbc376ae","79438f0019504177","72811009f14e5476","ed9b0c79f4422bac": return .grass
            case "6d99d6929891347c","1de193e47f315730": return .dryGrass
            case "4357c3969906db1b": return .sand
            case "fab3a779fbb7f385": return .snow
            case "b86520495c1bc4ad","49a6cc0aa2a7cef7": return .gravel
            default:
                let r = Int(colour&255),g = Int((colour>>8)&255),b = Int((colour>>16)&255)
                if min(r,g,b)>160 || (b>g && b>r*3/2) { return .snow }
                return g>r && g>b ? .grass:.sand
            }
        }
        func base(_ original: UInt32) -> SIMD3<Double> {
            let c = SIMD3(Double(original&255),Double((original>>8)&255),Double((original>>16)&255))
            let light = c.x*0.2126+c.y*0.7152+c.z*0.0722
            switch self {
            case .grass:
                return c.y>c.x && c.y>c.z ? c:SIMD3(0.65,1.12,0.57)*light
            case .dryGrass: return SIMD3(1.02,1.06,0.55)*light
            case .sand: return SIMD3(1.25,1.07,0.76)*light
            case .snow: return SIMD3(0.90,0.98,1.06)*(light*1.6)
            case .gravel: return SIMD3(1.04,1.01,0.95)*light
            }
        }
    }

    static func average(_ colours: Set<UInt32>) -> UInt32 {
        var result: UInt32 = 0xff000000
        for shift in [0,8,16] {
            result |= UInt32(colours.reduce(0){$0+Int(($1>>shift)&255)}/max(1,colours.count))<<shift
        }
        return result
    }

    // Recover the Copper's two paint phases from this completed frame. At the
    // horizon a 1024-unit dash can occupy less than one original scanline;
    // magnifying that binary row made isolated 4x4 white blocks in HD.
    struct PaintPattern {
        let visiblePhase: Int
        let colour: UInt32
        init(visiblePhase: Int,colour: UInt32) { self.visiblePhase = visiblePhase;self.colour = colour }
        init?(projection: LotusVideoRoad,palette: [UInt32],viewport: Int,validRows: [Bool]) {
            var states = [Int:Bool](),colours = Set<UInt32>()
            for y in 0..<96 where validRows[y] && projection.rows[y].scale>0 {
                let phase = (projection.rows[y].depth+Int(projection.distance>>4))&1024
                let visible = palette[(viewport+y)*32+15] != palette[(viewport+y)*32+14]
                if let previous = states[phase],previous != visible { return nil }
                states[phase] = visible
                if visible { colours.insert(palette[(viewport+y)*32+15]) }
            }
            guard states.count == 2,states[0] != states[1024],colours.count == 1 else { return nil }
            visiblePhase = states[0] == true ? 0:1024;colour = colours.first!
        }
        func coverage(projection: LotusVideoRoad,y: Int,subrow: Double,horizon: Int) -> Double {
            let current = Double(projection.rows[y].depth)
            let before = y>horizon && projection.rows[y-1].scale>0 ? Double(projection.rows[y-1].depth):current
            let after = y<95 && projection.rows[y+1].scale>0 ? Double(projection.rows[y+1].depth):current
            // Piecewise linear depth has identical values on both sides of a
            // row seam. Integrate the actual painted world interval per pixel.
            let slope = subrow<0 ? current-before:after-current
            let centre = current+subrow*slope+Double(projection.distance&0x7fff)/16
            let half = max(0.001,abs(slope)/8)
            func area(_ z: Double) -> Double {
                let t = z-Double(visiblePhase),cycle = floor(t/2048)
                return cycle*1024+min(1024,max(0,t-cycle*2048))
            }
            let coverage = (area(centre+half)-area(centre-half))/(2*half)
            return min(1,max(0,coverage))
        }

        // Exact intersections of the painted world intervals with a projected
        // segment. Keep fractional endpoints; even the smallest dash has area.
        func intervals(from a: Double,to b: Double,distance: UInt32) -> [ClosedRange<Double>] {
            let phase = Double(distance&0x7fff)/16-Double(visiblePhase)
            let start = a+phase,end = b+phase,delta = end-start
            if abs(delta)<0.000001 {
                return start-floor(start/2048)*2048<1024 ? [0...1]:[]
            }
            var result = [ClosedRange<Double>]()
            for cycle in Int(floor(min(start,end)/2048))...Int(floor(max(start,end)/2048)) {
                let x = (Double(cycle)*2048-start)/delta
                let z = (Double(cycle)*2048+1024-start)/delta
                let lo = max(0,min(x,z)),hi = min(1,max(x,z))
                if hi>lo { result.append(lo...hi) }
            }
            return result.sorted{$0.lowerBound<$1.lowerBound}
        }
    }

    struct KerbPattern {
        let first: UInt32
        let second: UInt32
        init?(projection: LotusVideoRoad,palette: [UInt32],viewport: Int,validRows: [Bool]) {
            var colours = [Int:UInt32]()
            for y in 0..<96 where validRows[y] && projection.rows[y].scale>0 {
                let phase = ((projection.rows[y].depth+Int(projection.distance>>4))&1024)/1024
                let colour = palette[(viewport+y)*32+13]
                if let previous = colours[phase],previous != colour { return nil }
                colours[phase] = colour
            }
            guard let first = colours[0],let second = colours[1] else { return nil }
            self.first = first;self.second = second
        }
    }

    struct PaintPolygon {
        let points: [CGPoint]

        // A lane cut off by the native bitmap has an implicit edge at x=0 or
        // x=320. Its remaining contour can cross that edge between scanlines.
        // Intersect at the true screen boundary before filling; clamping each
        // vertex would alter the slope and leave a wedge at the border.
        func clippedToViewport() -> PaintPolygon? {
            var clipped = points
            for (boundary,keepRight) in [(4.0,true),(1280.0,false)] {
                guard let last = clipped.last else { return nil }
                var output = [CGPoint](),previous = last
                func inside(_ p: CGPoint) -> Bool { keepRight ? p.x>=boundary:p.x<=boundary }
                for point in clipped {
                    if inside(point) != inside(previous) {
                        let t = (boundary-previous.x)/(point.x-previous.x)
                        output.append(CGPoint(x:boundary,y:previous.y+t*(point.y-previous.y)))
                    }
                    if inside(point) { output.append(point) }
                    previous = point
                }
                clipped = output
            }
            // If the implicit closing edge lies exactly on the viewport edge,
            // clipping can leave duplicate vertices or a zero-area out-and-back
            // segment along that edge. Remove it before submitting the path.
            var simplified = true
            while simplified && clipped.count>=3 {
                simplified = false
                for i in clipped.indices {
                    let a = clipped[(i+clipped.count-1)%clipped.count],b = clipped[i],c = clipped[(i+1)%clipped.count]
                    if abs((b.x-a.x)*(c.y-b.y)-(b.y-a.y)*(c.x-b.x))<0.00000001 {
                        clipped.remove(at:i);simplified = true;break
                    }
                }
            }
            guard clipped.count>=3 else { return nil }
            let origin = clipped[0]
            let area = (1..<clipped.count-1).reduce(0.0) { sum,i in
                return sum+(clipped[i].x-origin.x)*(clipped[i+1].y-origin.y)
                    - (clipped[i].y-origin.y)*(clipped[i+1].x-origin.x)
            }
            guard area>0.000001 else { return nil }
            return PaintPolygon(points:clipped)
        }
    }
    private struct PaintSpan { let left: Double;let right: Double }

    // These are filled vector polygons, not enlarged pixels or a dashed screen-
    // space stroke. Their lengths follow the original longitudinal projection.
    static func paintPolygons(rows: [Row?],horizon: Int,projection: LotusVideoRoad,pattern: PaintPattern) -> [PaintPolygon] {
        let prepared = roadGeometry(rows:rows,horizon:horizon,projection:projection,offsets:[-0.5,0.5])
        return stripPolygons(rows:prepared.rows,horizon:horizon,projection:projection,pattern:pattern,
            geometry:prepared.geometry,top:0,bottom:1,category:15,recoverDistant:!prepared.projected)
    }

    static func kerbPolygons(rows: [Row?],horizon: Int,projection: LotusVideoRoad,phase: Int? = nil) -> [PaintPolygon] {
        let prepared = roadGeometry(rows:rows,horizon:horizon,projection:projection,offsets:[-0.5,0.5])
        return stripPolygons(rows:prepared.rows,horizon:horizon,projection:projection,
            pattern:phase.map{PaintPattern(visiblePhase:$0,colour:0)},geometry:prepared.geometry,
            top:0,bottom:1,category:13,recoverDistant:false)
    }

    private static func stripPolygons(rows: [Row?],horizon: Int,projection: LotusVideoRoad,pattern: PaintPattern?,
                                      geometry: Geometry,top: Int,bottom: Int,category: UInt8,recoverDistant: Bool) -> [PaintPolygon] {
        func spans(_ y: Int,_ offset: Int) -> [PaintSpan] {
            guard let row = rows[y] else { return [] }
            var result = [PaintSpan](),start: Double? = row.initial == category ? 0:nil
            for (i,edge) in row.edges.enumerated() {
                let x = geometry.edges[y][i][offset]
                if edge.left == category,let a = start { result.append(PaintSpan(left:a,right:x));start = nil }
                if edge.right == category { start = x }
            }
            if let start { result.append(PaintSpan(left:start,right:320)) }
            return result
        }
        // The original pre-scaled road bitmap drops individual subpixel lanes
        // near the horizon. Recover its cross-section from several immediately
        // nearer, resolved rows, including any additional pit-entry markings.
        var templates = [[PaintSpan]]()
        for y in min(95,horizon+6)..<min(96,horizon+18) where recoverDistant && rows[y] != nil {
            let row = rows[y]!
            guard row.edges.contains(where:{$0.left == 13 && $0.right == 14}),
                  row.edges.contains(where:{$0.left == 14 && $0.right == 13}) else { continue }
            let l = geometry.left[y][top],r = geometry.right[y][top]
            let found = spans(y,top)
            guard r-l>48,found.count>=3,found.allSatisfy({$0.left>l && $0.right<r}) else { continue }
            templates.append(found.map{PaintSpan(left:($0.left-l)/(r-l),right:($0.right-l)/(r-l))})
        }
        let frequency = Dictionary(grouping:templates,by:{$0.count})
        let templateRows = frequency.max{a,b in a.value.count == b.value.count ? a.key<b.key:a.value.count<b.value.count}?.value ?? []
        func median(_ values: [Double]) -> Double { let sorted = values.sorted();return sorted[sorted.count/2] }
        let template = (templateRows.first?.indices ?? 0..<0).map { i in
            PaintSpan(left:median(templateRows.map{$0[i].left}),right:median(templateRows.map{$0[i].right}))
        }
        var result = [PaintPolygon]()
        for y in horizon..<96 where rows[y] != nil && projection.rows[y].scale>0 {
            var upper = spans(y,top),lower = spans(y,bottom)
            if y<horizon+6,!template.isEmpty {
                func distant(_ offset: Int) -> [PaintSpan] {
                    let l = geometry.left[y][offset],r = geometry.right[y][offset]
                    return template.map{PaintSpan(left:l+(r-l)*$0.left,right:l+(r-l)*$0.right)}
                }
                upper = distant(top);lower = distant(bottom)
            }
            guard upper.count == lower.count else { continue }
            let current = Double(projection.rows[y].depth)
            let before = y>horizon && projection.rows[y-1].scale>0 ? Double(projection.rows[y-1].depth):current
            let after = y<95 && projection.rows[y+1].scale>0 ? Double(projection.rows[y+1].depth):current
            for half in 0..<2 {
                let a = half == 0 ? (before+current)/2:current
                let b = half == 0 ? current:(current+after)/2
                for band in pattern?.intervals(from:a,to:b,distance:projection.distance) ?? [0...1] {
                    let t0 = (Double(half)+band.lowerBound)/2,t1 = (Double(half)+band.upperBound)/2
                    for i in upper.indices {
                        let u = upper[i],v = lower[i]
                        let l0 = u.left+(v.left-u.left)*t0,r0 = u.right+(v.right-u.right)*t0
                        let l1 = u.left+(v.left-u.left)*t1,r1 = u.right+(v.right-u.right)*t1
                        guard max(r0,r1)>1,min(l0,l1)<320 else { continue }
                        let polygon = PaintPolygon(points:[CGPoint(x:l0*4,y:(Double(y)+t0)*4),
                            CGPoint(x:r0*4,y:(Double(y)+t0)*4),CGPoint(x:r1*4,y:(Double(y)+t1)*4),
                            CGPoint(x:l1*4,y:(Double(y)+t1)*4)])
                        if let clipped = polygon.clippedToViewport() { result.append(clipped) }
                    }
                }
            }
        }
        return result
    }

    // Fractional edges from the completed original projection and its fixed
    // atlas profiles. No lane is fitted to the rounded pixels in this frame.
    // All markings, asphalt boundaries and kerbs share these same coordinates.
    private static func roadGeometry(rows: [Row?],horizon: Int,projection: LotusVideoRoad?,offsets: [Double])
        -> (rows:[Row?],geometry:Geometry,projected:Bool) {
        guard let projection,projection.rows.count == rows.count,
              rows.indices.allSatisfy({ y in
                  rows[y] == nil || projection.rows[y].scale<=0 || (projection.rows[y].sourceOffset != nil
                    && projection.profiles.indices.contains(projection.rows[y].profile)
                    && !projection.profiles[projection.rows[y].profile].isEmpty)
              }) else { return (rows,geometry(rows:rows,horizon:horizon,offsets:offsets),false) }
        let valid = rows.indices.filter{rows[$0] != nil && projection.rows[$0].scale>0}
        guard valid.count>=3 else { return (rows,geometry(rows:rows,horizon:horizon,offsets:offsets),false) }
        let firstRoad = Double(valid.first!),lastRoad = Double(valid.last!)
        // The original six-byte rows already contain quantisation and coarse
        // reciprocal-table joins, even before the bitmap rounds their edges.
        // A monotone interpolant through every such sample faithfully magnifies
        // those kinks. Fit the common scale and camera shift, not each stripe.
        // Atlas units give both fits a bounded subpixel uncertainty; separating
        // the scale term prevents camera motion from changing the road width.
        let scale = fittedTrace(valid.map{Point(y:Double($0),x:Double(projection.rows[$0].scale)/16)},count:rows.count)
        let displacement = fittedTrace(valid.map{Point(y:Double($0),x:(projection.rows[$0].sourceOffset ?? 197)-Double(projection.rows[$0].scale)/16)},count:rows.count)
        var resolved = [Row?](repeating:nil,count:rows.count)
        var edges = [[[Double]]](repeating:[],count:rows.count)
        var left = [[Double]](repeating:Array(repeating:0,count:offsets.count),count:rows.count)
        var right = [[Double]](repeating:Array(repeating:320,count:offsets.count),count:rows.count)
        for y in rows.indices where rows[y] != nil {
            guard projection.rows[y].scale>0 else {
                // The original left terrain above its first road blit. Keep
                // that cross-section instead of extrapolating a road over it.
                resolved[y] = rows[y]
                edges[y] = rows[y]!.edges.map { edge in offsets.map{_ in edge.x} }
                continue
            }
            let profile = projection.profiles[projection.rows[y].profile]
            func x(_ boundary: LotusVideoRoad.Boundary,_ offset: Double) -> Double {
                // A crest can leave terrain between the panorama and the first
                // actual road row. Never extrapolate the first HD subrows into
                // that unused projection interval.
                let py = max(firstRoad,min(lastRoad,Double(y)+offset))
                // Scale and camera shift are fitted independently at native
                // row centres. Independent cubic tangents between those rows
                // can overshoot their *combined* road boundary at a crest,
                // even when both centre footprints pass the visibility guard.
                // A shared linear weight preserves every boundary's endpoint
                // range and order, including at all four HD subrows. The fitted
                // centre samples still remove the original raster quantisation.
                let size = scale.linearValue(py)
                return boundary.position(scale:size*16,offset:displacement.linearValue(py)+size)
            }
            resolved[y] = Row(initial:12,edges:profile.map{Edge(x:x($0,0),left:$0.left,right:$0.right)})
            edges[y] = profile.map{boundary in offsets.map{x(boundary,$0)}}
            if let i = profile.firstIndex(where:{$0.left == 13 && $0.right == 14}) { left[y] = edges[y][i] }
            if let i = profile.lastIndex(where:{$0.left == 14 && $0.right == 13}) { right[y] = edges[y][i] }
        }
        // The completed bitmap owns visibility. A stale camera/table combination
        // can otherwise move the entire reconstructed road outside the viewport
        // and replace visible asphalt with terrain. Trust fractional coordinates
        // only while their footprint agrees with the native road (two edges,
        // each with the existing three-pixel rounding tolerance).
        for y in valid {
            let fitted = resolved[y]!
            guard fitted.edges.allSatisfy({$0.x.isFinite}),
                  zip(fitted.edges,fitted.edges.dropFirst()).allSatisfy({$0.0.x<=$0.1.x}),
                  footprintDifference(rows[y]!,fitted)<=6 else {
                return (rows,geometry(rows:rows,horizon:horizon,offsets:offsets),false)
            }
        }
        return (resolved,Geometry(edges:edges,left:left,right:right),true)
    }

    private static func footprintDifference(_ native: Row,_ projected: Row) -> Double {
        func spans(_ row: Row) -> [ClosedRange<Double>] {
            var result = [ClosedRange<Double>](),start: Double? = row.initial == 12 ? nil:1
            for edge in row.edges {
                let x = min(320,max(1,edge.x))
                if edge.left == 12 && edge.right != 12 { start = x }
                if edge.left != 12 && edge.right == 12 {
                    if let a = start,x>a { result.append(a...x) }
                    start = nil
                }
            }
            if let a = start,a<320 { result.append(a...320) }
            return result
        }
        let a = spans(native),b = spans(projected)
        let overlap = a.reduce(0.0) { total,x in
            total+b.reduce(0.0){$0+max(0,min(x.upperBound,$1.upperBound)-max(x.lowerBound,$1.lowerBound))}
        }
        return a.reduce(0){$0+$1.upperBound-$1.lowerBound}+b.reduce(0){$0+$1.upperBound-$1.lowerBound}-2*overlap
    }

    static func projectedEdges(rows: [Row?],horizon: Int,projection: LotusVideoRoad,offset: Double = 0) -> [[Edge]]? {
        let prepared = roadGeometry(rows:rows,horizon:horizon,projection:projection,offsets:[offset])
        guard prepared.projected else { return nil }
        return rows.indices.map { y in
            prepared.rows[y]?.edges.enumerated().map{i,e in Edge(x:prepared.geometry.edges[y][i][0],left:e.left,right:e.right)} ?? []
        }
    }

    static func paintMask(_ polygons: [PaintPolygon]) -> [UInt8] {
        let width = 1280,height = 384
        var mask = [UInt8](repeating:0,count:width*height)
        mask.withUnsafeMutableBytes { bytes in
            let context = CGContext(data:bytes.baseAddress,width:width,height:height,bitsPerComponent:8,
                bytesPerRow:width,space:CGColorSpaceCreateDeviceGray(),bitmapInfo:CGImageAlphaInfo.none.rawValue)!
            context.translateBy(x:0,y:CGFloat(height));context.scaleBy(x:1,y:-1)
            context.setShouldAntialias(true)
            context.clip(to:CGRect(x:4,y:0,width:1276,height:height))
            let path = CGMutablePath()
            for polygon in polygons {
                path.addLines(between:polygon.points);path.closeSubpath()
            }
            context.setFillColor(gray:1,alpha:1);context.addPath(path);context.fillPath()
        }
        return mask
    }

    init(textures: [[UInt32]]) {
        let size = Int(Double(textures.first?.count ?? 0).squareRoot())
        guard [4,6].contains(textures.count),(16...2048).contains(size),size&(size-1) == 0,
              textures.allSatisfy({$0.count == size*size}) else {
            self.textures = [];terrainTextures = [:];return
        }
        // Only asphalt needs a luminance pyramid; terrain keeps its RGB detail.
        // Float mipmaps keep six 1024px materials within a modest memory budget.
        self.textures = textures.prefix(1).map { pixels in
            let values = pixels.map { Float(Int($0&255)+Int(($0>>8)&255)+Int(($0>>16)&255))/3 }
            let average = Float(values.reduce(0.0){$0+Double($1)}/Double(values.count))
            var levels = [Level(size:size,light:values.map{$0-average})]
            while let previous = levels.last,previous.size>1 {
                let size = previous.size/2
                var light = [Float](repeating:0,count:size*size)
                for y in 0..<size { for x in 0..<size {
                    let i = y*2*previous.size+x*2
                    light[y*size+x] = (previous.light[i]+previous.light[i+1]+previous.light[i+previous.size]+previous.light[i+previous.size+1])/4
                } }
                levels.append(Level(size:size,light:light))
            }
            return levels
        }
        var terrain = [Terrain:[TerrainLevel]]()
        do {
            let colours = textures.map { pixels in
                pixels.map{SIMD3(Float($0&255),Float(($0>>8)&255),Float(($0>>16)&255))}
            }
            for material in Terrain.allCases {
                let values: [SIMD3<Float>]
                switch material {
                case .grass: values = colours[1]
                case .dryGrass:
                    values = textures.count == 6 ? colours[4]:colours[1].indices.map{colours[1][$0]*0.55+colours[2][$0]*0.45}
                case .sand: values = colours[2]
                case .snow: values = colours[3]
                case .gravel:
                    values = textures.count == 6 ? colours[5]:colours[2].indices.map { i in
                        let c = colours[2][i]*0.65+colours[0][i]*0.35
                        return SIMD3(repeating:(c.x+c.y+c.z)/3)
                    }
                }
                let sum = values.reduce(SIMD3<Double>(repeating:0)){$0+SIMD3<Double>($1)}
                let mean = SIMD3<Float>(sum/Double(values.count))
                var levels = [TerrainLevel(size:size,colour:values.map{$0-mean})]
                while let previous = levels.last,previous.size>1 {
                    let size = previous.size/2
                    var colour = [SIMD3<Float>](repeating:.zero,count:size*size)
                    for y in 0..<size { for x in 0..<size {
                        let i = y*2*previous.size+x*2
                        colour[y*size+x] = (previous.colour[i]+previous.colour[i+1]+previous.colour[i+previous.size]+previous.colour[i+previous.size+1])/4
                    } }
                    levels.append(TerrainLevel(size:size,colour:colour))
                }
                terrain[material] = levels
            }
        }
        terrainTextures = terrain
    }

    func render(indices: [UInt8],palette: [UInt32],viewports: [Int],distances: [UInt32],horizons: [Int:Int] = [:],
                projections: [Int:LotusVideoRoad] = [:],landscapes: [Int:String] = [:],output: inout [UInt32]) -> Int {
        guard indices.count == 320*208,palette.count == 32*208,output.count == 1280*832,
              viewports.allSatisfy({$0>=0 && $0<=112}),textures.count == 1,terrainTextures.count == 5 else { return 0 }
        return output.withUnsafeMutableBufferPointer { buffer in
            let pixels=buffer.baseAddress!
            var painted = 0
            let unusedAsphalt=TextureLine(size:1,light:[0])
            let unusedTerrain=TerrainLine(size:1,colour:[.zero])
            for viewport in viewports {
                var rows = [Row?](repeating:nil,count:96)
                var roadStarted = false
                for y in 0..<96 {
                    let start = (viewport+y)*320
                    if let minimum = horizons[viewport],y<minimum { continue }
                    guard (1..<320).allSatisfy({(12...15).contains(indices[start+$0])}) else { continue }
                    if !roadStarted,horizons[viewport] == nil {
                        guard (1..<288).contains(where:{indices[start+$0] == 13}),
                              (1..<288).contains(where:{indices[start+$0] == 14}) else { continue }
                    }
                    roadStarted = true
                    var edges = [Edge](),last = indices[start+1]
                    let initial = last
                    for x in 2..<320 {
                        let next = indices[start+x]
                        if next != last { edges.append(Edge(x:Double(x),left:last,right:next));last = next }
                    }
                    rows[y] = Row(initial:initial,edges:edges)
                }
                guard let horizon = rows.firstIndex(where:{$0 != nil}) else { continue }
                let projection = projections[viewport].flatMap{$0.rows.count == 96 ? $0:nil}
                let prepared = Self.roadGeometry(rows:rows,horizon:horizon,projection:projection,offsets:[-0.375,-0.125,0.125,0.375,-0.5,0.5])
                rows = prepared.rows
                let geometry = prepared.geometry
                let pattern = projection.flatMap{PaintPattern(projection:$0,palette:palette,viewport:viewport,validRows:rows.map{$0 != nil})}
                let paintMask = pattern.map { pattern in
                    Self.paintMask(Self.stripPolygons(rows:rows,horizon:horizon,projection:projection!,pattern:pattern,
                        geometry:geometry,top:4,bottom:5,category:15,recoverDistant:!prepared.projected))
                }
                let kerbs = projection.flatMap{KerbPattern(projection:$0,palette:palette,viewport:viewport,validRows:rows.map{$0 != nil})}
                let kerbMask = kerbs.map { _ in
                    Self.paintMask(Self.stripPolygons(rows:rows,horizon:horizon,projection:projection!,pattern:nil,
                        geometry:geometry,top:4,bottom:5,category:13,recoverDistant:false))
                }
                let alternateKerbMask = kerbs.map { _ in
                    Self.paintMask(Self.stripPolygons(rows:rows,horizon:horizon,projection:projection!,
                        pattern:PaintPattern(visiblePhase:1024,colour:0),geometry:geometry,top:4,bottom:5,category:13,recoverDistant:false))
                }
                let distance = projection?.distance ?? (distances.count>viewport/112 ? distances[viewport/112]:0)
                // The original stripe routine combines distance>>4 with the third
                // road word. Preserve that exact world coordinate at finer scale.
                // Both periods divide UInt32's wrap, including the negative grid.
                let phase = Double(distance&0x7fff)/128
                let blur = min(24,Double(projection?.speed ?? 0)/128*0.15)
                let valid = (horizon..<96).filter{rows[$0] != nil}
                let asphalt = Self.average(Set(valid.map{palette[(viewport+$0)*32+14]}))
                let ground = Self.average(Set(valid.map{palette[(viewport+$0)*32+12]}))
                let terrain = Terrain.landscape(landscapes[viewport],colour:ground),terrainBase = terrain.base(ground)
                let verge = colour(terrainBase)
                for y in horizon..<96 {
                    guard let row = rows[y] else { continue }
                    let nativePaintVisible = palette[(viewport+y)*32+15] != palette[(viewport+y)*32+14]
                    for dy in 0..<4 {
                        let subrow = (Double(dy)+0.5)/4-0.5
                        let paintCoverage = paintMask != nil ? 0.0:(nativePaintVisible ? 1.0:0.0)
                        let paintColour = pattern?.colour ?? palette[(viewport+y)*32+15]
                        let colours = [verge,kerbMask == nil ? palette[(viewport+y)*32+13]:verge,asphalt,mix(asphalt,paintColour,weight:paintCoverage)]
                        let edges = row.edges.enumerated().map { i,edge in
                            Edge(x:geometry.edges[y][i][dy],left:edge.left,right:edge.right)
                        }
                        let depth = max(1,Double(y-horizon)+0.5+subrow)
                        let left = geometry.left[y][dy],right = geometry.right[y][dy]
                        let centre = (left+right)/2
                        let uStep: Double,v: Double,vStep: Double
                        if let projection,projection.rows[y].scale>0 {
                            let current = projection.rows[y]
                            let hasBefore = y>horizon && projection.rows[y-1].scale>0
                            let hasAfter = y<95 && projection.rows[y+1].scale>0
                            let before = hasBefore ? projection.rows[y-1]:current
                            let after = hasAfter ? projection.rows[y+1]:current
                            let divisor = Double(max(1,(hasBefore ? 1:0)+(hasAfter ? 1:0)))
                            let scaleSlope = Double(after.scale-before.scale)/divisor
                            let depthSlope = Double(Int16(truncatingIfNeeded:after.depth-before.depth))/divisor
                            uStep = 2048/max(16,Double(current.scale)+scaleSlope*subrow)
                            v = (Double(current.depth)+depthSlope*subrow)/8+phase
                            vStep = abs(depthSlope)/32
                        } else {
                            uStep = 14/(depth+4);v = 72000/(depth+4)+phase
                            vStep = 18000/((depth+4)*(depth+4))
                        }
                        let filter = textureFilter(uStep:uStep,vStep:vStep,blur:blur)
                        func isTerrain(_ category: UInt8) -> Bool { category==12 || (category==13 && kerbMask != nil) }
                        var firstCategory=row.initial
                        for edge in edges where edge.x<1 { firstCategory=edge.right }
                        var needsTerrain=isTerrain(firstCategory),needsAsphalt = !needsTerrain
                        for edge in edges where edge.x>=1 && edge.x<320 {
                            // Include both sides of subpixel boundaries even when
                            // one material has no fully covered destination pixel.
                            if isTerrain(edge.left) || isTerrain(edge.right) { needsTerrain=true }
                            if !isTerrain(edge.left) || !isTerrain(edge.right) { needsAsphalt=true }
                        }
                        let asphaltLine = needsAsphalt ? textureLine(material:0,filter:filter,v:v):unusedAsphalt
                        let vergeLine = needsTerrain ? terrainLine(material:terrain,filter:filter,v:v):unusedTerrain
                        // Private mip/line builders guarantee a nonempty,
                        // power-of-two size equal to the array count. Borrow
                        // once per scanline; every wrapped sample stays in it.
                        asphaltLine.light.withUnsafeBufferPointer { asphaltValues in
                            vergeLine.colour.withUnsafeBufferPointer { vergeValues in
                                let asphaltSamples=asphaltValues.baseAddress!,vergeSamples=vergeValues.baseAddress!
                                let fade = min(1,depth/18)
                                func surface(_ category: UInt8,_ u: Double) -> UInt32 {
                                    if category == 12 || (category == 13 && kerbMask != nil) {
                                        return colour(terrainBase+sample(vergeSamples,size:vergeLine.size,u:u)*fade)
                                    }
                                    var grain = sample(asphaltSamples,size:asphaltLine.size,u:u)*fade
                                    if category == 13 { grain /= 12 }
                                    else if category == 15 { grain *= (1-paintCoverage)/2+paintCoverage/22 }
                                    else { grain /= 2 }
                                    return tint(colours[Int(category)-12],delta:grain)
                                }
                                let destination=((viewport+y)*4+dy)*1280
                                var edgeIndex=0,category=row.initial,column=4
                                while column<1280 {
                                    let x=(Double(column)+0.5)/4
                                    while edgeIndex<edges.count && x>=edges[edgeIndex].x { category=edges[edgeIndex].right;edgeIndex+=1 }
                                    let boundary=edgeIndex<edges.count ? edges[edgeIndex].x*4-0.5:1280
                                    let end=boundary.isFinite ? min(1280,max(column+1,Int(ceil(max(4,min(1280,boundary)))))):1280
                                    // Material and edge classification are constant across
                                    // each span. Only texture sampling belongs per pixel.
                                    if category==12 || (category==13 && kerbMask != nil) {
                                        for xx in column..<end {
                                            let u=(Double(xx)+0.5-centre*4)*uStep
                                            pixels[destination+xx]=colour(terrainBase+sample(vergeSamples,size:vergeLine.size,u:u)*fade)
                                        }
                                    } else {
                                        let base=colours[Int(category)-12]
                                        for xx in column..<end {
                                            let u=(Double(xx)+0.5-centre*4)*uStep
                                            var grain=sample(asphaltSamples,size:asphaltLine.size,u:u)*fade
                                            if category==13 { grain/=12 }
                                            else if category==15 { grain *= (1-paintCoverage)/2+paintCoverage/22 }
                                            else { grain/=2 }
                                            pixels[destination+xx]=tint(base,delta:grain)
                                        }
                                    }
                                    painted+=end-column;column=end
                                }
                                // Only one HD pixel per boundary can have partial
                                // coverage. Preserve the previous next/previous blend
                                // order, including multiple tiny pit lines in one pixel.
                                var antialiasIndex=0,lastColumn = -1
                                for edge in edges {
                                    guard edge.x.isFinite,edge.x>=1,edge.x<320 else { continue }
                                    let xx=Int(floor(edge.x*4))
                                    if xx==lastColumn { continue };lastColumn=xx
                                    let x=(Double(xx)+0.5)/4,u=(Double(xx)+0.5-centre*4)*uStep
                                    while antialiasIndex<edges.count && x>=edges[antialiasIndex].x { antialiasIndex+=1 }
                                    var pixel=pixels[destination+xx]
                                    if antialiasIndex<edges.count {
                                        let coverage=(edges[antialiasIndex].x-x)*4
                                        if coverage<0.5 { pixel=mix(pixel,surface(edges[antialiasIndex].right,u),weight:0.5-coverage) }
                                    }
                                    if antialiasIndex>0 {
                                        let coverage=(x-edges[antialiasIndex-1].x)*4
                                        if coverage<0.5 { pixel=mix(pixel,surface(edges[antialiasIndex-1].left,u),weight:0.5-coverage) }
                                    }
                                    pixels[destination+xx]=pixel
                                }
                            }
                        }
                    }
                }
                if let kerbMask,let alternateKerbMask,let kerbs {
                    for yy in horizon*4..<384 { for xx in 4..<1280 {
                        let position = yy*1280+xx,coverage = kerbMask[position]
                        if coverage == 0 { continue }
                        let alternate=alternateKerbMask[position]
                        let colour = alternate==0 ? kerbs.first:(alternate>=coverage ? kerbs.second:
                            mix(kerbs.first,kerbs.second,weight:Double(alternate)/Double(coverage)))
                        let i = (viewport*4+yy)*1280+xx
                        pixels[i] = coverage==255 && colour>>24==255 ? colour:mix(pixels[i],colour,weight:Double(coverage)/255)
                    } }
                }
                if let paintMask,let pattern {
                    for yy in horizon*4..<384 { for xx in 4..<1280 {
                        let coverage = paintMask[yy*1280+xx]
                        if coverage == 0 { continue }
                        let i = (viewport*4+yy)*1280+xx
                        pixels[i] = coverage==255 && pattern.colour>>24==255 ? pattern.colour:mix(pixels[i],pattern.colour,weight:Double(coverage)/255)
                    } }
                }
            }
            return painted
        }
    }

    // Each boundary owns one continuous trace, shared by both sides of every
    // scanline seam. Independent per-row fits and corrections produce lateral
    // jumps, particularly at stripe changes and where a kerb leaves the screen.
    static func edgePositions(rows: [Row?],horizon: Int,offsets: [Double] = [-0.375,-0.125,0.125,0.375]) -> [[[Double]]] {
        geometry(rows:rows,horizon:horizon,offsets:offsets).edges
    }
    private static func geometry(rows: [Row?],horizon: Int,offsets: [Double]) -> Geometry {
        let left = rows.enumerated().compactMap { y,row in row?.edges.first(where:{$0.left == 13 && $0.right == 14}).map{Point(y:Double(y),x:$0.x)} }
        let right = rows.enumerated().compactMap { y,row in row?.edges.last(where:{$0.left == 14 && $0.right == 13}).map{Point(y:Double(y),x:$0.x)} }
        func boundary(_ points: [Point],_ y: Double) -> Double? {
            let nearest = points.sorted{abs($0.y-y)<abs($1.y-y)}.prefix(12)
            return fit(Array(nearest),origin:y,degree:1)?.value(y)
        }
        struct Span {
            let left: Int?;let right: Int?
            let leftX: Double?;let rightX: Double?
        }
        struct Sample { let y: Int;let left: Double?;let right: Double? }
        struct Paint { let centre: Trace;let width: Trace }
        var keys = [[Int?]](repeating:[],count:rows.count)
        var sides = [[Double]](repeating:[],count:rows.count)
        var contours = [Int:[Point]](),paintSamples = [Int:[Sample]]()
        var active = [LaneTrack](),nextKey = 100_000
        for (y,optional) in rows.enumerated() {
            guard let row = optional else { continue }
            keys[y] = Array(repeating:nil,count:row.edges.count)
            sides[y] = Array(repeating:0,count:row.edges.count)
            var spans = [Span](),open: Int?
            var hasOpen = row.initial == 15
            for (i,edge) in row.edges.enumerated() {
                if edge.left == 15 {
                    spans.append(Span(left:open,right:i,leftX:open.map{row.edges[$0].x},rightX:edge.x))
                    hasOpen = false;open = nil
                }
                if edge.right == 15 { open = i;hasOpen = true }
            }
            if hasOpen { spans.append(Span(left:open,right:nil,leftX:open.map{row.edges[$0].x},rightX:nil)) }
            // Kerbs have a unique transition. If a rare row has more than one
            // of the same kind, retain those individual native raster edges.
            let ordinary = row.edges.indices.filter{row.edges[$0].left != 15 && row.edges[$0].right != 15}
            for i in ordinary {
                let edge = row.edges[i],pair = Int(edge.left)*16+Int(edge.right)
                if ordinary.filter({row.edges[$0].left == edge.left && row.edges[$0].right == edge.right}).count == 1 {
                    keys[y][i] = pair
                    contours[pair,default:[]].append(Point(y:Double(y),x:edge.x))
                }
            }
            let l = row.edges.first(where:{$0.left == 13 && $0.right == 14})?.x ?? boundary(left,Double(y))
            let r = row.edges.last(where:{$0.left == 14 && $0.right == 13})?.x ?? boundary(right,Double(y))
            guard let l,let r,r-l>=48,y>=horizon+6 else { continue }
            let width = r-l
            let candidates = active.filter{y-$0.y<=24}.sorted {
                $0.lateral == $1.lateral ? $0.key<$1.key:$0.lateral<$1.lateral
            }
            let n = candidates.count,m = spans.count
            func position(_ span: Span,_ previous: LaneTrack?) -> (Double,Double)? {
                if let a = span.leftX,let b = span.rightX { return (((a+b)/2-l)/width,(b-a)/width) }
                guard let previous else { return nil }
                if let a = span.leftX { return ((a-l)/width+previous.width/2,previous.width) }
                if let b = span.rightX { return ((b-l)/width-previous.width/2,previous.width) }
                return nil
            }
            var costs = Array(repeating:Array(repeating:Double.infinity,count:m+1),count:n+1)
            var choices = Array(repeating:Array(repeating:UInt8(0),count:m+1),count:n+1)
            costs[0][0] = 0
            for i in 0...n { for j in 0...m {
                if i>0 { costs[i][j] = costs[i-1][j]+1;choices[i][j] = 1 }
                if j>0,costs[i][j-1]+1<costs[i][j] { costs[i][j] = costs[i][j-1]+1;choices[i][j] = 2 }
                if i>0,j>0,let p = position(spans[j-1],candidates[i-1]) {
                    let distance = abs(p.0-candidates[i-1].lateral)/(0.025+1.5/width)
                    if distance<2,costs[i-1][j-1]+distance<costs[i][j] {
                        costs[i][j] = costs[i-1][j-1]+distance;choices[i][j] = 3
                    }
                }
            } }
            var updated = candidates,i = n,j = m
            while i>0 || j>0 {
                if choices[i][j] == 1 { i -= 1;continue }
                let previous: LaneTrack?
                let key: Int
                if choices[i][j] == 3 { i -= 1;previous = candidates[i];key = candidates[i].key }
                else { previous = nil;key = nextKey;nextKey += 1 }
                j -= 1
                let span = spans[j]
                guard let p = position(span,previous) else { continue }
                let track = LaneTrack(key:key,y:y,lateral:p.0,width:p.1)
                if previous != nil { updated[i] = track } else { updated.append(track) }
                if let a = span.left { keys[y][a] = key;sides[y][a] = -0.5 }
                if let b = span.right { keys[y][b] = key;sides[y][b] = 0.5 }
                paintSamples[key,default:[]].append(Sample(y:y,left:span.leftX,right:span.rightX))
            }
            active = updated
        }
        var traces = [Int:Trace]()
        for (key,points) in contours where points.count>=3 { traces[key] = fittedTrace(points,count:rows.count) }
        var paints = [Int:Paint]()
        for (key,samples) in paintSamples {
            let widths = samples.compactMap { p -> Point? in
                guard let a = p.left,let b = p.right else { return nil }
                return Point(y:Double(p.y),x:b-a)
            }
            guard widths.count>=2 else { continue }
            let line = fit(widths,origin:48,degree:1)
            // The difference of two rounded edges has one pixel of uncertainty.
            let straight = line.map{curve in widths.allSatisfy{abs(curve.value($0.y)-$0.x)<=1}} ?? false
            var position = 0
            let raw = rows.indices.map { y -> Double in
                let py = max(widths.first!.y,min(widths.last!.y,Double(y)))
                if straight { return max(0.1,line!.value(py)) }
                while position+1<widths.count && widths[position+1].y<py { position += 1 }
                let a = widths[position],b = widths[min(widths.count-1,position+1)]
                return a.x+(b.x-a.x)*(b.y>a.y ? (py-a.y)/(b.y-a.y):0)
            }
            let width = trace(raw.indices.map { y in
                max(0.1,max(raw[y]-0.4,min(raw[y]+0.4,
                    (raw[max(0,y-1)]+2*raw[y]+raw[min(raw.count-1,y+1)])/4)))
            })
            let centres = samples.map { p -> Point in
                let x: Double
                if let a = p.left,let b = p.right { x = (a+b)/2 }
                else if let a = p.left { x = a+width.samples[p.y]/2 }
                else { x = p.right!-width.samples[p.y]/2 }
                return Point(y:Double(p.y),x:x)
            }
            paints[key] = Paint(centre:fittedTrace(centres,count:rows.count),width:width)
        }
        var result = [[[Double]]](repeating:[],count:rows.count)
        for (y,optional) in rows.enumerated() {
            guard let row = optional else { continue }
            for (i,edge) in row.edges.enumerated() {
                let key = keys[y][i]
                result[y].append(offsets.map { offset in
                    let py = Double(y)+offset
                    if let key,let paint = paints[key] { return paint.centre.value(py)+sides[y][i]*paint.width.value(py) }
                    if let key,let contour = traces[key] { return contour.value(py) }
                    return edge.x
                })
            }
            for dy in offsets.indices {
                // Project overlapping rounding intervals together. Moving only
                // the next edge pushes an error across several tiny pit lines.
                var blocks = [(start:Int,end:Int,total:Double,count:Int)]()
                for i in result[y].indices {
                    blocks.append((i,i,result[y][i][dy]-Double(i)*0.01,1))
                    while blocks.count>1 {
                        let a = blocks[blocks.count-2],b = blocks[blocks.count-1]
                        if a.total/Double(a.count)<b.total/Double(b.count) { break }
                        blocks.removeLast();blocks.removeLast()
                        blocks.append((a.start,b.end,a.total+b.total,a.count+b.count))
                    }
                }
                for block in blocks { for i in block.start...block.end {
                    result[y][i][dy] = block.total/Double(block.count)+Double(i)*0.01
                } }
            }
        }
        let leftTrace = traces[13*16+14],rightTrace = traces[14*16+13]
        let leftBounds = rows.indices.map { y in offsets.map{leftTrace?.value(Double(y)+$0) ?? 0} }
        let rightBounds = rows.indices.map { y in offsets.map{rightTrace?.value(Double(y)+$0) ?? 320} }
        return Geometry(edges:result,left:leftBounds,right:rightBounds)
    }

    private static func fittedTrace(_ points: [Point],count: Int) -> Trace {
        var whole: Curve?
        for degree in [1,2] {
            if let curve = fit(points,origin:48,degree:degree),points.allSatisfy({abs(curve.value($0.y)-$0.x)<=0.65}) {
                whole = curve;break
            }
        }
        var position = 0
        let samples = (0..<count).map { y -> Double in
            let py = Double(y)
            if let whole { return whole.value(py) }
            let nearest = points.sorted{abs($0.y-py)<abs($1.y-py)}.prefix(13)
            let clampedY = max(points.first!.y,min(points.last!.y,py))
            let local = Array(nearest)
            guard let curve = fit(local,origin:clampedY) ?? fit(local,origin:clampedY,degree:1) else { return nearest.first!.x }
            let t = (clampedY-curve.origin)/32
            let fitted = curve.value(clampedY)+(py-clampedY)*(curve.b+2*curve.c*t)/32
            while position+1<points.count && points[position+1].y<py { position += 1 }
            let a = points[position],b = points[min(points.count-1,position+1)]
            let reference = a.x+(b.x-a.x)*(b.y>a.y ? (py-a.y)/(b.y-a.y):0)
            return max(reference-0.65,min(reference+0.65,fitted))
        }
        return trace(samples)
    }

    private static func trace(_ samples: [Double]) -> Trace {
        var slopes = [Double](repeating:0,count:samples.count)
        for y in samples.indices {
            if y == 0 { slopes[y] = samples[1]-samples[0] }
            else if y == samples.count-1 { slopes[y] = samples[y]-samples[y-1] }
            else {
                let before = samples[y]-samples[y-1],after = samples[y+1]-samples[y]
                // Shape-preserving tangents cannot curl or overshoot an extremum.
                slopes[y] = before*after>0 ? 2*before*after/(before+after):0
            }
        }
        return Trace(samples:samples,slopes:slopes)
    }

    private static func fit(_ points: [Point],origin: Double,degree: Int = 2) -> Curve? {
        let n = degree+1
        guard points.count>=n else { return nil }
        var matrix = [[Double]](repeating:[Double](repeating:0,count:n+1),count:n)
        for point in points {
            let t = (point.y-origin)/32,powers = [1,t,t*t,t*t*t,t*t*t*t]
            for i in 0..<n {
                for j in 0..<n { matrix[i][j] += powers[i+j] }
                matrix[i][n] += point.x*powers[i]
            }
        }
        for i in 0..<n {
            let pivot = (i..<n).max{abs(matrix[$0][i])<abs(matrix[$1][i])}!
            matrix.swapAt(i,pivot)
            guard abs(matrix[i][i])>0.000001 else { return nil }
            let divisor = matrix[i][i]
            for j in i...n { matrix[i][j] /= divisor }
            for row in 0..<n where row != i {
                let factor = matrix[row][i]
                for j in i...n { matrix[row][j] -= factor*matrix[i][j] }
            }
        }
        return Curve(origin:origin,a:matrix[0][n],b:matrix[1][n],c:degree == 2 ? matrix[2][n]:0)
    }

    private func textureFilter(uStep: Double,vStep: Double,blur: Double) -> TextureFilter {
        let size = textures[0][0].size,span = max(vStep,blur*2)
        // At a shallow viewing angle, filter along the road independently of
        // its width. Four anisotropic taps retain lateral grass/stone detail.
        let footprint = max(uStep,span/4),scale = Double(size)/256
        let lod = max(0,min(Double(textures[0].count-1),log2(max(1,footprint*scale))))
        let tapWidth = pow(2,lod)/scale
        let count = max(1,min(4,Int(ceil(span/tapWidth))))
        let offsets = (0..<count).map{(Double($0)+0.5)/Double(count)*span-span/2}
        return TextureFilter(lod:lod,offsets:offsets)
    }
    private func terrainLine(material: Terrain,filter: TextureFilter,v: Double) -> TerrainLine {
        let levels = terrainTextures[material]!,low = Int(floor(filter.lod)),high = min(levels.count-1,low+1),weight = Float(filter.lod-Double(low))
        func row(_ level: TerrainLevel) -> [SIMD3<Float>] {
            var line = [SIMD3<Float>](repeating:.zero,count:level.size)
            let tap = 1/Float(filter.offsets.count)
            for offset in filter.offsets {
                let ty = (v+offset)*Double(level.size)/256,fy = floor(ty),y = Int(fy)&(level.size-1)
                let next = (y+1)&(level.size-1),fraction = Float(ty-fy)
                for x in line.indices {
                    let first = level.colour[y*level.size+x]*(1-fraction)
                    let second = level.colour[next*level.size+x]*fraction
                    line[x] = line[x]+(first+second)*tap
                }
            }
            return line
        }
        let first = levels[low],a = row(first)
        guard high != low,weight>0 else { return TerrainLine(size:first.size,colour:a) }
        let second = levels[high],b = row(second)
        let line = a.indices.map { x -> SIMD3<Float> in
            let bx = Double(x)*Double(second.size)/Double(first.size),i = Int(bx),fraction = Float(bx-Double(i))
            let other = b[i]*(1-fraction)+b[(i+1)&(second.size-1)]*fraction
            return a[x]*(1-weight)+other*weight
        }
        return TerrainLine(size:first.size,colour:line)
    }
    private func sample(_ values: UnsafePointer<SIMD3<Float>>,size: Int,u: Double) -> SIMD3<Double> {
        let tx = u*Double(size)/256,fx = floor(tx),x = Int(fx)&(size-1),fraction = tx-fx
        return SIMD3<Double>(values[x]*Float(1-fraction)+values[(x+1)&(size-1)]*Float(fraction))
    }
    private func colour(_ c: SIMD3<Double>) -> UInt32 {
        0xff000000|UInt32(max(0,min(255,Int(c.x))))|UInt32(max(0,min(255,Int(c.y))))<<8|UInt32(max(0,min(255,Int(c.z))))<<16
    }
    private func textureLine(material: Int,filter: TextureFilter,v: Double) -> TextureLine {
        let low = Int(floor(filter.lod)),high = min(textures[material].count-1,low+1),weight = Float(filter.lod-Double(low))
        func row(_ level: Level) -> [Float] {
            var line = [Float](repeating:0,count:level.size)
            let tap = 1/Float(filter.offsets.count)
            for offset in filter.offsets {
                let ty = (v+offset)*Double(level.size)/256,fy = floor(ty),y = Int(fy)&(level.size-1)
                let next = (y+1)&(level.size-1),fraction = Float(ty-fy)
                for x in line.indices { line[x] += (level.light[y*level.size+x]*(1-fraction)+level.light[next*level.size+x]*fraction)*tap }
            }
            return line
        }
        let first = textures[material][low],a = row(first)
        guard high != low,weight>0 else { return TextureLine(size:first.size,light:a) }
        let second = textures[material][high],b = row(second)
        let line = a.indices.map { x -> Float in
            let bx = Double(x)*Double(second.size)/Double(first.size),i = Int(bx),fraction = Float(bx-Double(i))
            let other = b[i]*(1-fraction)+b[(i+1)&(second.size-1)]*fraction
            return a[x]*(1-weight)+other*weight
        }
        return TextureLine(size:first.size,light:line)
    }
    private func sample(_ values: UnsafePointer<Float>,size: Int,u: Double) -> Double {
        let tx = u*Double(size)/256,fx = floor(tx),x = Int(fx)&(size-1),fraction = tx-fx
        return Double(values[x]*Float(1-fraction)+values[(x+1)&(size-1)]*Float(fraction))
    }
    private func tint(_ colour: UInt32,delta: Double) -> UInt32 {
        var result: UInt32 = 0xff000000
        for shift in [0,8,16] { result |= UInt32(max(0,min(255,Int(Double((colour>>shift)&255)+delta))))<<shift }
        return result
    }
    private func mix(_ a: UInt32,_ b: UInt32,weight: Double) -> UInt32 {
        if a == b { return a }
        var result: UInt32 = 0xff000000
        for shift in [0,8,16] { result |= UInt32(Double((a>>shift)&255)*(1-weight)+Double((b>>shift)&255)*weight)<<shift }
        return result
    }
}
