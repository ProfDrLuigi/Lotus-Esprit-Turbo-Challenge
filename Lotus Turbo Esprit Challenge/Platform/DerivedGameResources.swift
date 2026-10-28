import AppKit
import CryptoKit
import ImageIO
import CoreText

/// Runs in the app's private command-line worker, before any game window or
/// audio engine is created. Every reference/mask/model comes from imported RAM.
@MainActor enum LotusDerivedResources {
    static func generate(_ loaded: LotusOriginalData.Loaded, assets: URL, bundledAssets: URL, helpers: URL) throws {
        let folder = assets.appendingPathComponent("HDGraphics")
        var manifest = try JSONSerialization.jsonObject(with: Data(contentsOf: bundledAssets.appendingPathComponent("HDGraphics/manifest.json"))) as! [String: Any]
        var files = manifest["files"] as! [[String: Any]]
        let fm = FileManager.default
        try fm.createDirectory(at: folder.appendingPathComponent("References"), withIntermediateDirectories: true)
        try fm.createDirectory(at: folder.appendingPathComponent("Font"), withIntermediateDirectories: true)
        let menus = manifest["menus"] as! [[String: Any]], panels = manifest["panels"] as! [[String: Any]]
        var captures = [Int: [(String, [Int])]]()
        for item in menus + panels {
            captures[item["mode"] as! Int, default: []].append((item["reference"] as! String, item["rect"] as! [Int]))
        }
        var saved = Set<String>(), phases = Set<String>(), rawModel = [[UInt8]](), composedModel = [[UInt8]](), palette = [UInt32]()
        func writeJSON(_ value: Any, _ path: String) throws -> [String: Any] {
            let data = try JSONSerialization.data(withJSONObject: value, options: [.sortedKeys])
            try data.write(to: folder.appendingPathComponent(path))
            return ["path": path, "sha256": LotusOriginalData.hash(data)]
        }
        func capture(_ image: CGImage, _ path: String, _ rect: [Int]) throws {
            guard !saved.contains(path), let crop = image.cropping(to: CGRect(x: rect[0], y: rect[1], width: rect[2], height: rect[3])),
                  let output = CGImageDestinationCreateWithURL(folder.appendingPathComponent(path) as CFURL, "public.png" as CFString, 1, nil) else { return }
            CGImageDestinationAddImage(output, crop, nil)
            guard CGImageDestinationFinalize(output) else { throw LotusResourceStore.Failure.generation }
            let data = try Data(contentsOf: folder.appendingPathComponent(path))
            files.append(["path": path, "width": rect[2], "height": rect[3], "sha256": LotusOriginalData.hash(data)])
            saved.insert(path)
        }
        func machine() -> LotusMachine {
            let result = LotusMachine(program: loaded.program, disk: loaded.disk)
            result.captureVideoObjects = true
            return result
        }
        func step(_ game: LotusMachine) throws {
            game.runFrame()
            guard game.fault == nil else { throw LotusResourceStore.Failure.generation }
            game.latchVideoState()
        }
        let attract = machine(); attract.breakpoint = 0x10f26
        for _ in 0..<10000 {
            try step(attract)
            if attract.pc == 0x10f26 {
                rawModel = modelFrames(attract); attract.breakpoint = nil
            }
            let mode = Int(attract.word(0x1afe0)), level = Int(attract.word(0x1b762))
            if mode == 22, !rawModel.isEmpty, composedModel.isEmpty {
                _ = attract.makeImage(); composedModel = modelFrames(attract)
            }
            if level == 8, mode == 1 || captures[mode]?.contains(where: { !saved.contains($0.0) }) == true || mode == 22 && palette.isEmpty {
                guard let image = attract.makeImage() else { throw LotusResourceStore.Failure.generation }
                if mode == 1 { phases.insert(LotusOriginalData.hash(Data(attract.videoPixelIndices))) }
                for (path, rect) in captures[mode, default: []] { try capture(image, path, rect) }
                if mode == 22 { palette = Array(attract.videoRowPalette[156*32..<157*32]) }
            }
            if saved.count == 11, phases.count == 8, !palette.isEmpty { break }
        }
        print("Local references:",saved.count,"intro phases:",phases.count,"model atlases:",rawModel.count,composedModel.count)
        guard saved.count == 11, phases.count == 8, rawModel.count == 24, composedModel.count == 24, palette.count == 32 else { throw LotusResourceStore.Failure.generation }
        let mf = ["width": 320, "height": 208, "frames": phases.sorted().map { ["sha256": $0] }] as [String: Any]
        var mfEntry = try writeJSON(mf, "Font/magnetic-fields.json")
        mfEntry["artwork"] = "Panels/MF.png"; manifest["magneticFields"] = mfEntry

        let radio = machine()
        for frame in 0...550 {
            radio.buttons1 = [100, 400].contains(where: { ($0..<$0+6).contains(frame) }) ? 16 : 0
            try step(radio)
        }
        guard radio.word(0x1afe0) == 41, radio.word(0x1b762) == 8, let radioImage = radio.makeImage() else { throw LotusResourceStore.Failure.generation }
        try capture(radioImage, "References/radio.png", [0, 0, 320, 208])
        print("Local radio masks ready")
        var radioEntry = manifest["radio"] as! [String: Any]
        radioEntry["vectors"] = try writeJSON(radioMasks(radio), "Font/radio.json"); manifest["radio"] = radioEntry

        let race = machine(); race.breakpoint = 0x116ac
        for frame in 0...1500 {
            race.buttons1 = [100, 400, 600, 800].contains(where: { ($0..<$0+6).contains(frame) }) ? 16 : 0
            if frame > 920 { race.buttons1 = 8 }
            try step(race)
            if race.pc == 0x116ac {
                race.putWord(0x1b062, 0); race.putWord(0x1a9ee, 1); race.breakpoint = nil
            }
        }
        guard race.long(0x64) == 0x151b0 else { throw LotusResourceStore.Failure.generation }
        // The painted HD garage shows the hands lowered. Observe a full native
        // cycle and select the lowest skin centroids, rather than whichever
        // moving hand happens to be visible at an arbitrary capture time.
        var garagePose: (Double, CGImage)?
        for _ in 0..<256 {
            try step(race)
            guard let image = race.makeImage(),let bytes = image.dataProvider?.data as Data? else { throw LotusResourceStore.Failure.generation }
            var score=0.0
            for (x,y,w,h) in [(18,44,23,14),(188,25,20,18),(207,25,20,18)] {
                var count=0,totalY=0
                for row in y..<y+h { for column in x..<x+w {
                    let i=((112+row)*320+column)*4,r=Int(bytes[i]),g=Int(bytes[i+1]),b=Int(bytes[i+2])
                    if r>g+20,g>b+12,g>50,r<220 { count+=1;totalY+=row }
                } }
                guard count>=5 else { throw LotusResourceStore.Failure.generation }
                score+=Double(totalY)/Double(count)
            }
            if garagePose == nil || score>garagePose!.0 { garagePose=(score,image) }
        }
        guard let raceImage = garagePose?.1 else { throw LotusResourceStore.Failure.generation }
        try capture(raceImage, "References/garage.png", [0, 112, 320, 96])
        print("Local garage and HUD source ready")
        manifest["hud"] = try writeJSON(hudMasks(race), "Font/hud.json")
        manifest["dimensionModel"] = try writeJSON(try dimensionModel(raw: rawModel, composed: composedModel, palette: palette, work: assets, helpers: helpers), "Font/dimensions.json")
        guard saved.count == 13 else { throw LotusResourceStore.Failure.generation }
        manifest["files"] = files; manifest["version"] = 3; manifest.removeValue(forKey: "font")
        let result = try JSONSerialization.data(withJSONObject: manifest, options: [.sortedKeys])
        try result.write(to: folder.appendingPathComponent("manifest.json"))
        guard LotusHDGraphics(assetsURL: bundledAssets,derivedAssetsURL:assets) != nil else { throw LotusResourceStore.Failure.generation }
    }

