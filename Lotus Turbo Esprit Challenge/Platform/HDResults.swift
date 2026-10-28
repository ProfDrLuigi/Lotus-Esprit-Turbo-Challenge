import Foundation
import CoreGraphics
import CoreText
import ImageIO

// Read the original text display lists after the game has assembled/sorted
// them. This includes finish times, both players, ratings, updated high scores
// and the original highlighted-row colours, without duplicating game rules.
final class LotusHDResults {
    struct Run: Equatable {
        let text: String
        let x: Int
        let y: Int
        let width: Int
        let height: Int
        let alignment: Int // 0 left, 1 centre, 2 right
        let anchor: Int
        let bank: Int
    }
    struct State: Equatable {
        let script: Int
        let runs: [Run]
        var title: String { runs.first?.text ?? "" }
    }
    private let font: CGFont
    private let background: CGImage
    private var previousIndices = [UInt8]()
    private var previous: State?
    private var full: CGImage?
    private var faded: CGImage?
    private var previousLevel = -1

    init?(folder: URL) {
        guard let provider = CGDataProvider(url:folder.appendingPathComponent("Menu.ttf") as CFURL),
              let font = CGFont(provider),
              let source = CGImageSourceCreateWithURL(folder.appendingPathComponent("Background.png") as CFURL,nil),
              let background = CGImageSourceCreateImageAtIndex(source,0,nil) else { return nil }
        self.font = font;self.background = background
    }

    func render(machine: LotusMachine,fadeLevel: Int) -> CGImage? {
        render(mode:Int(machine.word(0x1afe0)),ram:machine.ram,indices:machine.videoPixelIndices,fadeLevel:fadeLevel)
    }

    func render(mode: Int,ram: [UInt8],indices: [UInt8],fadeLevel: Int) -> CGImage? {
        // A mode can change before its previous image disappears. Retain the
        // exact recognized displayed text through that outgoing fade.
        if indices != previousIndices || full == nil {
            guard let state = Self.state(mode:mode,ram:ram,indices:indices) else { return nil }
            if state != previous {
                guard let image = draw(state) else { return nil }
                full = image;previous = state;previousLevel = -1
            }
            previousIndices = indices
        }
        let level = max(0,min(8,fadeLevel))
        if previousLevel != level {
            faded = full.flatMap { LotusHDMenuFade.image($0,level:level) };previousLevel = level
        }
        return faded
    }

    static func state(mode: Int,ram: [UInt8],indices: [UInt8]) -> State? {
        guard ram.count>=0x80000,indices.count == 320*208 else { return nil }
        // Mode 11 is reused for the Easy table in the attract loop. The
        // post-race mode also advances before the old table stops blinking.
        guard [11,30,31].contains(mode) || (50...57).contains(mode) else { return nil }
        let candidates = [0x198c4,0x1a004,0x19b44,0x1a0d6,0x1a26e,0x1a408]
        for script in candidates {
            if let runs = decode(script:script,ram:ram,indices:indices),let title = runs.first,
               title.height>10,title.bank == 0 {
                return State(script:script,runs:runs)
            }
        }
        return nil
    }

