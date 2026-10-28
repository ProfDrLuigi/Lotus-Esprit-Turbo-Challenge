import Foundation

// Yaw only the exposed front wheel face around its fixed hub. The front wheel
// becomes less edge-on as the car steers into the bend. Work on the full-size
// artwork once, before scaling, so distant cars do not acquire a separate,
// jumping wheel overlay. The wheel arch, body, rear wheels and alpha stay exact.
struct LotusHDCarSteering {
    let amount: Double
    let front: LotusHDCarWheels.Rim?
    var faceScale: Double { 1+0.85*amount }

    init(angle: Int,mapY: (Double)->Double = {$0}) {
        amount = Double(max(0,abs(max(0,min(8,angle))-4)-1))/3
        if let rim = LotusHDCarWheels.rims(angle:angle).last {
            let top = mapY(rim.y-rim.ry),bottom = mapY(rim.y+rim.ry)
            front = .init(x:rim.x,y:(top+bottom)/2,rx:rim.rx,ry:(bottom-top)/2)
        } else { front = nil }
    }

    private static func wheelMaterial(_ pixel: UInt32) -> Bool {
        let r = Int(pixel&255),g = Int((pixel>>8)&255),b = Int((pixel>>16)&255)
        return pixel>>24>=250 && max(r,g,b)-min(r,g,b)<32
    }

    func pixels(_ input: [UInt32],width: Int,height: Int) -> [UInt32] {
        guard let rim = front,amount>0,width>2,height>2,input.count == width*height else { return input }
        let cx = rim.x*Double(width)-0.5,cy = rim.y*Double(height)-0.5
        let rx = rim.rx*Double(width),ry = rim.ry*Double(height)
        let extent = rx*faceScale*1.2
        let left = max(1,Int(floor(cx-extent))),right = min(width-1,Int(ceil(cx+extent)))
        let top = max(1,Int(floor(cy-ry*1.12))),bottom = min(height-1,Int(ceil(cy+ry*1.12)))
        guard left<right,top<bottom else { return input }
        var output = input
        for y in top..<bottom { for x in left..<right {
            let i = y*width+x
            guard Self.wheelMaterial(input[i]),
                  [i-1,i+1,i-width,i+width].allSatisfy({Self.wheelMaterial(input[$0])}) else { continue }
            let u = (Double(x)-cx)/(rx*faceScale),v = (Double(y)-cy)/ry
            let radius = hypot(u,v)
            guard radius<1.12 else { continue }
            let sx = max(0,min(Double(width-1),cx+(Double(x)-cx)/faceScale))
            let a = Int(sx),b = min(width-1,a+1),p = input[y*width+a],q = input[y*width+b]
            guard Self.wheelMaterial(p),Self.wheelMaterial(q) else { continue }
            let blend = min(1,(1.12-radius)/0.18),fraction = sx-Double(a)
            var pixel = input[i]&0xff000000
            for shift in [0,8,16] {
                let sampled = Double((p>>shift)&255)*(1-fraction)+Double((q>>shift)&255)*fraction
                let value = Double((input[i]>>shift)&255)*(1-blend)+sampled*blend
                pixel |= UInt32(max(0,min(255,value.rounded())))<<shift
            }
            output[i] = pixel
        } }
        return output
    }

    func rims(_ original: [LotusHDCarWheels.Rim]) -> [LotusHDCarWheels.Rim] {
        guard front != nil,!original.isEmpty else { return original }
        return original.enumerated().map { index,rim in
            .init(x:rim.x,y:rim.y,rx:rim.rx*(index == original.count-1 ? faceScale:1),ry:rim.ry)
        }
    }
}

