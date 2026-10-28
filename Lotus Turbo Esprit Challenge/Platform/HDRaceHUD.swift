import Foundation
import CoreGraphics
import CoreText

// The first 20 BOBs of the original race UI bank are lettering: messages,
// countdown, finishing places and player numbers. Completed draw commands
// retain their original visibility, placement and blinking with TTF ink.
final class LotusHDRaceMessages {
    struct Overlay {
        let text: String
        let width: Int
        let height: Int
        let colourIndex: Int
        init(_ text: String,_ width: Int,_ height: Int,_ colourIndex: Int = 6) {
            self.text = text;self.width = width;self.height = height;self.colourIndex = colourIndex
        }
        var playerNumber: Bool { colourIndex == 4 }
    }
    // Exhaustive audit of the 25 original frames at $4959e. Frames 20...22
    // are brake lights, and 23...24 are progress bars, rather than text.
    static let overlays: [Overlay] = [
        .init("OUT OF FUEL",106,14),.init("PAUSED",65,14),
        .init("RACE OVER",91,14),.init("FINAL LAP",89,14),
        .init("3",18,26),.init("2",18,26),.init("1",16,26),.init("GO!",46,26)
    ] + ["1ST","2ND","3RD","4TH","5TH","6TH","7TH","8TH","9TH","10TH"].map{.init($0,40,22)} + [
        .init("1",5,5,4),.init("2",6,5,4)
    ]
    static let texts = Dictionary(uniqueKeysWithValues:overlays.enumerated().map{($0.offset,$0.element.text)})
    static func overlay(frame: Int) -> Overlay? { overlays.indices.contains(frame) ? overlays[frame]:nil }
    private let font: CGFont
    private var cache = [String:[UInt32]]()
    init?(url: URL) {
        guard let provider = CGDataProvider(url:url as CFURL),let font = CGFont(provider) else { return nil }
        self.font = font
    }
    func pixels(frame: Int,width: Int,height: Int,colour: UInt32) -> [UInt32]? {
        guard let overlay = Self.overlay(frame:frame),height == overlay.height,width == overlay.width else { return nil }
        let key = "\(frame):\(colour)"
        if let pixels = cache[key] { return pixels }
        let face = CTFontCreateWithGraphicsFont(font,100,nil,nil)
        let line = CTLineCreateWithAttributedString(NSAttributedString(string:overlay.text,attributes:[
            NSAttributedString.Key(kCTFontAttributeName as String):face]))
        let path = CGMutablePath()
        for run in CTLineGetGlyphRuns(line) as! [CTRun] {
            let count = CTRunGetGlyphCount(run)
            var glyphs = [CGGlyph](repeating:0,count:count),positions = [CGPoint](repeating:.zero,count:count)
            CTRunGetGlyphs(run,CFRange(location:0,length:0),&glyphs)
            CTRunGetPositions(run,CFRange(location:0,length:0),&positions)
            for i in 0..<count { if let glyph = CTFontCreatePathForGlyph(face,glyphs[i],nil) {
                path.addPath(glyph,transform:CGAffineTransform(translationX:positions[i].x,y:positions[i].y))
            } }
        }
        let bounds = path.boundingBoxOfPath
        guard !bounds.isEmpty else { return nil }
        var pixels = [UInt32](repeating:0,count:width*height*16)
        let ok = pixels.withUnsafeMutableBytes { bytes -> Bool in
            guard let c = CGContext(data:bytes.baseAddress,width:width*4,height:height*4,bitsPerComponent:8,bytesPerRow:width*16,
                space:CGColorSpaceCreateDeviceRGB(),bitmapInfo:CGBitmapInfo.byteOrder32Big.rawValue|CGImageAlphaInfo.premultipliedLast.rawValue) else { return false }
            let padding: CGFloat = overlay.playerNumber ? 0.25:1
            let scale = min((CGFloat(width)-2*padding)/bounds.width,(CGFloat(height)-2*padding)/bounds.height)
            c.setShouldAntialias(true);c.scaleBy(x:4,y:4)
            c.translateBy(x:CGFloat(width)/2,y:CGFloat(height)/2);c.scaleBy(x:scale,y:scale)
            c.translateBy(x:-bounds.midX,y:-bounds.midY)
            c.setLineJoin(.round);c.setLineWidth(1/scale);c.setStrokeColor(CGColor(gray:0,alpha:1))
            c.setFillColor(CGColor(red:CGFloat(colour&255)/255,green:CGFloat((colour>>8)&255)/255,
                blue:CGFloat((colour>>16)&255)/255,alpha:1))
            c.addPath(path);c.drawPath(using:overlay.playerNumber ? .fill:.fillStroke)
            return true
        }
        guard ok else { return nil }
        if cache.count>=32 { cache.removeAll(keepingCapacity:true) }
        cache[key] = pixels;return pixels
    }
}