    private static func decode(script: Int,ram: [UInt8],indices: [UInt8]) -> [Run]? {
        var p = script,x = 0,y = 0,alignment = 0,anchor = 0,runs = [Run]()
        func glyph(_ c: UInt8) -> (advance:Int,height:Int,start:Int)? {
            guard c<128 else { return nil }
            let id = Int(ram[0x1b3ce+Int(c)])
            guard id<70 else { return nil }
            let advance = Int(Int8(bitPattern:ram[0x1b44e+id]))+1,uv = Int(ram[0x1b4da+id])
            return (advance,Int(ram[0x1b494+id]),0x737ae+(uv&14)*2+(uv&240)*20)
        }
        func length(_ start: Int) -> Int {
            var q = start,value = 0
            while q<min(ram.count,script+2048),ram[q]>0,ram[q]<128 {
                value += glyph(ram[q])?.advance ?? 0;q += 1
            }
            return value
        }
        while p<min(ram.count,script+2048) {
            let c = Int(ram[p]);p += 1
            switch c {
            case 0: return runs
            case 255: x = Int(ram[p])*2;p += 1;anchor = x;alignment = 0
            case 254: y = Int(ram[p]);p += 1
            case 253: p += 2 // Original colour bands are read from displayed ink below.
            case 252: p += 1
            case 251: anchor = 160;alignment = 1;x = max(0,160-length(p)/2)
            case 249: anchor = Int(ram[p])*2;p += 1;alignment = 2;x = anchor-length(p)
            case 1..<128:
                p -= 1
                let start = p,startX = x
                let wrappedPrefix = max(0,startX+length(p)-320)
                var height = 0,ink = 0,matching = 0,banks = [Int](repeating:0,count:4)
                while p<min(ram.count,script+2048),ram[p]>0,ram[p]<128 {
                    guard let g = glyph(ram[p]) else { return nil }
                    height = max(height,g.height)
                    if g.advance>0 {
                        for yy in 0..<g.height { for xx in 0..<max(0,g.advance-1) {
                            var value = 0
                            for plane in 0..<3 {
                                if ram[g.start+plane*0xf00+yy*32+xx/8] & (1 << (7-xx%8)) != 0 { value |= 1<<plane }
                            }
                            guard value>0 else { continue }
                            let px = x+xx,py = y+yy
                            // Long native name lines overflow their 40-byte
                            // scanline and overwrite its next left edge. Match
                            // only unaffected visible ink; the HD line fits
                            // its complete text within the page instead.
                            guard px>=wrappedPrefix,px<320,py>=0,py<200 else { continue }
                            let actual = Int(indices[py*320+px])
                            ink += 1
                            if actual&7 == value { matching += 1;banks[(actual>>3)&3] += 1 }
                        } }
                    }
                    x += g.advance;p += 1
                }
                let value = String(bytes:ram[start..<p],encoding:.ascii)?
                    .replacingOccurrences(of:"/",with:" ").trimmingCharacters(in:.whitespaces).uppercased() ?? ""
                // Exact native glyph ink is also the transition guard: do not
                // put a new result over a car photo or another outgoing page.
                if !value.isEmpty {
                    guard ink>0,matching == ink else { return nil }
                    let bank = banks.indices.max(by:{banks[$0]<banks[$1]}) ?? 2
                    runs.append(.init(text:value,x:startX,y:y,width:x-startX,height:height,
                                      alignment:alignment,anchor:anchor,bank:bank))
                }
            default: return nil
            }
        }
        return nil
    }

    private func draw(_ state: State) -> CGImage? {
        guard let context = CGContext(data:nil,width:2560,height:1664,bitsPerComponent:8,bytesPerRow:2560*4,
            space:CGColorSpaceCreateDeviceRGB(),bitmapInfo:CGBitmapInfo.byteOrder32Big.rawValue | CGImageAlphaInfo.premultipliedLast.rawValue) else { return nil }
        context.interpolationQuality = .high
        context.draw(background,in:CGRect(x:0,y:0,width:2560,height:1664))
        context.scaleBy(x:8,y:8);context.setShouldAntialias(true)
        let colors = [CGColor(red:1,green:0.79,blue:0.04,alpha:1),
                      CGColor(red:0.96,green:0.30,blue:0.32,alpha:1),
                      CGColor(red:14/15,green:14/15,blue:14/15,alpha:1),
                      CGColor(red:0.07,green:0.57,blue:1,alpha:1)]
        for run in state.runs {
            let face = CTFontCreateWithGraphicsFont(font,run.height>10 ? 22:9.5,nil,nil)
            let string = NSAttributedString(string:run.text,attributes:[
                NSAttributedString.Key(kCTFontAttributeName as String):face,
                NSAttributedString.Key(kCTForegroundColorAttributeName as String):colors[run.bank]])
            let line = CTLineCreateWithAttributedString(string),bounds = CTLineGetBoundsWithOptions(line,.useGlyphPathBounds)
            // Keep native column anchors and spacing while using actual TTF
            // glyphs. Long user names shrink inside their own column only.
            let limit: CGFloat
            if run.alignment == 1 { limit = 300 }
            else {
                let right = state.runs.filter{$0.y == run.y && $0.x>run.x}.map(\.x).min() ?? 316
                limit = CGFloat(max(1,right-run.x-3))
            }
            let fit = min(1,limit/max(1,bounds.width))
            let left: CGFloat
            switch run.alignment {
            case 1: left = CGFloat(run.anchor)-bounds.width*fit/2
            case 2: left = CGFloat(run.anchor)-bounds.width*fit
            default: left = CGFloat(run.x)
            }
            context.saveGState()
            context.translateBy(x:left,y:208-CGFloat(run.y)-CGFloat(run.height)/2)
            context.scaleBy(x:fit,y:fit)
            context.textPosition = CGPoint(x:-bounds.minX,y:-bounds.midY)
            CTLineDraw(line,context);context.restoreGState()
        }
        return context.makeImage()
    }
}