// The exposed running surface is distinct from the rim/sidewall. Replace its
// baked transverse grooves with a distance-driven tread, retaining the rubber's
// broad lighting, longitudinal channels and exact silhouette. A cached mask is
// built from the registered/scaled artwork, so no paint or wheel rim can move.
final class LotusHDCarTyres {
    static let travelPeriod: UInt32 = 524288
    static func phase(distance: UInt32) -> Double {
        Double(distance&(travelPeriod-1))/Double(travelPeriod)*12
    }
    struct Point { let x: Double;let y: Double }
    struct Patch {
        let x: Int;let y: Int;let pixel: UInt32;let original: UInt32
        // The sprite was already composited. Apply just the premultiplied RGB
        // delta, instead of blending its almost-opaque alpha a second time.
        func applying(to displayed: UInt32) -> UInt32 {
            var result = displayed&0xff000000
            for shift in [0,8,16] {
                let value = Int((displayed>>shift)&255)+Int((pixel>>shift)&255)-Int((original>>shift)&255)
                result |= UInt32(max(0,min(255,value)))<<shift
            }
            return result
        }
    }
    private struct Region { let points: [Point];let centre: Double;let radius: Double }
    private struct Sample {
        let x: Int;let y: Int;let original: UInt32
        let red: Double;let green: Double;let blue: Double
        let amount: Double;let coordinate: Double
    }
    private let regions: [Region]
    private let rims: [LotusHDCarWheels.Rim]
    private var cacheSize = (0,0)
    private var samples = [Sample]()

    init(angle: Int,mapY: (Double)->Double = {$0}) {
        // Polygons follow the two rear tread faces, excluding the sidewall and
        // the rear valance. Coordinates are in each original HD drawing.
        let layouts: [(Double,Double,[[[Double]]])] = [
            (481,251,[[[78,165],[89,204],[129,236],[121,249],[82,250],[73,235]],[[429,220],[451,214],[445,233],[427,239],[410,238]]]),
            (468,255,[[[58,175],[71,214],[104,241],[94,253],[59,254],[54,236]],[[414,225],[442,218],[437,242],[413,246],[402,243]]]),
            (457,256,[[[36,186],[47,224],[85,245],[75,255],[38,255],[32,238]],[[404,230],[437,217],[431,246],[405,251],[391,248]]]),
            (457,263,[[[5,190],[20,224],[63,253],[55,262],[9,262],[4,251]],[[412,237],[447,203],[447,247],[439,261],[393,262],[390,253]]]),
            (468,265,[[[5,184],[21,226],[57,253],[52,263],[9,263],[4,251]],[[433,225],[463,181],[463,248],[457,263],[413,264],[409,253]]]),
            (449,265,[[[5,191],[21,227],[62,253],[56,263],[9,263],[4,252]],[[413,228],[443,187],[443,249],[436,264],[394,264],[390,253]]]),
            (471,255,[[[30,225],[62,236],[73,247],[60,250],[34,247],[26,237]],[[436,177],[425,214],[378,244],[385,253],[419,254],[435,239]]]),
            (466,251,[[[29,220],[51,233],[68,243],[54,247],[34,242]],[[410,173],[397,214],[353,239],[362,249],[397,251],[410,234]]]),
            (464,250,[[[30,218],[48,231],[66,241],[53,245],[35,241]],[[402,171],[387,211],[339,237],[350,248],[386,250],[400,233]]])
        ]
        let layout = layouts[max(0,min(8,angle))]
        regions = layout.2.map { vertices in
            let points = vertices.map { Point(x:$0[0]/layout.0,y:mapY($0[1]/layout.1)) }
            return Region(points:points,centre:mapY(0.73),radius:max(0.001,mapY(0.99)-mapY(0.73)))
        }
        rims = LotusHDCarWheels.rims(angle:angle).map { rim in
            let top = mapY(rim.y-rim.ry),bottom = mapY(rim.y+rim.ry)
            return .init(x:rim.x,y:(top+bottom)/2,rx:rim.rx,ry:(bottom-top)/2)
        }
    }