// Rendered vector lettering fitted to the original HUD font. Identify what the completed
// hardware-sprite frame actually displays; reading current physics RAM instead
// would put speed, gear and position ahead of the visible frame.
final class LotusHDRaceHUD {
    private struct Font: Decodable { let version: Int;let glyphs: [Glyph] }
    private struct Glyph: Decodable {
        let id: String;let x: Int;let y: Int;let width: Int;let height: Int
        let mask: [UInt8];let commands: [[CGFloat]]
    }
    struct Tile {
        let x: Int;let y: Int;let width: Int;let height: Int;let pixels: [UInt32]
        func contains(x: Int,y: Int) -> Bool { x>=self.x && x<self.x+width && y>=self.y && y<self.y+height }
    }
    struct Reading: Equatable {
        var gear: Int?;var speed: Int?;var position: Int?
        var rpmColumns: Int?;var fuelColumns: Int?
        var progressColumns: Int?
    }
    private let glyphs: [String:Glyph]
    private let paths: [String:CGPath]
    private var cache = [String:[UInt32]]()
    private(set) var readings = [Int:Reading]()

    init?(data: Data) {
        guard let font = try? JSONDecoder().decode(Font.self,from:data),font.version == 1,font.glyphs.count == 40,
              Set(font.glyphs.map(\.id)).count == 40,
              font.glyphs.allSatisfy({$0.width>0 && $0.width<=42 && $0.height>0 && $0.height<=22 &&
                  $0.mask.count == $0.width*$0.height && $0.mask.allSatisfy{$0<=1}}) else { return nil }
        glyphs = Dictionary(uniqueKeysWithValues:font.glyphs.map{($0.id,$0)})
        paths = Dictionary(uniqueKeysWithValues:font.glyphs.map{($0.id,OriginalMenuFont.path($0.commands))})
        guard ["GEAR","MPH","RPM","FUEL","POS"].allSatisfy({glyphs[$0] != nil}),
              (0..<10).allSatisfy({glyphs["speed-\($0)"] != nil}),
              (1...5).allSatisfy({glyphs["gear-\($0)"] != nil}),
              (1...20).allSatisfy({glyphs["position-\($0)"] != nil}) else { return nil }
    }

