import Foundation
import CoreGraphics
import CryptoKit
import ImageIO

// The supplied PNG replaces the full loading screen. Original frame hashes
// recognise the completed display so loading, skip and fades stay in sync.
final class LotusHDMagneticFields {
    private struct Frame: Decodable { let sha256: String }
    private struct Artwork: Decodable { let width: Int;let height: Int;let frames: [Frame] }
    private let frames: Set<String>
    private let full: CGImage
    private var lastFaded: CGImage?,lastLevel = -1
    private(set) var displayedFrame: Data?

    init?(data: Data,artworkURL: URL) {
        guard let artwork = try? JSONDecoder().decode(Artwork.self,from:data),artwork.width == 320,artwork.height == 208,
              artwork.frames.count == 8,Set(artwork.frames.map(\.sha256)).count == 8,
              artwork.frames.allSatisfy({$0.sha256.count == 64}),
              let source = CGImageSourceCreateWithURL(artworkURL as CFURL,nil),
              let image = CGImageSourceCreateImageAtIndex(source,0,nil),image.width == 2560,image.height == 1664,
              let context = CGContext(data:nil,width:2560,height:1664,bitsPerComponent:8,bytesPerRow:2560*4,
                space:CGColorSpaceCreateDeviceRGB(),bitmapInfo:CGBitmapInfo.byteOrder32Big.rawValue | CGImageAlphaInfo.premultipliedLast.rawValue) else { return nil }
        context.setFillColor(CGColor(gray:0,alpha:1));context.fill(CGRect(x:0,y:0,width:2560,height:1664))
        context.draw(image,in:CGRect(x:0,y:0,width:2560,height:1664))
        guard let rendered = context.makeImage() else { return nil }
        full = rendered
        frames = Set(artwork.frames.map(\.sha256))
    }

    func render(machine: LotusMachine,level: Int) -> CGImage? {
        let indices = machine.videoPixelIndices
        guard machine.word(0x1afe0) == 1,indices.count == 320*208 else { return nil }
        // A mode changes before the display does. In particular, never show
        // this logo over an outgoing/unfinished screen during loading or skip.
        let source = Data(indices),key = SHA256.hash(data:source).map{String(format:"%02x",$0)}.joined()
        guard frames.contains(key) else { return nil }
        if lastLevel != level { lastFaded = LotusHDMenuFade.image(full,level:level);lastLevel = level }
        displayedFrame = source
        return lastFaded
    }
}

// The original intro copies one of seven five-plane lamp tiles into the front
// view (routine $125b0). Recognise the tile in the completed display, not the
// newer $1afec timer: it can be one buffer ahead of the visible headlights.
final class LotusHDIntro {
    struct Patch { let x: Int;let y: Int;let width: Int;let height: Int;let pixels: [UInt32] }
    private let frames: [[Patch]]

    init(pixels: [UInt32],width: Int,height: Int) {
        let sx = Double(width)/546,sy = Double(height)/350
        let data = pixels.withUnsafeBufferPointer { Data(buffer:$0) }
        guard let provider = CGDataProvider(data:data as CFData),
              let closedImage = CGImage(width:width,height:height,bitsPerComponent:8,bitsPerPixel:32,
                  bytesPerRow:width*4,space:CGColorSpaceCreateDeviceRGB(),
                  bitmapInfo:CGBitmapInfo(rawValue:CGBitmapInfo.byteOrder32Big.rawValue | CGImageAlphaInfo.premultipliedLast.rawValue),
                  provider:provider,decode:nil,shouldInterpolate:true,intent:.defaultIntent) else {
            frames = [];return
        }
        frames = (0...6).map { phase in
            guard phase>0 else { return [] }
            return [false,true].compactMap { right in
                let x = Int(floor((right ? 380.0:25.0)*sx)),y = Int(floor(139*sy))
                let w = Int(ceil(133*sx))+1,h = Int(ceil(60*sy))+1
                guard x>=0,y>=0,x+w<=width,y+h<=height else { return nil }
                var patch = [UInt32]()
                patch.reserveCapacity(w*h)
                for row in y..<y+h { patch.append(contentsOf:pixels[row*width+x..<row*width+x+w]) }
                let ok = patch.withUnsafeMutableBytes { bytes -> Bool in
                    guard let context = CGContext(data:bytes.baseAddress,width:w,height:h,bitsPerComponent:8,bytesPerRow:w*4,
                        space:CGColorSpaceCreateDeviceRGB(),bitmapInfo:CGBitmapInfo.byteOrder32Big.rawValue | CGImageAlphaInfo.premultipliedLast.rawValue) else { return false }
                    context.translateBy(x:0,y:CGFloat(h));context.scaleBy(x:CGFloat(sx),y:-CGFloat(sy))
                    context.translateBy(x:-CGFloat(x)/CGFloat(sx),y:-CGFloat(y)/CGFloat(sy))
                    if right { context.translateBy(x:535,y:0);context.scaleBy(x:-1,y:1) }
                    Self.draw(phase:phase,closedImage:closedImage,context:context)
                    return true
                }
                return ok ? Patch(x:x,y:y,width:w,height:h,pixels:patch):nil
            }
        }
    }