    private static func contains(_ point: Point,in polygon: [Point]) -> Bool {
        var inside = false,j = polygon.count-1
        for i in polygon.indices {
            let a = polygon[i],b = polygon[j]
            if (a.y>point.y) != (b.y>point.y),point.x<(b.x-a.x)*(point.y-a.y)/(b.y-a.y)+a.x { inside.toggle() }
            j = i
        }
        return inside
    }
    static func isRubber(_ pixel: UInt32) -> Bool {
        let r = Int(pixel&255),g = Int((pixel>>8)&255),b = Int((pixel>>16)&255)
        return pixel>>24>=250 && min(r,g,b)>=4 && max(r,g,b)<90 && max(r,g,b)-min(r,g,b)<25
    }
    private func prepare(_ pixels: [UInt32],width: Int,height: Int) {
        guard cacheSize != (width,height) else { return }
        cacheSize = (width,height);samples.removeAll(keepingCapacity:true)
        var mask = [Int](repeating:-1,count:pixels.count)
        for (regionID,region) in regions.enumerated() {
            let xs = region.points.map(\.x),ys = region.points.map(\.y)
            let left = max(1,Int(floor(xs.min()!*Double(width))))
            let right = min(width-1,Int(ceil(xs.max()!*Double(width))))
            let top = max(1,Int(floor(ys.min()!*Double(height))))
            let bottom = min(height-1,Int(ceil(ys.max()!*Double(height))))
            guard left<right,top<bottom else { continue }
            for y in top..<bottom { for x in left..<right {
                let point = Point(x:(Double(x)+0.5)/Double(width),y:(Double(y)+0.5)/Double(height))
                guard Self.contains(point,in:region.points),Self.isRubber(pixels[y*width+x]),
                      !rims.contains(where:{hypot((point.x-$0.x)/$0.rx,(point.y-$0.y)/$0.ry)<1.2}) else { continue }
                mask[y*width+x] = regionID
            } }
        }
        let radius = max(2,height/24)
        for y in 1..<height-1 { for x in 1..<width-1 {
            let i = y*width+x,regionID = mask[i]
            guard regionID>=0 else { continue }
            // Feather the inside of the material boundary. Alpha and the outer
            // rubber silhouette remain byte-identical in every motion phase.
            let neighbours = [i-1,i+1,i-width,i+width].filter{mask[$0] == regionID}.count
            guard neighbours>=3 else { continue }
            var red = 0.0,green = 0.0,blue = 0.0,weight = 0.0
            for yy in max(0,y-radius)...min(height-1,y+radius) where mask[yy*width+x] == regionID {
                let p = pixels[yy*width+x],w = Double(radius+1-abs(yy-y))
                red += Double(p&255)*w;green += Double((p>>8)&255)*w;blue += Double((p>>16)&255)*w;weight += w
            }
            guard weight>0 else { continue }
            let region = regions[regionID],nx = (Double(x)+0.5)/Double(width)
            let v = max(-0.98,min(0.98,((Double(y)+0.5)/Double(height)-region.centre)/region.radius))
            let left = region.points.map(\.x).min()!,right = region.points.map(\.x).max()!
            let u = (nx-left)/max(0.001,right-left)
            // Cylindrical projection compresses the blocks near the contact
            // patch; a shallow chevron joins the longitudinal tread channels.
            let coordinate = asin(v)/Double.pi*12+abs(u-0.5)*0.75
            samples.append(Sample(x:x,y:y,original:pixels[i],red:red/weight,green:green/weight,blue:blue/weight,
                amount:neighbours == 4 ? 0.9:0.45,coordinate:coordinate))
        } }
    }
    func patches(pixels: [UInt32],width: Int,height: Int,distance: UInt32,speed: UInt16) -> [Patch] {
        guard width>2,height>2,pixels.count == width*height else { return [] }
        prepare(pixels,width:width,height:height)
        // Native $15cf0 adds speed directly to distance; MPH is speed*1600/
        // 65536. Completed road buffers can span two updates. Keep the visible
        // tread below half a block per displayed frame at racing speeds, so
        // repeated grooves cannot appear stationary or roll backwards.
        let phase = Self.phase(distance:distance)
        // Progressive shutter blur keeps the tyre dark and avoids high-speed
        // strobing. Distance, not wall time, controls rotation (also at rest).
        let contrast = 1/sqrt(1+pow(Double(speed)/2200,2))
        return samples.map { s in
            let wave = cos((s.coordinate-phase)*2*Double.pi)
            let gain = 1+0.36*contrast*wave
            func channel(_ original: UInt32,_ base: Double) -> UInt32 {
                UInt32(max(0,min(255,(Double(original)*(1-s.amount)+base*gain*s.amount).rounded())))
            }
            let pixel = (s.original&0xff000000)|channel(s.original&255,s.red)|channel((s.original>>8)&255,s.green)<<8|channel((s.original>>16)&255,s.blue)<<16
            return Patch(x:s.x,y:s.y,pixel:pixel,original:s.original)
        }
    }
}

