import Foundation
import CoreGraphics

// The actual Lotus glyphs and metrics, traced from its three original planes.
// Layout commands and colours come from the unmodified original menu state.
final class OriginalMenuFont {
    struct Layer: Decodable { let index: Int;let commands: [[CGFloat]] }
    struct Glyph: Decodable { let advance: Int;let height: Int;let width: Int;let mask: [UInt8];let layers: [Layer] }
    struct Font: Decodable { let map: [UInt8];let glyphs: [Glyph] }
    private let font: Font
    private let paths: [[Int:CGPath]]
    init?(data: Data) {
        guard let font = try? JSONDecoder().decode(Font.self,from:data),font.map.count == 128,font.glyphs.count == 70,
              font.glyphs.allSatisfy({$0.width>0 && $0.width<=32 && $0.height>0 && $0.height<=32 && $0.mask.count == $0.width*$0.height}) else { return nil }
        self.font = font
        paths = font.glyphs.map { glyph in Dictionary(uniqueKeysWithValues:glyph.layers.map{($0.index,Self.path($0.commands))}) }
    }
    static func path(_ commands: [[CGFloat]]) -> CGPath {
        let path = CGMutablePath()
        for command in commands {
            guard let op = command.first else { continue }
            switch Int(op) {
            case 0 where command.count == 3:path.move(to:CGPoint(x:command[1],y:command[2]))
            case 1 where command.count == 3:path.addLine(to:CGPoint(x:command[1],y:command[2]))
            case 2 where command.count == 7:path.addCurve(to:CGPoint(x:command[5],y:command[6]),control1:CGPoint(x:command[1],y:command[2]),control2:CGPoint(x:command[3],y:command[4]))
            case 3:path.closeSubpath()
            default:break
            }
        }
        return path
    }
    func render(pixels: [UInt32],indices: [UInt8],ram: [UInt8]) -> CGImage? {
        guard pixels.count == 320*208,indices.count == pixels.count,ram.count>=0x80000 else { return nil }
        var placed = [(Int,Int,Int)]()
        for address in [0x194d4,0x19546,0x19560,0x1957a,0x19594,0x195ae,0x195c8,0x195e2,0x195fc,0x19616] {
            var pointer = address,x = 0,y = 0
            func length(_ pointer: Int) -> Int {
                var p = pointer,total = 0
                while p<ram.count && ram[p]>0 && ram[p]<128 {
                    let i = Int(font.map[Int(ram[p])]);if i<font.glyphs.count { total += font.glyphs[i].advance };p += 1
                }
                return total
            }
            for _ in 0..<1024 {
                guard pointer<ram.count else { break }
                let c = Int(ram[pointer]);pointer += 1
                if c == 0 { break }
                switch c {
                case 255:x = Int(ram[pointer])*2;pointer += 1
                case 254:y = Int(ram[pointer]);pointer += 1
                case 253:pointer += 2
                case 252:pointer += 1
                case 251:x = max(0,160-length(pointer)/2)
                case 249:x = Int(ram[pointer])*2-length(pointer+1);pointer += 1
                case 0..<128:
                    let index = Int(font.map[c]);guard index<font.glyphs.count else { continue }
                    placed.append((index,x,y));x += font.glyphs[index].advance
                default:break
                }
            }
        }
        // Recover only the glyph pixels from the original clean background.
        // Its first two planes are the exact camouflage pattern used by Lotus.
        var palette = [[UInt32?]](repeating:[UInt32?](repeating:nil,count:32),count:208)
        for y in 0..<208 { for x in 0..<320 { palette[y][Int(indices[y*320+x]&31)] = pixels[y*320+x] } }
        var clean = pixels
        for (id,x,y) in placed {
            let glyph = font.glyphs[id]
            for row in 0..<glyph.height { for col in 0..<glyph.width where glyph.mask[row*glyph.width+col]>0 {
                let xx = x+col,yy = y+row
                guard xx>=0,xx<320,yy>=0,yy<200 else { continue }
                let offset = yy*40+xx/8,bit: UInt8 = 1 << (7-xx%8)
                let low = (ram[0x6f92e+offset]&bit != 0 ? 1:0) | (ram[0x6f92e+0x1f40+offset]&bit != 0 ? 2:0)
                let index = Int(indices[yy*320+xx]&24) | low
                if let background = palette[yy][index] { clean[yy*320+xx] = background }
            } }
        }
        let scale = 8
        guard let context = CGContext(data:nil,width:320*scale,height:208*scale,bitsPerComponent:8,bytesPerRow:320*scale*4,
            space:CGColorSpaceCreateDeviceRGB(),bitmapInfo:CGBitmapInfo.byteOrder32Big.rawValue | CGImageAlphaInfo.premultipliedLast.rawValue) else { return nil }
        // The background is unchanged; only the original font's ink is redrawn.
        guard let provider = CGDataProvider(data:clean.withUnsafeBytes{Data($0)} as CFData),
              let base = CGImage(width:320,height:208,bitsPerComponent:8,bitsPerPixel:32,bytesPerRow:1280,
                space:CGColorSpaceCreateDeviceRGB(),bitmapInfo:CGBitmapInfo(rawValue:CGImageAlphaInfo.premultipliedLast.rawValue),provider:provider,decode:nil,shouldInterpolate:false,intent:.defaultIntent) else { return nil }
        context.interpolationQuality = .none;context.draw(base,in:CGRect(x:0,y:0,width:2560,height:1664))
        context.translateBy(x:0,y:1664);context.scaleBy(x:8,y:-8)
        for (id,x,y) in placed {
            let glyph = font.glyphs[id]
            guard x>=0,y>=0,x+glyph.width<=320,y+glyph.height<=200 else { continue }
            for layer in glyph.layers {
                var ink: UInt32?
                for row in 0..<glyph.height {
                    if let col = (0..<glyph.width).first(where:{glyph.mask[row*glyph.width+$0] == layer.index}) {
                        ink = pixels[(y+row)*320+x+col];break
                    }
                }
                guard let ink,let path = paths[id][layer.index] else { continue }
                context.saveGState();context.translateBy(x:CGFloat(x),y:CGFloat(y))
                context.setFillColor(CGColor(colorSpace:CGColorSpaceCreateDeviceRGB(),components:[CGFloat(ink&255)/255,CGFloat((ink>>8)&255)/255,CGFloat((ink>>16)&255)/255,1])!)
                context.addPath(path);context.fillPath(using:.evenOdd);context.restoreGState()
            }
        }
        return context.makeImage()
    }
}
