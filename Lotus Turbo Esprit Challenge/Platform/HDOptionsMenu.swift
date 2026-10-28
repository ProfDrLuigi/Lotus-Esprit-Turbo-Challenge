import Foundation
import CoreGraphics
import CoreText
import ImageIO

// Real font outlines, not enlarged Amiga glyphs. Drawing and mouse targets share
// the same 320 × 208 layout so they also agree in fullscreen and letterboxing.
final class LotusHDOptionsMenu {
    struct State: Equatable {
        let difficulty: Int
        let players: Int
        let names: [String]
        let gears: [Int]
        let selected: Int
        let flashing: Bool

        init(_ game: LotusMachine) {
            difficulty = min(3,Int(game.word(0x1b066)))
            players = min(1,Int(game.word(0x1b068)))
            names = [0x1afa0,0x1afb5].map { address in
                // The original uses slash as its blank glyph.
                String(bytes:game.ram[address..<address+20],encoding:.ascii)?
                    .replacingOccurrences(of:"/",with:" ").trimmingCharacters(in:.whitespaces).uppercased() ?? ""
            }
            gears = [0x1b070,0x1b072].map { min(1,Int(game.word($0))) }
            selected = min(7,Int(game.word(0x1b05e)))
            // $133f8 switches the selected row's colour bank between 2
            // (light grey) and 3 (blue), using bit 1 of the original timer.
            flashing = game.byte(0x19b42) == 2
        }

        func hasSameOptions(as other: State) -> Bool {
            difficulty == other.difficulty && players == other.players &&
                names == other.names && gears == other.gears && selected == other.selected
        }

        func title(_ row: Int) -> String {
            switch row {
            case 0: return ["EASY – 7 RACES","MEDIUM – 10 RACES","HARD – 15 RACES","PRACTICE"][difficulty]
            case 1: return players == 0 ? "ONE":"TWO"
            case 2,5: return names[row == 2 ? 0:1]
            case 3,6: return gears[row == 3 ? 0:1] == 0 ? "MANUAL GEARS":"COMPUTERISED GEARS"
            case 4,7: return "Control"
            default: return ""
            }
        }

        func accessibilityTitle(_ row: Int) -> String {
            switch row {
            case 0: return "Difficulty: \(title(row))"
            case 1: return "Number of players: \(title(row))"
            case 2,5: return "Player \(row == 2 ? 1:2) name: \(title(row))"
            case 3,6: return "Player \(row == 3 ? 1:2): \(title(row))"
            case 4,7: return "Player \(row == 4 ? 1:2) Control"
            default: return ""
            }
        }
    }

    static let identifiers = ["difficulty","players","p1-name","p1-gears","p1-control",
                              "p2-name","p2-gears","p2-control"]
    static let rows: [CGRect] = [45,73,103,115,127,159,171,183].map {
        CGRect(x:40,y:CGFloat($0),width:240,height:11)
    }

    private let background: CGImage
    private let font: CGFont
    private var previous: State?
    private var fullImages = [Bool:CGImage]()
    private var fades = [Bool:[Int:CGImage]]()

    init?(folder: URL) {
        guard let provider = CGDataProvider(url:folder.appendingPathComponent("Menu.ttf") as CFURL),
              let font = CGFont(provider),
              let source = CGImageSourceCreateWithURL(folder.appendingPathComponent("Background.png") as CFURL,nil),
              let background = CGImageSourceCreateImageAtIndex(source,0,nil) else { return nil }
        self.font = font;self.background = background
        // Process registration also makes the bundled face available to native
        // text controls. CTFont below uses this exact file even if names clash.
        CTFontManagerRegisterFontsForURL(folder.appendingPathComponent("Menu.ttf") as CFURL,.process,nil)
    }

    func render(_ state: State,fadeLevel: Int) -> CGImage? {
        if previous.map({!state.hasSameOptions(as:$0)}) ?? true {
            previous = state;fullImages.removeAll(keepingCapacity:true);fades.removeAll(keepingCapacity:true)
        }
        // Keep both native blink phases cached: only the original selection
        // changes colour; the background and font need no per-frame redraw.
        if fullImages[state.flashing] == nil {
            guard let context = CGContext(data:nil,width:2560,height:1664,bitsPerComponent:8,bytesPerRow:2560*4,
                space:CGColorSpaceCreateDeviceRGB(),bitmapInfo:CGBitmapInfo.byteOrder32Big.rawValue | CGImageAlphaInfo.premultipliedLast.rawValue) else { return nil }
            context.interpolationQuality = .high
            context.draw(background,in:CGRect(x:0,y:0,width:2560,height:1664))
            context.scaleBy(x:8,y:8)
            context.setShouldAntialias(true)
            func ink(_ red: CGFloat,_ green: CGFloat,_ blue: CGFloat) -> CGColor {
                CGColor(red:red,green:green,blue:blue,alpha:1)
            }
            let gold = ink(1,0.79,0.04),red = ink(0.96,0.30,0.32),blue = ink(0.07,0.57,1)
            @discardableResult func text(_ value: String,in rect: CGRect,size: CGFloat,color: CGColor) -> CGRect {
                let face = CTFontCreateWithGraphicsFont(font,size,nil,nil)
                let string = NSAttributedString(string:value,attributes:[
                    NSAttributedString.Key(kCTFontAttributeName as String):face,
                    NSAttributedString.Key(kCTForegroundColorAttributeName as String):color])
                let line = CTLineCreateWithAttributedString(string)
                let bounds = CTLineGetBoundsWithOptions(line,.useGlyphPathBounds)
                let fit = min(1,rect.width/max(1,bounds.width))
                context.saveGState()
                context.translateBy(x:rect.midX,y:208-rect.midY)
                context.scaleBy(x:fit,y:fit)
                context.textPosition = CGPoint(x:-bounds.midX,y:-bounds.midY)
                CTLineDraw(line,context)
                context.restoreGState()
                return CGRect(x:rect.midX-bounds.width*fit/2,y:rect.minY,width:bounds.width*fit,height:rect.height)
            }
            text("GAME OPTIONS",in:CGRect(x:25,y:5,width:270,height:24),size:22,color:gold)
            for (title,y) in [("DIFFICULTY LEVEL",33),("NUMBER OF PLAYERS",61),("PLAYER ONE",91),("PLAYER TWO",147)] {
                text(title,in:CGRect(x:35,y:y,width:250,height:10),size:8.8,color:red)
            }
            for row in 0..<8 {
                let color = row == state.selected && state.flashing ? ink(14/15,14/15,14/15):blue
                text(state.title(row),in:Self.rows[row],size:9.5,color:color)
            }
            fullImages[state.flashing] = context.makeImage()
        }
        let level = max(0,min(8,fadeLevel))
        if let image = fades[state.flashing]?[level] { return image }
        guard let fullImage = fullImages[state.flashing],let image = LotusHDMenuFade.image(fullImage,level:level) else { return nil }
        fades[state.flashing,default:[:]][level] = image;return image
    }
}