// Rim-local shading for the six poses with visible wheel faces. Coordinates
// are measured on each existing artwork, never on its changing sprite envelope.
// Three almost straight poses show tread only and must not acquire fake rims.
struct LotusHDCarWheels {
    struct Rim { let x: Double;let y: Double;let rx: Double;let ry: Double }
    struct Shadow { let x: Int;let y: Int;let gain: Double }
    static func rims(angle: Int) -> [Rim] {
        let measurements: [Int:(Double,Double,[[Double]])] = [
            0:(481,251,[[68,185,9,40],[16,158,4,31]]),
            1:(468,255,[[50,188,6,40],[15,158,3,30]]),
            2:(457,256,[[32,190,3,39],[10,163,2,28]]),
            6:(471,255,[[440,188,5,40],[459,157,2,27]]),
            7:(466,251,[[418,186,7,39],[455,151,3,29]]),
            8:(464,250,[[411,184,8,39],[453,149,4,29]])]
        guard let (w,h,regions) = measurements[angle] else { return [] }
        return regions.map{Rim(x:$0[0]/w,y:$0[1]/h,rx:$0[2]/w,ry:$0[3]/h)}
    }
    static func shadows(angle: Int,width: Int,height: Int,distance: UInt32,speed: UInt16,rims: [Rim]? = nil) -> [Shadow] {
        guard speed>0,width>0,height>0 else { return [] }
        let phase = Double(distance&8191)/8192*2*Double.pi
        let strength = 0.22*min(1,Double(speed)/640)
        let contrast = 1/(1+pow(Double(speed)/8000,2))
        var result = [Shadow]()
        for rim in rims ?? self.rims(angle:angle) {
            let cx = rim.x*Double(width),cy = rim.y*Double(height)
            let rx = rim.rx*Double(width),ry = rim.ry*Double(height)
            let left = max(0,Int(floor(cx-rx))),right = min(width,Int(ceil(cx+rx)))
            let top = max(0,Int(floor(cy-ry))),bottom = min(height,Int(ceil(cy+ry)))
            guard left<right,top<bottom else { continue }
            for y in top..<bottom { for x in left..<right {
                let u = (Double(x)+0.5-cx)/rx,v = (Double(y)+0.5-cy)/ry,r = hypot(u,v)
                guard r<1,r>0.18 else { continue }
                let edge = min(1,(1-r)*8)*min(1,(r-0.18)*8)
                // Two soft spokes, with reduced contrast at speed to avoid
                // strobing. Only actual distance advances their angular phase.
                let wave = 0.5+0.5*contrast*cos(2*(atan2(v,u)-phase))
                result.append(Shadow(x:x,y:y,gain:1-strength*edge*wave))
            } }
        }
        return result
    }
    static func shade(_ pixel: UInt32,gain: Double) -> UInt32 {
        let r = Int(pixel&255),g = Int((pixel>>8)&255),b = Int((pixel>>16)&255)
        // Extra material guard: no red bodywork, blue windows, tyre silhouette
        // or translucent edge can be changed even inside a measured ellipse.
        guard pixel>>24>240,min(r,g,b)>45,max(r,g,b)-min(r,g,b)<32 else { return pixel }
        return (pixel&0xff000000)|UInt32(Double(r)*gain)|UInt32(Double(g)*gain)<<8|UInt32(Double(b)*gain)<<16
    }
}

