import Foundation
import CoreGraphics

// Redrawn cockpit plus exact recognition of the displayed original LCD banks.
// No clock/song values are read ahead from the current game state.
final class LotusHDRadio {
    struct Layer: Decodable { let index: Int;let commands: [[CGFloat]] }
    struct Glyph: Decodable { let indices: [UInt8];let layers: [Layer] }
    struct Tile: Decodable { let set: String;let rect: [Int];let allowed: [Int] }
    struct Font: Decodable { let sets: [String:[Glyph]];let tiles: [Tile] }
    private let font: Font
    private let paths: [String:[[Int:CGPath]]]
    private var signature = [UInt32]()
    private var cachedImage: CGImage?
    private(set) var readings = [Int?]()
    private(set) var redrawnTiles = 0

    init?(data: Data) {
        guard let font = try? JSONDecoder().decode(Font.self,from:data),font.tiles.count == 6,
              font.sets["track"]?.count == 5,font.sets["digit"]?.count == 10,font.sets["arrow"]?.count == 4,
              font.tiles.allSatisfy({tile in
                  tile.rect.count == 4 && tile.rect[0]>=0 && tile.rect[1]>=0 && tile.rect[2]>0 && tile.rect[3]>0 &&
                  tile.rect[0]+tile.rect[2]<=320 && tile.rect[1]+tile.rect[3]<=208 &&
                  tile.allowed.allSatisfy{index in
                      guard let glyphs = font.sets[tile.set],glyphs.indices.contains(index) else { return false }
                      return glyphs[index].indices.count == tile.rect[2]*tile.rect[3]
                  }
              }) else { return nil }
        self.font = font
        paths = font.sets.mapValues{glyphs in glyphs.map{glyph in
            Dictionary(uniqueKeysWithValues:glyph.layers.map{($0.index,OriginalMenuFont.path($0.commands))})
        }}
    }