    private static func modelFrames(_ game: LotusMachine) -> [[UInt8]] {
        (0..<24).map { frame in (0..<176*60).map { pixel in
            let x = pixel%176, y = pixel/176, offset = frame*0x528+y*22+x/8, bit: UInt8 = 1 << (7-x%8)
            return (0..<5).reduce(UInt8(0)) { $0 | (game.ram[0x3c6b0+$1*0x7bc0+offset]&bit != 0 ? 1 << $1 : 0) }
        } }
    }
    private static func radioMasks(_ game: LotusMachine) -> [String: Any] {
        func glyphs(_ bank: Int, _ count: Int, _ width: Int, _ height: Int, _ offset: (Int, Int, Int, Int) -> Int) -> [[String: Any]] {
            (0..<count).map { digit in
                let indices = (0..<height*width).map { pixel -> UInt8 in
                    let x = pixel%width, y = pixel/width
                    return (0..<5).reduce(UInt8(0)) { $0 | (game.ram[bank+offset(digit, $1, x, y)]&(1 << (7-x%8)) != 0 ? 1 << $1 : 0) }
                }
                return ["indices": indices, "layers": [] as [Int]]
            }
        }
        let sets = ["track": glyphs(0x35180, 5, 32, 18) { $1*360+$0*72+$3*4+$2/8 },
                    "digit": glyphs(0x35888, 10, 8, 14) { $1*140+$3*10+$0 },
                    "arrow": glyphs(0x35b44, 4, 32, 13) { $1*208+$0*52+$3*4+$2/8 }]
        let tiles: [[String: Any]] = [["set": "track", "rect": [40,140,32,18], "allowed": [0,1,2,3,4]]] +
            [88,104,112].map { ["set": "digit", "rect": [$0,144,8,14], "allowed": Array(0..<10)] } +
            [["set": "arrow", "rect": [168,131,32,13], "allowed": [0,1]], ["set": "arrow", "rect": [192,131,32,13], "allowed": [2,3]]]
        return ["sets": sets, "tiles": tiles]
    }
    private static func hudMasks(_ game: LotusMachine) throws -> [String: Any] {
        let image = game.renderPixels()
        var glyphs = [[String: Any]]()
        func add(_ id: String, _ x: Int, _ y: Int, _ width: Int, _ height: Int, _ mask: [Int]) throws {
            guard mask.contains(1) else { throw LotusResourceStore.Failure.generation }
            glyphs.append(["id": id, "x": x, "y": y, "width": width, "height": height, "mask": mask,
                           "commands": try hudPath(id: id, width: width, height: height, mask: mask)])
        }
        for (id,y) in [("GEAR",2),("MPH",18),("RPM",35),("FUEL",49),("POS",63)] {
            let mask = (0..<41*7).map { pixel -> Int in
                let i = ((y+pixel/41)*320+278+pixel%41)*4
                return image[i]==0 && image[i+1]==204 && image[i+2]==238 ? 1:0
            }
            try add(id, 278, y, 41, 7, mask)
        }
        for (name,start,count,stride,plane,w,x,y) in [
            ("speed",0x483e2,10,7,70,1,286,26),("gear",0x48310,5,21,105,3,286,10),
            ("position",0x4846e,20,110,0x898,5,278,72)] {
            for digit in 0..<count {
                let width = w*8, height = stride/w
                let mask = (0..<width*height).map { p in game.ram[start+plane+digit*stride+(p/width)*w+(p%width)/8]&(1 << (7-p%8)) != 0 ? 1:0 }
                try add("\(name)-\(digit+(name == "speed" ? 0:1))", x, y, width, height, mask)
            }
        }
        return ["version": 1, "glyphs": glyphs]
    }
    private static func hudPath(id: String, width: Int, height: Int, mask: [Int]) throws -> [[CGFloat]] {
        let small = CTFontCreateWithName("Menlo-Bold" as CFString,100,nil)
        let digits = CTFontCreateWithName("DINAlternate-Bold" as CFString,100,nil)
        let tall = CTFontCreateWithName("DINCondensed-Bold" as CFString,100,nil)
        var zero: UniChar = 48, zeroGlyph: CGGlyph = 0
        guard CTFontGetGlyphsForCharacters(digits,&zero,&zeroGlyph,1),let zeroPath = CTFontCreatePathForGlyph(digits,zeroGlyph,nil) else { throw LotusResourceStore.Failure.generation }
        let speedReference = zeroPath.boundingBoxOfPath
        func ordinal(_ n: Int) -> String { "\(n)"+((11...13).contains(n%100) ? "TH" : [1:"ST",2:"ND",3:"RD"][n%10] ?? "TH") }
        var text = id, font = small, columns = 0..<width
        if id.hasPrefix("speed-") { text = String(id.dropFirst(6)); font = digits }
        else if id.hasPrefix("gear-") { text = ordinal(Int(id.dropFirst(5))!) }
        else if id.hasPrefix("position-") { text = ordinal(Int(id.dropFirst(9))!); font = tall }
        else {
            var groups = [Range<Int>](), start: Int?, last = 0
            for x in 0..<width where (0..<height).contains(where: { mask[$0*width+x] != 0 }) {
                if let old = start, x-last > 2 { groups.append(old..<last+1);start = x }
                else if start == nil { start = x }; last = x
            }
            if let start { groups.append(start..<last+1) }
            guard let group = groups.max(by: { $0.count < $1.count }) else { throw LotusResourceStore.Failure.generation }
            columns = group
        }
        var minX = width, minY = height, maxX = 0, maxY = 0
        let combined = CGMutablePath()
        for y in 0..<height { for x in 0..<width where mask[y*width+x] != 0 {
            if columns.contains(x) { minX = min(minX,x);minY = min(minY,y);maxX = max(maxX,x+1);maxY = max(maxY,y+1) }
            else { combined.addRect(CGRect(x:x,y:y,width:1,height:1)) }
        } }
        let native = CGMutablePath(), characters = Array(text.utf16)
        var indices = [CGGlyph](repeating:0,count:characters.count), advances = [CGSize](repeating:.zero,count:characters.count)
        guard CTFontGetGlyphsForCharacters(font,characters,&indices,characters.count) else { throw LotusResourceStore.Failure.generation }
        CTFontGetAdvancesForGlyphs(font,.horizontal,indices,&advances,indices.count)
        var x: CGFloat = 0
        for (n,glyph) in indices.enumerated() {
            var t = CGAffineTransform(translationX:x,y:0)
            if let path = CTFontCreatePathForGlyph(font,glyph,&t) { native.addPath(path) }; x += advances[n].width
        }
        let box = native.boundingBoxOfPath
        guard !box.isEmpty else { throw LotusResourceStore.Failure.generation }
        var sx = CGFloat(maxX-minX)/box.width, sy = CGFloat(maxY-minY)/box.height
        var tx = CGFloat(minX)-box.minX*sx, ty = CGFloat(minY)+box.maxY*sy
        if id == "speed-1" {
            sx = CGFloat(maxX-minX)/speedReference.width;sy = CGFloat(maxY-minY)/speedReference.height
            tx = CGFloat(minX+maxX)/2-box.midX*sx;ty = CGFloat(minY)+speedReference.maxY*sy
        }
        combined.addPath(native,transform:CGAffineTransform(a:sx,b:0,c:0,d:-sy,tx:tx,ty:ty))
        return pathCommands(combined)
    }
    private static func pathCommands(_ path: CGPath) -> [[CGFloat]] {
        var result = [[CGFloat]](), current = CGPoint.zero, first = CGPoint.zero
        func xy(_ p: CGPoint) -> [CGFloat] { [p.x,p.y] }
        path.applyWithBlock { pointer in
            let e = pointer.pointee, p = e.points
            switch e.type {
            case .moveToPoint: result.append([0]+xy(p[0]));current=p[0];first=p[0]
            case .addLineToPoint: result.append([1]+xy(p[0]));current=p[0]
            case .addCurveToPoint: result.append([2]+xy(p[0])+xy(p[1])+xy(p[2]));current=p[2]
            case .addQuadCurveToPoint:
                let a = CGPoint(x:current.x+(p[0].x-current.x)*2/3,y:current.y+(p[0].y-current.y)*2/3)
                let b = CGPoint(x:p[1].x+(p[0].x-p[1].x)*2/3,y:p[1].y+(p[0].y-p[1].y)*2/3)
                result.append([2]+xy(a)+xy(b)+xy(p[1]));current=p[1]
            case .closeSubpath: result.append([3]);current=first
            @unknown default: break
            }
        }
        return result
    }
    private static func dimensionModel(raw: [[UInt8]], composed: [[UInt8]], palette: [UInt32], work: URL, helpers: URL) throws -> [String: Any] {
        var requests = Data("LTR1".utf8), masks = [(Int, Int, [UInt8])]()
        var colours = Array(0..<32)
        for (values,target) in [([13,14,15],14),([16,17,18],17),([19,20,21],20),([23,24],24),([25,26],26),([27,28],28),([29,30,31],30)] { for value in values { colours[value] = target } }
        for (frame,pixels) in raw.enumerated() {
            let joined = pixels.map { colours[Int($0)] }
            for colour in Set(joined).sorted() where colour != 0 { masks.append((frame,colour,joined.map { $0 == colour ? 1:0 })) }
        }
        func number(_ value: Int) { requests.append(contentsOf: (0..<4).reversed().map { UInt8(truncatingIfNeeded: value >> ($0*8)) }) }
        number(masks.count)
        for (_,_,mask) in masks { number(176);number(60);requests.append(contentsOf:mask) }
        let input = work.appendingPathComponent("dimension-masks.bin")
        try requests.write(to: input); defer { try? FileManager.default.removeItem(at: input) }
        let output = try LotusOriginalData.run(helpers.appendingPathComponent("lotus-trace"),[input.path],work:work,cancellation:.init())
        let paths = try JSONDecoder().decode([[[Double]]].self,from:output)
        guard paths.count == masks.count else { throw LotusResourceStore.Failure.generation }
        var layers = Array(repeating:[[String:Any]](),count:24)
        for (n,item) in masks.enumerated() where !paths[n].isEmpty { layers[item.0].append(["index":item.1,"commands":paths[n]]) }
        return ["version":1,"width":176,"height":60,"sourceRect":[48,128,176,60],"targetRect":[50,126,168,65],"background":[51,51,51],
                "palette":palette,"frames":(0..<24).map { ["hash":LotusOriginalData.hash(Data(composed[$0])),"layers":layers[$0]] }]
    }
}