// Locate the actual red lens segments in each existing HD rear view. The
// licence plate and its two adjacent lamp clusters define the same rear face
// even when the artwork turns. No screen-space lamp coordinates are reused.
struct LotusHDCarLights {
    struct Region { let x: Int;let y: Int;let width: Int;let height: Int }
    let regions: [Region]
    let plate: Region
    let litPixels: [UInt32]

    init?(pixels: [UInt32],width: Int,height: Int) {
        guard width>0,height>0,pixels.count == width*height else { return nil }
        func grey(_ pixel: UInt32) -> Bool {
            let r = Int(pixel&255),g = Int((pixel>>8)&255),b = Int((pixel>>16)&255)
            return pixel>>24>200 && r>=70 && r<245 && max(r,g,b)-min(r,g,b)<28
        }
        func red(_ pixel: UInt32) -> Bool {
            let r = Int(pixel&255),g = Int((pixel>>8)&255),b = Int((pixel>>16)&255)
            let amber = g>50 && g*10>b*16+80
            return pixel>>24>200 && r>60 && r*10>g*18 && r*10>b*18 && !amber
        }
        var plate = (x:0,y:0,width:0)
        for y in height*42/100..<height*65/100 {
            var x = 0
            while x<width {
                guard grey(pixels[y*width+x]) else { x += 1;continue }
                let start = x
                while x<width && grey(pixels[y*width+x]) { x += 1 }
                if x-start>plate.width { plate = (start,y,x-start) }
            }
        }
        guard plate.width>=width/6 else { return nil }
        let middleX = plate.x+plate.width/2
        var top = plate.y,bottom = plate.y
        while top>0 && grey(pixels[(top-1)*width+middleX]) { top -= 1 }
        while bottom+1<height && grey(pixels[(bottom+1)*width+middleX]) { bottom += 1 }
        let middleY = (top+bottom)/2
        self.plate = Region(x:plate.x,y:top,width:plate.width,height:bottom-top+1)
        var runs = [(Int,Int)](),x = 0
        while x<width {
            guard red(pixels[middleY*width+x]) else { x += 1;continue }
            let start = x
            while x<width && red(pixels[middleY*width+x]) { x += 1 }
            if let last = runs.last,start-last.1<=3 { runs[runs.count-1].1 = x }
            else { runs.append((start,x)) }
        }
        let left = runs.filter{$0.1<=plate.x && $0.1-$0.0>=max(3,width/100)}.suffix(2)
        let right = runs.filter{$0.0>=plate.x+plate.width && $0.1-$0.0>=max(3,width/100)}.prefix(2)
        guard left.count == 2,right.count == 2 else { return nil }
        regions = (Array(left)+Array(right)).map { run in
            Region(x:run.0,y:max(0,top-1),width:run.1-run.0,height:min(height-1,bottom+1)-max(0,top-1)+1)
        }
        var lit = pixels
        for region in regions { for y in region.y..<region.y+region.height { for x in region.x..<region.x+region.width {
            let i = y*width+x,pixel = pixels[i]
            guard red(pixel) else { continue }
            let r = Int(pixel&255),g = Int((pixel>>8)&255),b = Int((pixel>>16)&255)
            let strength = Double(r-max(g,b))/255
            lit[i] = (pixel&0xff000000) | UInt32(min(255,r+Int(80*strength))) |
                UInt32(min(150,g+Int(75*strength)))<<8 | UInt32(min(120,b+Int(55*strength)))<<16
        } } }
        litPixels = lit
    }
}