    func render(original: CGImage,pixels: [UInt32],indices: [UInt8],panel: CGImage) -> CGImage? {
        guard pixels.count == 320*208,indices.count == pixels.count else { return nil }
        var next = [UInt32](),samples = [[UInt8]]()
        for tile in font.tiles {
            let r = tile.rect
            var sample = [UInt8]()
            for y in r[1]..<r[1]+r[3] { for x in r[0]..<r[0]+r[2] {
                sample.append(indices[y*320+x]&31);next.append(pixels[y*320+x])
            } }
            samples.append(sample)
        }
        if next == signature,let cachedImage { return cachedImage }
        guard let context = CGContext(data:nil,width:2560,height:1664,bitsPerComponent:8,bytesPerRow:2560*4,
            space:CGColorSpaceCreateDeviceRGB(),bitmapInfo:CGBitmapInfo.byteOrder32Big.rawValue | CGImageAlphaInfo.premultipliedLast.rawValue) else { return nil }
        context.draw(panel,in:CGRect(x:0,y:0,width:2560,height:1664))
        context.translateBy(x:0,y:1664);context.scaleBy(x:8,y:-8)
        readings = [];redrawnTiles = 0
        for (t,tile) in font.tiles.enumerated() {
            let r = tile.rect,sample = samples[t]
            let matched = tile.allowed.first { index in
                let mask = font.sets[tile.set]![index].indices
                if tile.set != "arrow" { return mask == sample }
                // The two original 32-pixel copies overlap by eight pixels.
                // Match the button's own interior so the neighbour's pressed
                // border cannot invalidate this button's recognition mask.
                let columns = index<2 ? 7..<24:8..<23
                return (0..<r[3]).allSatisfy { y in columns.allSatisfy { x in mask[y*r[2]+x] == sample[y*r[2]+x] } }
            }
            readings.append(matched)
            guard let matched else {
                if let crop = original.cropping(to:CGRect(x:r[0],y:r[1],width:r[2],height:r[3])) {
                    context.saveGState();context.translateBy(x:CGFloat(r[0]),y:CGFloat(r[1]+r[3]));context.scaleBy(x:1,y:-1)
                    context.interpolationQuality = .none;context.draw(crop,in:CGRect(x:0,y:0,width:r[2],height:r[3]));context.restoreGState()
                }
                continue
            }
            let glyph = font.sets[tile.set]![matched]
            if tile.set == "arrow" {
                Self.drawSeekButton(right:matched>=2,pressed:matched%2 != 0,context:context)
                redrawnTiles += 1;continue
            }
            context.saveGState();context.translateBy(x:CGFloat(r[0]),y:CGFloat(r[1]))
            if let background = glyph.indices.firstIndex(of:12),let foreground = glyph.indices.firstIndex(of:1) {
                func pixel(_ index:Int) -> UInt32 { pixels[(r[1]+index/r[2])*320+r[0]+index%r[2]] }
                Self.ink(pixel(background),context);context.fill(CGRect(x:0,y:0,width:r[2],height:r[3]))
                if tile.set == "track" {
                    Self.drawLCDDigit(0,rect:CGRect(x:7,y:0,width:11,height:18),bright:pixel(foreground),context:context)
                    Self.drawLCDDigit(matched,rect:CGRect(x:21,y:0,width:11,height:18),bright:pixel(foreground),context:context)
                } else {
                    Self.drawLCDDigit(matched,rect:CGRect(x:1,y:0,width:7,height:14),bright:pixel(foreground),context:context)
                }
                context.restoreGState();redrawnTiles += 1;continue
            }
            Self.ink(pixels[r[1]*320+r[0]],context);context.fill(CGRect(x:0,y:0,width:r[2],height:r[3]))
            for layer in glyph.layers {
                guard let index = glyph.indices.firstIndex(of:UInt8(layer.index)),let path = paths[tile.set]?[matched][layer.index] else { continue }
                let colour = pixels[(r[1]+index/r[2])*320+r[0]+index%r[2]]
                Self.ink(colour,context);context.addPath(path);context.fillPath(using:.evenOdd)
            }
            context.restoreGState();redrawnTiles += 1
        }
        signature = next;cachedImage = context.makeImage();return cachedImage
    }
    private static func drawSeekButton(right:Bool,pressed:Bool,context:CGContext) {
        // These are the two recesses in the reviewed HD radio.png, in its
        // 320 × 208 design space. The overlapping 32-pixel SD recognition
        // tiles above describe source samples, not HD button positions.
        let rect = CGRect(x:right ? 193.625:171.625,y:131.875,width:20,height:13)
        context.saveGState();context.clip(to:rect)
        context.translateBy(x:rect.minX,y:rect.minY)
        // Keep the artwork's existing bevel and material. A second painted
        // button frame used to leave two visibly offset outlines here.
        if pressed {
            context.setFillColor(CGColor(gray:0,alpha:0.38))
            context.addPath(CGPath(roundedRect:CGRect(x:0.8,y:0.8,width:18.4,height:11.4),cornerWidth:0.5,cornerHeight:0.5,transform:nil))
            context.fillPath()
        }
        context.setFillColor(CGColor(colorSpace:CGColorSpaceCreateDeviceRGB(),components:pressed ? [0.47,0.48,0.46,1]:[0.62,0.63,0.61,1])!)
        context.saveGState()
        if !right { context.translateBy(x:20,y:0);context.scaleBy(x:-1,y:1) }
        context.fill(CGRect(x:15.1,y:3,width:0.9,height:7))
        for x:CGFloat in [4,9] {
            context.beginPath();context.move(to:CGPoint(x:x,y:3));context.addLine(to:CGPoint(x:x+4,y:6.5));context.addLine(to:CGPoint(x:x,y:10));context.closePath();context.fillPath()
        }
        context.restoreGState()
        context.setFillColor(CGColor(colorSpace:CGColorSpaceCreateDeviceRGB(),components:pressed ? [0.11,0.28,0.08,1]:[0.33,0.60,0.27,1])!)
        context.fill(CGRect(x:2,y:11,width:16,height:0.65))
        context.restoreGState()
    }
    static func drawLCDDigit(_ value:Int,rect:CGRect,bright:UInt32,context:CGContext) {
        let masks = [0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f]
        let w = rect.width,h = rect.height,t:CGFloat = w>8 ? 1.8:1.4
        let segments:[(CGPoint,CGPoint)] = [
            (CGPoint(x:t/2,y:t/2),CGPoint(x:w-t/2,y:t/2)),
            (CGPoint(x:w-t/2,y:t/2),CGPoint(x:w-t/2,y:h/2)),
            (CGPoint(x:w-t/2,y:h/2),CGPoint(x:w-t/2,y:h-t/2)),
            (CGPoint(x:t/2,y:h-t/2),CGPoint(x:w-t/2,y:h-t/2)),
            (CGPoint(x:t/2,y:h/2),CGPoint(x:t/2,y:h-t/2)),
            (CGPoint(x:t/2,y:t/2),CGPoint(x:t/2,y:h/2)),
            (CGPoint(x:t/2,y:h/2),CGPoint(x:w-t/2,y:h/2))]
        context.saveGState();context.translateBy(x:rect.minX,y:rect.minY)
        for (i,endpoints) in segments.enumerated() {
            let (a,b) = endpoints,dx = b.x-a.x,dy = b.y-a.y,length = hypot(dx,dy)
            let ux = dx/length,uy = dy/length,nx = -uy*t/2,ny = ux*t/2,inset = t*0.55
            let points = [a,CGPoint(x:a.x+ux*inset+nx,y:a.y+uy*inset+ny),CGPoint(x:b.x-ux*inset+nx,y:b.y-uy*inset+ny),b,CGPoint(x:b.x-ux*inset-nx,y:b.y-uy*inset-ny),CGPoint(x:a.x+ux*inset-nx,y:a.y+uy*inset-ny)]
            if masks[value]&(1<<i) != 0 { ink(bright,context) } else { context.setFillColor(CGColor(colorSpace:CGColorSpaceCreateDeviceRGB(),components:[0,0.055,0,1])!) }
            context.beginPath();context.addLines(between:points);context.closePath();context.fillPath()
        }
        context.restoreGState()
    }
    private static func ink(_ colour: UInt32,_ context: CGContext) {
        context.setFillColor(CGColor(colorSpace:CGColorSpaceCreateDeviceRGB(),components:[CGFloat(colour&255)/255,CGFloat((colour>>8)&255)/255,CGFloat((colour>>16)&255)/255,1])!)
    }
}