    func prepare(source: [UInt32],indices: [UInt8],viewports: [Int]) -> [Tile] {
        readings.removeAll(keepingCapacity:true)
        guard source.count == 320*208,indices.count == source.count else { return [] }
        var tiles = [Tile]()
        for viewport in viewports where viewport == 0 || viewport == 112 {
            var reading = Reading()
            func ink(_ pixel: UInt32,cyan: Bool) -> Bool {
                let r = pixel&255,g = (pixel>>8)&255,b = (pixel>>16)&255
                return cyan ? g>r && b>r : r>0 && r == g && g == b
            }
            func matches(_ glyph: Glyph,x: Int,cyan: Bool) -> UInt32? {
                var color: UInt32?
                for y in 0..<glyph.height { for xx in 0..<glyph.width {
                    let i = (viewport+glyph.y+y)*320+x+xx
                    let lit = indices[i]>=16 && ink(source[i],cyan:cyan)
                    guard lit == (glyph.mask[y*glyph.width+xx] == 1) else { return nil }
                    if lit { color = source[i] }
                } }
                return color
            }
            func append(_ glyph: Glyph,x: Int,color: UInt32) {
                let key = "\(glyph.id):\(color)"
                let pixels: [UInt32]
                if let found = cache[key] { pixels = found }
                else {
                    guard let path = paths[glyph.id],let drawn = raster(width:glyph.width,height:glyph.height,draw:{ context in
                        context.setLineWidth(2);context.setLineJoin(.round)
                        context.setStrokeColor(Self.color(0xff000000));context.setFillColor(Self.color(color))
                        context.addPath(path);context.strokePath()
                        context.addPath(path);context.fillPath(using:.evenOdd)
                    }) else { return }
                    if cache.count>=256 { cache.removeAll(keepingCapacity:true) }
                    cache[key] = drawn;pixels = drawn
                }
                tiles.append(Tile(x:x,y:viewport+glyph.y,width:glyph.width,height:glyph.height,pixels:pixels))
            }
            // A clipped or hidden sprite remains original. In particular the
            // pit monitor and transitions must not acquire an invented HUD.
            for name in ["GEAR","MPH","RPM","FUEL","POS"] {
                let glyph = glyphs[name]!
                if let color = matches(glyph,x:glyph.x,cyan:true) { append(glyph,x:glyph.x,color:color) }
            }
            for (prefix,count) in [("gear",5),("position",20)] {
                for value in 1...count {
                    let glyph = glyphs["\(prefix)-\(value)"]!
                    if let color = matches(glyph,x:glyph.x,cyan:false) {
                        append(glyph,x:glyph.x,color:color)
                        if prefix == "gear" { reading.gear = value } else { reading.position = value }
                        break
                    }
                }
            }
            var digits = [Int]()
            for column in 0..<3 {
                for value in 0..<10 {
                    let glyph = glyphs["speed-\(value)"]!,x = glyph.x+column*8
                    if let color = matches(glyph,x:x,cyan:false) {
                        append(glyph,x:x,color:color);digits.append(value);break
                    }
                }
            }
            if digits.count == 3 { reading.speed = digits[0]*100+digits[1]*10+digits[2] }
            for (name,y) in [("rpm",43),("fuel",57)] {
                let x = 279,width = 38,height = 5
                let border = (0..<width).allSatisfy { xx in
                    [0,4].allSatisfy { yy in
                        let i = (viewport+y+yy)*320+x+xx
                        return indices[i]>=16 && source[i]&0x00ffffff == 0
                    }
                }
                guard border else { continue }
                var spans = [(Int,Int,UInt32)](),filled = 0
                for column in 0..<36 {
                    let i = (viewport+y+2)*320+x+1+column
                    guard indices[i]>=16,source[i]&0x00ffffff != 0 else { continue }
                    filled += 1
                    if let last = spans.last,last.0+last.1 == column,last.2 == source[i] {
                        spans[spans.count-1].1 += 1
                    } else { spans.append((column,1,source[i])) }
                }
                guard let pixels = raster(width:width,height:height,draw:{ context in
                    context.setFillColor(Self.color(0xff000000))
                    for rect in [CGRect(x:0,y:0,width:38,height:1),CGRect(x:0,y:4,width:38,height:1),
                                 CGRect(x:0,y:1,width:1,height:3),CGRect(x:37,y:1,width:1,height:3)] { context.fill(rect) }
                    for (start,length,color) in spans {
                        context.setFillColor(Self.color(color));context.fill(CGRect(x:start+1,y:1,width:length,height:3))
                    }
                }) else { continue }
                tiles.append(Tile(x:x,y:viewport+y,width:width,height:height,pixels:pixels))
                if name == "rpm" { reading.rpmColumns = filled } else { reading.fuelColumns = filled }
            }
            // The segmented race-progress bitmap lives on the opposite
            // side of the viewport. Recognise its complete displayed frame,
            // so garages, hidden sprites and clipped transitions stay hidden.
            let px = 2,py = viewport+2,ph = 6
            func progressInk(_ x: Int,_ y: Int) -> UInt32? {
                let i = (py+y)*320+px+x
                // Unlike the hardware-sprite gauges, this native command uses
                // playfield ink 0 for its frame and 2 for its red progress.
                return indices[i] == 0 || indices[i] == 2 ? source[i]:nil
            }
            func progressBlack(_ x: Int,_ y: Int) -> Bool { progressInk(x,y).map{$0&0x00ffffff == 0} ?? false }
            // The original 194-pixel command reserves up to twelve sections.
            // Recover the visible width, including tracks with fewer/more laps.
            let progressWidth = (1...12).map{$0*16+2}.first { width in
                [(0,0),(width-1,0),(0,5),(width-1,5)].allSatisfy{progressInk($0.0,$0.1) == nil} &&
                    (1..<width-1).allSatisfy{progressBlack($0,0) && progressBlack($0,5)} &&
                    (1..<5).allSatisfy{progressBlack(0,$0) && progressBlack(width-1,$0)} &&
                    (0..<width).allSatisfy{progressBlack($0,1) && progressBlack($0,4)} &&
                    stride(from:16,to:width-2,by:16).allSatisfy { x in
                        (x...x+1).allSatisfy{progressBlack($0,2) && progressBlack($0,3)}
                    }
            }
            if let pw = progressWidth {
                var spans = [(Int,Int,UInt32)](),filled = 0
                for x in 2..<pw-2 {
                    guard let color = progressInk(x,2),color&0x00ffffff != 0 else { continue }
                    // Both rows must be the same displayed fill, not a stray
                    // sprite crossing an incomplete progress indicator.
                    guard progressInk(x,3) == color else { continue }
                    filled += 1
                    if let last = spans.last,last.0+last.1 == x,last.2 == color {
                        spans[spans.count-1].1 += 1
                    } else { spans.append((x,1,color)) }
                }
                if let pixels = raster(width:pw,height:ph,draw:{ context in
                    let outline = CGMutablePath()
                    outline.addRoundedRect(in:CGRect(x:0,y:0,width:pw,height:ph),cornerWidth:1,cornerHeight:1)
                    outline.addRect(CGRect(x:2,y:2,width:pw-4,height:2))
                    context.setFillColor(Self.color(0xff000000));context.addPath(outline);context.fillPath(using:.evenOdd)
                    for x in stride(from:16,to:pw-2,by:16) { context.fill(CGRect(x:x,y:2,width:2,height:2)) }
                    for (start,length,color) in spans {
                        context.setFillColor(Self.color(color));context.fill(CGRect(x:start,y:2,width:length,height:2))
                    }
                }) {
                    tiles.append(Tile(x:px,y:py,width:pw,height:ph,pixels:pixels))
                    reading.progressColumns = filled
                }
            }
            readings[viewport] = reading
        }
        return tiles
    }

    private func raster(width: Int,height: Int,draw: (CGContext)->Void) -> [UInt32]? {
        var pixels = [UInt32](repeating:0,count:width*height*16)
        let ok = pixels.withUnsafeMutableBytes { bytes -> Bool in
            guard let context = CGContext(data:bytes.baseAddress,width:width*4,height:height*4,bitsPerComponent:8,bytesPerRow:width*16,
                space:CGColorSpaceCreateDeviceRGB(),bitmapInfo:CGBitmapInfo.byteOrder32Big.rawValue | CGImageAlphaInfo.premultipliedLast.rawValue) else { return false }
            context.setAllowsAntialiasing(true);context.setShouldAntialias(true)
            context.translateBy(x:0,y:CGFloat(height*4));context.scaleBy(x:4,y:-4)
            draw(context);return true
        }
        return ok ? pixels:nil
    }
    private static func color(_ pixel: UInt32) -> CGColor {
        CGColor(colorSpace:CGColorSpaceCreateDeviceRGB(),components:[CGFloat(pixel&255)/255,CGFloat((pixel>>8)&255)/255,CGFloat((pixel>>16)&255)/255,1])!
    }
}