    func phase(machine: LotusMachine) -> Int? {
        let indices = machine.videoPixelIndices
        guard indices.count == 320*208 else { return nil }
        // 28 rows, two 80-pixel patches per row, seven 560-byte frames per
        // plane. Compare both lamps, including the original flash brightness.
        for phase in 0...6 {
            var matches = true
            for row in 0..<28 {
                for side in 0..<2 { for column in 0..<80 {
                    let offset = phase*560+row*20+side*10+column/8
                    var expected: UInt8 = 0
                    for plane in 0..<5 {
                        expected |= ((machine.ram[0x3c6b0+plane*3920+offset] >> (7-column%8))&1) << plane
                    }
                    if indices[(94+row)*320+(side == 0 ? 32:208)+column] != expected { matches = false;break }
                };if !matches { break } }
                if !matches { break }
            }
            if matches { return phase }
        }
        return nil
    }

    func draw(phase: Int,x: Int,y: Int,output: inout [UInt32]) {
        guard frames.indices.contains(phase) else { return }
        for patch in frames[phase] {
            for row in 0..<patch.height {
                let start = (y+patch.y+row)*1280+x+patch.x
                output.replaceSubrange(start..<start+patch.width,with:patch.pixels[row*patch.width..<(row+1)*patch.width])
            }
        }
    }

    private static func draw(phase: Int,closedImage: CGImage,context c: CGContext) {
        let opening = min(phase,3)
        let flash = max(0,Double(phase-3)/3)
        // The original lamps rotate up from below the fixed bonnet opening.
        // Keeping their centres still and uncovering them from above instead
        // exposes the lower halves of the reflectors, reversing the motion.
        let lensY = [216.5,202.0,187.5,173.0][opening]
        let lidScale = [1.0,0.64,0.31,0.025][opening]
        let housing = CGMutablePath()
        housing.move(to:CGPoint(x:45.2,y:153.2))
        housing.addLine(to:CGPoint(x:150.2,y:149.7))
        housing.addLine(to:CGPoint(x:142.1,y:188.9))
        housing.addQuadCurve(to:CGPoint(x:136.0,y:194.0),control:CGPoint(x:141.2,y:194.0))
        housing.addLine(to:CGPoint(x:36.1,y:194.0))
        housing.addQuadCurve(to:CGPoint(x:30.1,y:189.5),control:CGPoint(x:28.4,y:193.5))
        housing.closeSubpath()
        c.addPath(housing);c.setFillColor(CGColor(gray:0.018,alpha:1));c.fillPath()
        c.saveGState();c.addPath(housing);c.clip()
        let recess = CGGradient(colorSpace:CGColorSpaceCreateDeviceRGB(),colorComponents:[
            0.018,0.018,0.019,1, 0.05,0.052,0.055,1, 0.012,0.012,0.014,1],locations:[0,0.72,1],count:3)!
        c.drawLinearGradient(recess,start:CGPoint(x:80,y:150),end:CGPoint(x:80,y:195),options:[])
        for x in [61.0,112.0] { lens(x:x,y:lensY,flash:flash,context:c) }
        c.restoreGState()
        c.addPath(housing);c.setStrokeColor(CGColor(gray:0.025,alpha:1));c.setLineWidth(0.7);c.strokePath()

        // Foreshorten the existing painted lid around its fixed rear hinge.
        // This retains the illustration's red reflections and seam, with no
        // raised eyebrow, extra outline or invented red shelf when fully open.
        var transform = CGAffineTransform(translationX:0,y:149.7)
        transform = transform.scaledBy(x:1,y:lidScale).translatedBy(x:0,y:-149.7)
        let lid = housing.copy(using:&transform)!
        c.saveGState();c.addPath(housing);c.clip()
        c.saveGState();c.addPath(lid);c.clip()
        c.concatenate(transform)
        c.translateBy(x:0,y:350);c.scaleBy(x:1,y:-1)
        c.interpolationQuality = .high
        c.draw(closedImage,in:CGRect(x:0,y:0,width:546,height:350))
        c.restoreGState()
        c.addPath(lid);c.setStrokeColor(CGColor(red:0.19,green:0.008,blue:0.012,alpha:1));c.setLineWidth(0.55);c.strokePath()
        c.restoreGState()
    }

    private static func lens(x: Double,y: Double,flash: Double,context c: CGContext) {
        let radius = 21.5
        let rim = CGRect(x:x-radius,y:y-radius,width:radius*2,height:radius*2)
        c.setFillColor(CGColor(gray:0.13,alpha:1));c.fillEllipse(in:rim)
        c.setStrokeColor(CGColor(gray:0.52+0.35*flash,alpha:1));c.setLineWidth(0.65)
        c.strokeEllipse(in:rim.insetBy(dx:0.55,dy:0.55))
        let glass = rim.insetBy(dx:1.2,dy:1.2)
        c.saveGState();c.addEllipse(in:glass);c.clip()
        let centre = 0.58+0.40*flash,edge = 0.29+0.67*flash
        let gradient = CGGradient(colorSpace:CGColorSpaceCreateDeviceRGB(),colorComponents:[
            edge,edge,edge,1, centre,centre,centre,1, edge,edge,edge,1],locations:[0,0.58,1],count:3)!
        c.drawRadialGradient(gradient,startCenter:CGPoint(x:x,y:y),startRadius:0,
            endCenter:CGPoint(x:x,y:y),endRadius:20.5,options:[.drawsAfterEndLocation])

        // Radial reflector facets and narrow glass flutes reproduce the
        // original grey, patterned lenses. Only their exposure changes for
        // the two flashes; their shape and rim never pulse or grow.
        let detail = 1-flash
        for sector in 0..<32 {
            let start = Double(sector)*Double.pi/16,end = start+Double.pi/32
            let facet = CGMutablePath()
            facet.addArc(center:CGPoint(x:x,y:y),radius:18.7,startAngle:start,endAngle:end,clockwise:false)
            facet.addArc(center:CGPoint(x:x,y:y),radius:6.0,startAngle:end,endAngle:start,clockwise:true)
            facet.closeSubpath();c.addPath(facet)
            c.setFillColor(CGColor(gray:sector%3 == 0 ? 0.12:0.85,alpha:0.48*detail));c.fillPath()
        }
        for dx in stride(from:-18.0,through:18.0,by:2.0) {
            c.setLineWidth(0.38);c.setStrokeColor(CGColor(gray:0.15,alpha:0.65*detail))
            c.beginPath();c.move(to:CGPoint(x:x+dx,y:y-21));c.addQuadCurve(to:CGPoint(x:x+dx,y:y+21),control:CGPoint(x:x+dx*1.03,y:y));c.strokePath()
            c.setLineWidth(0.28);c.setStrokeColor(CGColor(gray:0.95,alpha:0.50*detail))
            c.beginPath();c.move(to:CGPoint(x:x+dx+0.5,y:y-21));c.addLine(to:CGPoint(x:x+dx+0.5,y:y+21));c.strokePath()
        }
        for r in [5.0,7.4,12.3,17.8,19.5] {
            c.setStrokeColor(CGColor(gray:0.10+0.82*flash,alpha:0.65-0.45*flash));c.setLineWidth(0.4)
            c.strokeEllipse(in:CGRect(x:x-r,y:y-r,width:r*2,height:r*2))
        }
        c.setFillColor(CGColor(gray:0.24+0.73*flash,alpha:1))
        c.fillEllipse(in:CGRect(x:x-3.3,y:y-3.3,width:6.6,height:6.6))
        c.setStrokeColor(CGColor(gray:0.86,alpha:0.6*detail));c.setLineWidth(0.5)
        c.beginPath();c.move(to:CGPoint(x:x-3,y:y-1));c.addLine(to:CGPoint(x:x+3,y:y-1));c.strokePath()
        c.restoreGState()
    }
}
