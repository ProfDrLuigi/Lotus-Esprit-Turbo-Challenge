import Foundation
import CoreGraphics
import ImageIO
import CryptoKit

extension LotusHDCarGeometry {
    func rect(for object: LotusVideoObject) -> Rect {
        rect(x:object.x,y:object.y,width:object.width,height:object.height,player:object.carBodyPaletteIndex == 2)
    }
}

enum LotusHDMenuFade {
    // $13c64 builds nine OCS palettes: each four-bit component is multiplied
    // by level/8 and rounded DOWN before expanding it back to eight bits.
    static func reference(_ pixel: UInt32,level: Int) -> UInt32 {
        guard level<8 else { return pixel }
        var result = pixel&0xff000000
        for shift in [0,8,16] { result |= (((pixel>>shift)&255)/17*UInt32(level)/8*17)<<shift }
        return result
    }
    static func dim(_ pixel: UInt32,level: Int) -> UInt32 {
        guard level<8 else { return pixel }
        var result = pixel&0xff000000
        for shift in [0,8,16] { result |= (((pixel>>shift)&255)*UInt32(level)/8)<<shift }
        return result
    }
    static func image(_ image: CGImage,level: Int) -> CGImage? {
        guard level<8 else { return image }
        guard let context = CGContext(data:nil,width:image.width,height:image.height,bitsPerComponent:8,bytesPerRow:image.width*4,
            space:CGColorSpaceCreateDeviceRGB(),bitmapInfo:CGImageAlphaInfo.premultipliedLast.rawValue) else { return nil }
        context.draw(image,in:CGRect(x:0,y:0,width:image.width,height:image.height))
        context.setFillColor(CGColor(gray:0,alpha:1-CGFloat(level)/8))
        context.fill(CGRect(x:0,y:0,width:image.width,height:image.height))
        return context.makeImage()
    }
    static func fullPixels(indices: [UInt8],ram: [UInt8]) -> [UInt32] {
        let palette = (0..<32).map { i -> UInt32 in
            let address = 0x863a0+8*64+i*2,value = UInt32(ram[address])*256+UInt32(ram[address+1])
            return 0xff000000 | ((value>>8)&15)*17 | ((value>>4)&15)*17<<8 | (value&15)*17<<16
        }
        return indices.map{palette[Int($0&31)]}
    }
}

enum LotusHDSky {
    static func rows(palette: [UInt32],viewport: Int,horizon: Int) -> [UInt32]? {
        guard palette.count == 208*32,viewport>=0,horizon>0,horizon<=96,viewport+horizon<=208 else { return nil }
        // COLOR15 is sky above the completed panorama's bottom edge and road
        // paint below it. Recover the original sky stops without sampling paint.
        var bands = [(start: Int,end: Int,colour: UInt32)]()
        for y in 0..<horizon {
            let colour = palette[(viewport+y)*32+15]
            if let last = bands.last,last.colour == colour { bands[bands.count-1].end = y+1 }
            else { bands.append((y,y+1,colour)) }
        }
        let stops = bands.enumerated().map { index,band -> (y: Double,colour: UInt32) in
            // A hill may cut the final Copper band short. Keep its centre at
            // the preceding band's spacing so the gradient does not breathe.
            let width = index == bands.count-1 && index>0 ? max(band.end-band.start,bands[index-1].end-bands[index-1].start):band.end-band.start
            return (Double(band.start)+Double(width)/2,band.colour)
        }
        var result = [UInt32](repeating:0,count:horizon*4),segment = 0
        for y in result.indices {
            let sample = (Double(y)+0.5)/4
            while segment+1<stops.count && sample>stops[segment+1].y { segment += 1 }
            let a = stops[segment],b = stops[min(segment+1,stops.count-1)]
            let t = b.y>a.y ? min(1,max(0,(sample-a.y)/(b.y-a.y))):0
            var colour: UInt32 = 0xff000000
            for shift in [0,8,16] {
                let start = Double((a.colour>>shift)&255),end = Double((b.colour>>shift)&255)
                colour |= UInt32((start+(end-start)*t).rounded())<<shift
            }
            result[y] = colour
        }
        return result
    }
}


// A presentation layer over the original frame. Neither HD mode nor loading art
// writes to the machine: the original object masks still define all occlusion.
final class LotusHDGraphics {
    private struct Manifest: Decodable {
        struct Object: Decodable { let id: String; let path: String }
        struct Menu: Decodable { let mode: Int; let rect: [Int]; let path: String; let reference: String }
        struct Panel: Decodable { let mode: Int; let rect: [Int]; let path: String; let reference: String }
        struct Font: Decodable { let path: String;let sha256: String;let artwork: String? }
        struct Backdrop: Decodable { let id: String;let path: String;let palette: [UInt32];let periodWidth: Int }
        struct Radio: Decodable { let path: String;let reference: String;let vectors: Font }
        struct File: Decodable { let path: String; let width: Int; let height: Int; let sha256: String }
        struct GaragePose: Decodable { let hand: Int;let phase: Int;let rect: [Int];let path: String }
        let version: Int; let scale: Int; let objects: [Object]; let menus: [Menu]
        let surfaces: [String]; let garage: String; let garageReference: String; let files: [File]
        let panels: [Panel]
        let hud: Font
        let backdrops: [Backdrop]
        let radio: Radio
        let garagePoses: [GaragePose]
        let magneticFields: Font?
        let dimensionModel: Font?
    }
    private struct Bitmap {
        let width: Int; let height: Int; let pixels: [UInt32]
        init(width: Int,height: Int,pixels: [UInt32]) { self.width = width;self.height = height;self.pixels = pixels }
        init?(_ image: CGImage, width: Int? = nil, height: Int? = nil) {
            let w = width ?? image.width, h = height ?? image.height
            self.width = w; self.height = h
            var data = [UInt32](repeating:0,count:w*h)
            let ok = data.withUnsafeMutableBytes { buffer -> Bool in
                guard let context = CGContext(data:buffer.baseAddress,width:w,height:h,
                    bitsPerComponent:8,bytesPerRow:w*4,space:CGColorSpaceCreateDeviceRGB(),
                    bitmapInfo:CGBitmapInfo.byteOrder32Big.rawValue | CGImageAlphaInfo.premultipliedLast.rawValue) else { return false }
                context.interpolationQuality = .high
                context.draw(image,in:CGRect(x:0,y:0,width:w,height:h))
                return true
            }
            guard ok else { return nil }; pixels = data
        }
        var image: CGImage? { LotusHDGraphics.image(pixels,width:width,height:height) }
    }
    private let manifest: Manifest
    private var bitmaps: [String:Bitmap]
    private let objects: [String:String]
    private let panelImages: [String:CGImage]
    private let road: LotusHDRoad
    private let hud: LotusHDRaceHUD
    private let raceMessages: LotusHDRaceMessages?
    private let radio: LotusHDRadio
    private let garage: LotusHDGarage
    private var intro: LotusHDIntro?
    private let magneticFieldsIntro: LotusHDMagneticFields?
    private let dimensionModel: LotusHDDimensionModel?
    private let carLights: [String:[LotusHDCarLights.Region]]
    private let carGeometry: [String:LotusHDCarGeometry]
    private let carRims: [String:[LotusHDCarWheels.Rim]]
    private let carTyres: [String:LotusHDCarTyres]
    private let optionsMenu: LotusHDOptionsMenu?
    private let results: LotusHDResults?
    private(set) var showingOptions = false
    var optionsMenuAvailable: Bool { optionsMenu != nil }
    private struct CachedBitmap { let bitmap: Bitmap;var used: UInt64 }
    private var resized = [String:CachedBitmap]()
    private var sourceImages = [String:CGImage]()
    private var resizeClock: UInt64 = 0
    private var resizedBytes = 0
    private(set) var replacedObjects = 0
    private(set) var replacedMenus = 0
    private(set) var roadPixels = 0
    private(set) var attachedBrakeLights = 0
    private(set) var animatedTyrePixels = 0
    private(set) var replacedHUD = 0
    private(set) var raceMessageViewports = [Int:String]()
    private(set) var raceOverlayFrames = [Int:[Int]]()
    private(set) var backdropPixels = 0
    private(set) var joinedStartBeams = 0
    private(set) var garageHandOffsets = [Int:[Double]]()
    private(set) var introHeadlightPhase: Int?
    private(set) var magneticFieldsFrame: Data?
    private(set) var dimensionModelFrame: Int?
    private(set) var menuFadeLevel: Int?
    var hudReadings: [Int:LotusHDRaceHUD.Reading] { hud.readings }
    var radioReadings: [Int?] { radio.readings }
    var radioTiles: Int { radio.redrawnTiles }

    init?(assetsURL: URL?, derivedAssetsURL: URL? = nil) {
        let base = assetsURL ?? Bundle.main.resourceURL!.appendingPathComponent("GameAssetts")
        let folder = base.appendingPathComponent("HDGraphics")
        let derived = (derivedAssetsURL ?? (assetsURL == nil
            ? FileManager.default.urls(for:.applicationSupportDirectory,in:.userDomainMask)[0].appendingPathComponent("Lotus1/Resources")
            : base)).appendingPathComponent("HDGraphics")
        func resource(_ path: String) -> URL {
            let local = path.hasPrefix("References/") || ["Font/hud.json","Font/radio.json","Font/dimensions.json","Font/magnetic-fields.json","manifest.json"].contains(path)
            return (local ? derived:folder).appendingPathComponent(path)
        }
        optionsMenu = LotusHDOptionsMenu(folder:folder.appendingPathComponent("Font"))
        results = LotusHDResults(folder:folder.appendingPathComponent("Font"))
        raceMessages = LotusHDRaceMessages(url:folder.appendingPathComponent("Font/Menu.ttf"))
        guard let data = try? Data(contentsOf:resource("manifest.json")),
              let manifest = try? JSONDecoder().decode(Manifest.self,from:data),
              manifest.version == 3, manifest.scale == 4, manifest.objects.count == 47,
              manifest.surfaces == ["asphalt","grass","sand","snow","dry-grass","gravel"].map({"Surfaces/"+$0+".png"}) else { return nil }
        if let entry = manifest.magneticFields {
            guard !entry.path.contains(".."),!entry.path.hasPrefix("/"),
                  let artwork = entry.artwork,manifest.files.contains(where:{$0.path == artwork && $0.width == 2560 && $0.height == 1664}),
                  !artwork.contains(".."),!artwork.hasPrefix("/"),
                  let bytes = try? Data(contentsOf:resource(entry.path)),
                  SHA256.hash(data:bytes).map({String(format:"%02x",$0)}).joined() == entry.sha256,
                  let intro = LotusHDMagneticFields(data:bytes,artworkURL:folder.appendingPathComponent(artwork)) else { return nil }
            magneticFieldsIntro = intro
        } else { magneticFieldsIntro = nil }
        if let entry = manifest.dimensionModel {
            guard !entry.path.contains(".."),!entry.path.hasPrefix("/"),
                  let bytes = try? Data(contentsOf:resource(entry.path)),
                  SHA256.hash(data:bytes).map({String(format:"%02x",$0)}).joined() == entry.sha256,
                  let model = LotusHDDimensionModel(data:bytes) else { return nil }
            dimensionModel = model
        } else { dimensionModel = nil }
        guard optionsMenu != nil,!manifest.hud.path.contains(".."),!manifest.hud.path.hasPrefix("/"),
              let hudData = try? Data(contentsOf:resource(manifest.hud.path)),
              SHA256.hash(data:hudData).map({String(format:"%02x",$0)}).joined() == manifest.hud.sha256,
              let hud = LotusHDRaceHUD(data:hudData),
              !manifest.radio.vectors.path.contains(".."),!manifest.radio.vectors.path.hasPrefix("/"),
              let radioData = try? Data(contentsOf:resource(manifest.radio.vectors.path)),
              SHA256.hash(data:radioData).map({String(format:"%02x",$0)}).joined() == manifest.radio.vectors.sha256,
              let radio = LotusHDRadio(data:radioData) else { return nil }
        var loaded = [String:Bitmap]()
        var panelImages = [String:CGImage]()
        for file in manifest.files {
            guard !file.path.contains(".."), !file.path.hasPrefix("/"), file.width>0, file.height>0,
                  file.width<=8192, file.height<=4096,
                  let bytes = try? Data(contentsOf:resource(file.path)),
                  SHA256.hash(data:bytes).map({String(format:"%02x",$0)}).joined() == file.sha256,
                  let source = CGImageSourceCreateWithData(bytes as CFData,nil),
                  let image = CGImageSourceCreateImageAtIndex(source,0,nil),
                  image.width == file.width, image.height == file.height else { return nil }
            if file.path.hasPrefix("Panels/") { panelImages[file.path] = image }
            else {
                guard let bitmap = Bitmap(image) else { return nil }
                loaded[file.path] = bitmap
            }
        }
        let paths = manifest.objects.map(\.path) + manifest.menus.flatMap{[$0.path,$0.reference]} +
            manifest.surfaces + [manifest.garage,manifest.garageReference,manifest.radio.reference] + manifest.backdrops.map(\.path) + manifest.garagePoses.map(\.path)
        guard paths.allSatisfy({loaded[$0] != nil}),
              Set(manifest.panels.map(\.mode)) == Set([10,20,21,22,23]),
              manifest.panels.allSatisfy({panelImages[$0.path]?.width == 2560 && panelImages[$0.path]?.height == 1664 &&
                  loaded[$0.reference] != nil && $0.rect.count == 4}),
              Set(manifest.objects.map(\.id)).count == manifest.objects.count,
              manifest.surfaces.allSatisfy({loaded[$0]?.width == 1024 && loaded[$0]?.height == 1024}),
              manifest.backdrops.count == 10,Set(manifest.backdrops.map(\.id)).count == 10,
              manifest.backdrops.allSatisfy({loaded[$0.path]?.width == 5120 && loaded[$0.path]?.height == 128 && $0.palette.count == 32 && (2000...3840).contains($0.periodWidth)}),
              panelImages[manifest.radio.path]?.width == 2560,panelImages[manifest.radio.path]?.height == 1664,
              loaded[manifest.garage]?.width == 1280,loaded[manifest.garage]?.height == 384,
              loaded[manifest.garageReference]?.width == 320,loaded[manifest.garageReference]?.height == 96,
              manifest.garagePoses.count == 4,
              Set(manifest.garagePoses.map{"\($0.hand):\($0.phase)"}) == Set(["0:1","0:2","1:1","2:1"]),
              manifest.garagePoses.allSatisfy({ p in
                  p.rect.count == 4 && p.rect[0]>=0 && p.rect[1]>=0 && p.rect[2]>0 && p.rect[3]>0 &&
                  p.rect[0]+p.rect[2]<=320 && p.rect[1]+p.rect[3]<=96 &&
                  loaded[p.path]?.width == p.rect[2]*4 && loaded[p.path]?.height == p.rect[3]*4
              }),
              manifest.menus.allSatisfy({$0.rect.count == 4 && $0.rect[2]>0 && $0.rect[3]>0}) else { return nil }
        guard let straightPath = manifest.objects.first(where:{$0.id == "car-4"})?.path,
              let straightCar = loaded[straightPath],
              let straightLights = LotusHDCarLights(pixels:straightCar.pixels,width:straightCar.width,height:straightCar.height) else { return nil }
        var carLights = [String:[LotusHDCarLights.Region]]()
        var carGeometry = [String:LotusHDCarGeometry]()
        var carRims = [String:[LotusHDCarWheels.Rim]]()
        var carTyres = [String:LotusHDCarTyres]()
        for object in manifest.objects where object.id.hasPrefix("car-") {
            guard let bitmap = loaded[object.path],let angle = Int(object.id.dropFirst(4)),
                  let sourceLights = LotusHDCarLights(pixels:bitmap.pixels,width:bitmap.width,height:bitmap.height) else { return nil }
            let registration = LotusHDCarRegistration(height:bitmap.height,plate:sourceLights.plate,
                straightHeight:straightCar.height,straightPlate:straightLights.plate)
            let steering = LotusHDCarSteering(angle:angle,mapY:registration.targetY)
            let pixels = steering.pixels(registration.pixels(bitmap.pixels,width:bitmap.width,height:bitmap.height),
                                        width:bitmap.width,height:bitmap.height)
            guard let lights = LotusHDCarLights(pixels:pixels,width:bitmap.width,height:bitmap.height) else { return nil }
            loaded[object.path] = Bitmap(width:bitmap.width,height:bitmap.height,pixels:pixels)
            carLights[object.path] = lights.regions
            carRims[object.path] = steering.rims(registration.rims(angle:angle))
            carTyres[object.path] = LotusHDCarTyres(angle:angle,mapY:registration.targetY)
            carGeometry[object.path] = LotusHDCarGeometry(width:bitmap.width,height:bitmap.height,
                plate:sourceLights.plate,angle:angle,straightWidth:straightCar.width,straightHeight:straightCar.height,
                straightPlate:straightLights.plate)
            loaded[object.path+"#braking"] = Bitmap(width:bitmap.width,height:bitmap.height,pixels:lights.litPixels)
        }
        self.manifest = manifest; bitmaps = loaded
        self.panelImages = panelImages
        self.hud = hud
        self.radio = radio
        garage = LotusHDGarage(pixels:loaded[manifest.garage]!.pixels,reference:loaded[manifest.garageReference]!.pixels,
                              poses:manifest.garagePoses.map{.init(hand:$0.hand,phase:$0.phase,rect:$0.rect,pixels:loaded[$0.path]!.pixels)})
        road = LotusHDRoad(textures:manifest.surfaces.map{loaded[$0]!.pixels})
        self.carLights = carLights
        self.carGeometry = carGeometry
        self.carRims = carRims
        self.carTyres = carTyres
        objects = Dictionary(uniqueKeysWithValues:manifest.objects.map{($0.id,$0.path)})
    }

    func render(_ original: CGImage, machine: LotusMachine) -> CGImage {
        guard original.width == 320, original.height == 208,
              let bytes = original.dataProvider?.data else { return original }
        let data = bytes as Data
        let source = data.withUnsafeBytes { Array($0.bindMemory(to:UInt32.self)) }
        guard source.count == 320*208 else { return original }
        replacedObjects = 0; replacedMenus = 0;roadPixels = 0;attachedBrakeLights = 0;replacedHUD = 0;backdropPixels = 0
        joinedStartBeams = 0
        animatedTyrePixels = 0
        raceMessageViewports.removeAll(keepingCapacity:true)
        raceOverlayFrames.removeAll(keepingCapacity:true)
        garageHandOffsets.removeAll(keepingCapacity:true)
        introHeadlightPhase = nil
        magneticFieldsFrame = nil
        dimensionModelFrame = nil
        menuFadeLevel = nil
        showingOptions = false
        let fadeLevel = min(8,Int(machine.word(0x1b762)))
        if machine.long(0x64) != 0x151b0 {
            let mode = Int(machine.word(0x1afe0))
            if let image = results?.render(machine:machine,fadeLevel:fadeLevel) {
                replacedMenus = 1;menuFadeLevel = fadeLevel;return image
            }
            if mode == 1,let image = magneticFieldsIntro?.render(machine:machine,level:fadeLevel) {
                magneticFieldsFrame = magneticFieldsIntro?.displayedFrame
                replacedMenus = 1;menuFadeLevel = fadeLevel;return image
            }
            if mode == 41,matches(source,rect:[0,0,320,208],reference:manifest.radio.reference,fadeLevel:fadeLevel),
               let panel = panelImages[manifest.radio.path] {
                // Draw the live LCD/buttons with full palette colours, then
                // fade the entire HD cockpit once. Otherwise its live digits
                // would dim twice while its static faceplate stayed bright.
                let pixels = fadeLevel == 8 ? source:LotusHDMenuFade.fullPixels(indices:machine.videoPixelIndices,ram:machine.ram)
                if let full = fadeLevel == 8 ? original:Self.image(pixels,width:320,height:208),
                   let image = radio.render(original:full,pixels:pixels,indices:machine.videoPixelIndices,panel:panel),
                   let faded = LotusHDMenuFade.image(image,level:fadeLevel) {
                    replacedMenus = 1;menuFadeLevel = fadeLevel;return faded
                }
            }
            if let panel = manifest.panels.first(where:{$0.mode == mode}),
               matches(source,rect:panel.rect,reference:panel.reference,fadeLevel:fadeLevel),let image = panelImages[panel.path] {
                var full = image
                if mode == 22,let animated = dimensionModel?.render(panel:image,indices:machine.videoPixelIndices) {
                    full = animated;dimensionModelFrame = dimensionModel?.displayedFrame
                }
                if let faded = LotusHDMenuFade.image(full,level:fadeLevel) {
                    replacedMenus = 1;menuFadeLevel = fadeLevel;return faded
                }
            }
            if mode == 40 {
                // Recognise the title from its bitplanes/full palette, which
                // remain intact even at the darkest fade level.
                let full = LotusHDMenuFade.fullPixels(indices:machine.videoPixelIndices,ram:machine.ram)
                let titlePixels = full.prefix(320*27).filter { ($0&255)>150 && (($0>>8)&255)>100 && (($0>>16)&255)<100 }.count
                if titlePixels>100 {
                    let image = optionsMenu?.render(.init(machine),fadeLevel:fadeLevel)
                    if let image {
                        showingOptions = optionsMenu != nil
                        replacedMenus = 1;menuFadeLevel = fadeLevel;return image
                    }
                }
            }
        }
        var output = [UInt32]()
        if machine.long(0x64) == 0x151b0 {
            drawRace(machine,source:source,output:&output)
        } else {
            output = Self.nearest4x(source)
            for menu in manifest.menus where menu.mode == Int(machine.word(0x1afe0)) {
                // A mode word changes before its new screen is fully visible.
                // Match the actual faded palette before replacing. A mode word
                // alone must never put the next picture over the outgoing one.
                guard matches(source,rect:menu.rect,reference:menu.reference,fadeLevel:fadeLevel),
                      let bitmap = scaled(menu.path,width:menu.rect[2]*4,height:menu.rect[3]*4) else { continue }
                paste(bitmap,x:menu.rect[0]*4,y:menu.rect[1]*4,output:&output)
                if menu.mode == 11 {
                    if intro == nil { intro = LotusHDIntro(pixels:bitmap.pixels,width:bitmap.width,height:bitmap.height) }
                    if let phase = intro?.phase(machine:machine) {
                        introHeadlightPhase = phase
                        intro?.draw(phase:phase,x:menu.rect[0]*4,y:menu.rect[1]*4,output:&output)
                    }
                }
                if fadeLevel<8 {
                    for y in menu.rect[1]*4..<(menu.rect[1]+menu.rect[3])*4 {
                        for x in menu.rect[0]*4..<(menu.rect[0]+menu.rect[2])*4 {
                            let i = y*1280+x
                            output[i] = LotusHDMenuFade.dim(output[i],level:fadeLevel)
                        }
                    }
                }
                replacedMenus += 1
                menuFadeLevel = fadeLevel
            }
        }
        return Self.image(output,width:1280,height:832) ?? original
    }

    private func drawRace(_ game: LotusMachine,source: [UInt32],output: inout [UInt32]) {
        let draws = game.videoObjects[game.displayedVideoBuffer] ?? []
        if let frame = game.renderBackground(),!draws.isEmpty {
            let clean = frame.pixels.withUnsafeBytes { Array($0.bindMemory(to:UInt32.self)) }
            output = Self.nearest4x(clean)
            let viewports = (game.videoBackgrounds[game.displayedVideoBuffer] ?? [:]).keys.filter { viewport in
                !matches(source,rect:[0,viewport,280,96],reference:manifest.garageReference,referenceWidth:320)
            }
            backdropPixels = drawBackdrops(game,viewports:Array(viewports),output:&output)
            let horizons = (game.videoBackdrops[game.displayedVideoBuffer] ?? [:]).mapValues{$0.y+$0.height}
            roadPixels = road.render(indices:frame.indices,palette:game.videoRowPalette,viewports:Array(viewports),
                distances:game.videoDistances[game.displayedVideoBuffer] ?? [],horizons:horizons,
                projections:game.videoRoads[game.displayedVideoBuffer] ?? [:],
                landscapes:(game.videoBackdrops[game.displayedVideoBuffer] ?? [:]).mapValues{$0.id},output:&output)
            let hudTiles = hud.prepare(source:source,indices:game.videoPixelIndices,viewports:Array(viewports))
            // Paint the same completed command batch over its clean background.
            // The HD silhouette replaces the old silhouette instead of revealing
            // original pixels wherever the two pieces of artwork differ.
            var lastCar = [Int:Int](),brakingCars = Set<Int>(),brakeOverlays = Set<Int>()
            for (id,object) in draws.enumerated() {
                if object.asset?.hasPrefix("car-") == true { lastCar[object.viewport] = id }
                else if object.isBrakeLight,let car = lastCar[object.viewport] {
                    brakingCars.insert(car);brakeOverlays.insert(id)
                }
            }
            // The native gantry repeats one overlapping crosspiece BOB twice.
            // Giving both HD pieces a complete frame left an internal end cap
            // behind the S. Scale one continuous beam over their original union.
            var joinedBeams = [Int:(x: Int,width: Int)](),coveredBeams = Set<Int>()
            for id in draws.indices.dropLast() where !coveredBeams.contains(id) {
                let a = draws[id],b = draws[id+1]
                guard a.asset == "world-82-right",b.asset == a.asset,a.bank == b.bank,a.frame == b.frame,
                      a.viewport == b.viewport,a.y == b.y,a.height == b.height,a.bottom == b.bottom,
                      a.x != b.x,a.x<b.x+b.width,b.x<a.x+a.width else { continue }
                let x = min(a.x,b.x)
                joinedBeams[id] = (x,max(a.x+a.width,b.x+b.width)-x)
                coveredBeams.insert(id+1)
            }
            for (id,object) in draws.enumerated() {
                if coveredBeams.contains(id) { continue }
                let beam = joinedBeams[id],x = beam?.x ?? object.x,width = beam?.width ?? object.width
                let left = max(0,x),right = min(288,x+width)
                let top = max(object.viewport,object.y),bottom = min(object.bottom+1,object.y+object.height)
                guard left<right,top<bottom,top>=0,bottom<=208 else { continue }
                if brakeOverlays.contains(id) { attachedBrakeLights += 1;continue }
                if object.bank == 0x4959e,let frame = object.frame,
                   let overlay = LotusHDRaceMessages.overlay(frame:frame),game.videoRowPalette.count == 208*32,
                   let pixels = raceMessages?.pixels(frame:frame,width:object.width,height:object.height,
                       colour:game.videoRowPalette[(top+bottom-1)/2*32+overlay.colourIndex]) {
                    for y in top*4..<bottom*4 { for x in left*4..<right*4 {
                        let pixel = pixels[(y-object.y*4)*object.width*4+x-object.x*4]
                        output[y*1280+x] = Self.blend(pixel,over:output[y*1280+x])
                    } }
                    raceOverlayFrames[object.viewport,default:[]].append(frame)
                    if !overlay.playerNumber { raceMessageViewports[object.viewport] = overlay.text }
                    replacedObjects += 1;continue
                }
                if let asset = object.asset,let path = objects[asset] {
                    let rect = carGeometry[path]?.rect(for:object) ?? LotusHDCarGeometry.Rect(
                        x:x*4,y:object.y*4,width:width*4,height:object.height*4)
                    guard let bitmap = scaled(path+(brakingCars.contains(id) ? "#braking":""),width:rect.width,height:rect.height) else { continue }
                    let hdLeft = max(0,rect.x),hdRight = min(288*4,rect.x+rect.width)
                    let hdTop = max(object.viewport*4,rect.y),hdBottom = min((object.bottom+1)*4,rect.y+rect.height)
                    guard hdLeft<hdRight,hdTop<hdBottom else { continue }
                    let lensRegions = (carLights[path] ?? []).map { region in
                        CGRect(x:Double(region.x)*Double(bitmap.width)/Double(bitmaps[path]!.width),
                            y:Double(region.y)*Double(bitmap.height)/Double(bitmaps[path]!.height),
                            width:Double(region.width)*Double(bitmap.width)/Double(bitmaps[path]!.width),
                            height:Double(region.height)*Double(bitmap.height)/Double(bitmaps[path]!.height))
                    }
                    for y in hdTop..<hdBottom { for x in hdLeft..<hdRight {
                            var pixel = bitmap.pixels[(y-rect.y)*bitmap.width+x-rect.x]
                            if let paint = object.carBodyPaletteIndex,paint != 2,game.videoRowPalette.count == 208*32 {
                                let target = game.videoRowPalette[(y/4)*32+paint]
                                let tr = Int(target&255),tg = Int((target>>8)&255),tb = Int((target>>16)&255)
                                let r = Int(pixel&255),g = Int((pixel>>8)&255),b = Int((pixel>>16)&255)
                                let lens = CGPoint(x:x-rect.x,y:y-rect.y)
                                let amber = g>50 && g*10>b*16+80
                                if r*5>g*6,r*5>b*6,!amber,!lensRegions.contains(where:{$0.contains(lens)}) {
                                    let light = max(1,tr,tg,tb)
                                    pixel = (pixel&0xff000000) | UInt32(min(255,r*tr/light)) |
                                        UInt32(min(255,r*tg/light))<<8 | UInt32(min(255,r*tb/light))<<16
                                }
                            }
                            let destination = y*1280+x
                            output[destination] = Self.blend(pixel,over:output[destination])
                    } }
                    if lastCar[object.viewport] == id,let angle = object.carAngle,
                       let motion = game.videoRoads[game.displayedVideoBuffer]?[object.viewport] {
                        if object.carBodyPaletteIndex == 2,let tyres = carTyres[path] {
                            for patch in tyres.patches(pixels:bitmap.pixels,width:bitmap.width,height:bitmap.height,
                                                      distance:motion.distance,speed:motion.speed) {
                                let x = rect.x+patch.x,y = rect.y+patch.y
                                guard x>=hdLeft,x<hdRight,y>=hdTop,y<hdBottom else { continue }
                                output[y*1280+x] = patch.applying(to:output[y*1280+x])
                                animatedTyrePixels += 1
                            }
                        }
                        for shadow in LotusHDCarWheels.shadows(angle:angle,width:bitmap.width,height:bitmap.height,
                                                               distance:motion.distance,speed:motion.speed,rims:carRims[path]) {
                            let x = rect.x+shadow.x,y = rect.y+shadow.y
                            guard x>=hdLeft,x<hdRight,y>=hdTop,y<hdBottom else { continue }
                            let pixel = bitmap.pixels[shadow.y*bitmap.width+shadow.x]
                            let shaded = LotusHDCarWheels.shade(pixel,gain:shadow.gain)
                            if shaded != pixel { output[y*1280+x] = shaded }
                        }
                    }
                    if beam != nil { joinedStartBeams += 1 }
                    replacedObjects += beam == nil ? 1:2
                } else if game.videoRowPalette.count == 208*32 {
                    // Numbers and other original bitmap overlays retain their
                    // exact mask, palette, order and clipping.
                    for y in top..<bottom { for x in left..<right {
                        let index = object.pixels[(y-object.y)*object.width+x-object.x]
                        guard index<16 else { continue }
                        // The progress frame is a playfield command, rather
                        // than a hardware sprite. Remove its old pixel contour
                        // before compositing the antialiased replacement.
                        if x<278,hudTiles.contains(where:{$0.contains(x:x,y:y)}) { continue }
                        let pixel = game.videoRowPalette[y*32+Int(index)]
                        for dy in 0..<4 { for dx in 0..<4 { output[(y*4+dy)*1280+x*4+dx] = pixel } }
                    } }
                }
            }
            // Preserve original hardware overlays unless a complete displayed
            // glyph/bar was identified for vector redrawing. Hidden sprites,
            // unrecognised overlays and the pit monitor retain their original path.
            for y in 0..<208 { for x in 0..<320 where game.videoPixelIndices[y*320+x]>=16 {
                if hudTiles.contains(where:{$0.contains(x:x,y:y)}) { continue }
                for dy in 0..<4 { for dx in 0..<4 { output[(y*4+dy)*1280+x*4+dx] = source[y*320+x] } }
            } }
            for tile in hudTiles {
                for yy in 0..<tile.height*4 { for xx in 0..<tile.width*4 {
                    let i = (tile.y*4+yy)*1280+tile.x*4+xx
                    output[i] = Self.blend(tile.pixels[yy*tile.width*4+xx],over:output[i])
                } }
            }
            replacedHUD = hudTiles.count
        } else { output = Self.nearest4x(source) }
        for (player,base) in [0x1a980,0x1aa36].enumerated() {
            let y = player*112
            guard matches(source,rect:[0,y,280,96],reference:manifest.garageReference,referenceWidth:320) else { continue }
            let animated = garage.frame(source:source,viewport:y)
            garageHandOffsets[y] = animated.offsets
            let activePit = game.word(base+0x18) == 1
            output.withUnsafeMutableBufferPointer { destination in
                animated.pixels.withUnsafeBufferPointer { pixels in
                    destination.baseAddress!.advanced(by:y*4*1280).update(from:pixels.baseAddress!,count:1280*384)
                }
            }
            if activePit {
                for row in 13..<84 { for x in 279..<312 {
                    let pixel=source[(y+row)*320+x]
                    for dy in 0..<4 { for dx in 0..<4 { output[((y+row)*4+dy)*1280+x*4+dx]=pixel } }
                } }
            }
            replacedMenus += 1
        }
    }

    private func drawBackdrops(_ game: LotusMachine,viewports: [Int],output: inout [UInt32]) -> Int {
        var painted = 0
        for viewport in viewports {
            guard let placement = game.videoBackdrops[game.displayedVideoBuffer]?[viewport],
                  let entry = manifest.backdrops.first(where:{$0.id == placement.id}),let bitmap = bitmaps[entry.path],
                  game.videoRowPalette.count == 208*32 else { continue }
            guard let sky = LotusHDSky.rows(palette:game.videoRowPalette,viewport:viewport,
                                          horizon:placement.y+placement.height) else { continue }
            // One continuous sky under both the clear area and the panorama's
            // transparent pixels; its antialiased skyline uses the same colour.
            for (yy,colour) in sky.enumerated() {
                let row = (viewport*4+yy)*1280
                for x in 0..<1280 { output[row+x] = colour }
            }
            // The art is assembled with ONE uniform scale. Camera rotation maps
            // to its natural period; displayed HD pixels are never stretched.
            let start = placement.x*Double(entry.periodWidth)/960,first = Int(start),weight = UInt32((start-Double(first))*256),other = 256-weight
            for yy in 0..<placement.height*4 {
                let y = (viewport+placement.y)*4+yy,sy = placement.sourceY*4+yy
                guard y>=0,y<832,sy>=0,sy<bitmap.height else { continue }
                for xx in 0..<1280 {
                    let sx = min(bitmap.width-1,max(0,first+xx))
                    let a = bitmap.pixels[sy*bitmap.width+sx]
                    var pixel = a
                    if weight != 0 {
                        let b = bitmap.pixels[sy*bitmap.width+min(bitmap.width-1,sx+1)]
                        let rb = (((a&0x00ff00ff)*other+(b&0x00ff00ff)*weight)>>8)&0x00ff00ff
                        let ga = (((((a>>8)&0x00ff00ff)*other+((b>>8)&0x00ff00ff)*weight)>>8)&0x00ff00ff)<<8
                        pixel = rb|ga
                    }
                    output[y*1280+xx] = Self.blend(pixel,over:output[y*1280+xx])
                    painted += 1
                }
            }
        }
        return painted
    }

    private func matches(_ source: [UInt32],rect: [Int],reference: String,referenceWidth: Int? = nil,fadeLevel: Int = 8) -> Bool {
        guard let bitmap = bitmaps[reference],rect[0]>=0,rect[1]>=0,rect[0]+rect[2]<=320,rect[1]+rect[3]<=208,
              bitmap.width == (referenceWidth ?? rect[2]),bitmap.height == rect[3] else { return false }
        var difference = 0, count = 0
        for y in stride(from:0,to:rect[3],by:5) { for x in stride(from:0,to:rect[2],by:5) {
            let a = source[(rect[1]+y)*320+rect[0]+x],b = LotusHDMenuFade.reference(bitmap.pixels[y*bitmap.width+x],level:fadeLevel)
            for shift in [0,8,16] { difference += abs(Int((a>>shift)&255)-Int((b>>shift)&255)); count += 1 }
        } }
        return count>0 && Double(difference)/Double(count)<max(1.5,12*Double(fadeLevel)/8)
    }
    private func scaled(_ path: String,width: Int,height: Int) -> Bitmap? {
        guard width>0,height>0,width<=2048,height<=1024 else { return nil }
        let key = "\(path):\(width):\(height)"
        resizeClock &+= 1
        if var cached = resized[key] {
            cached.used=resizeClock;resized[key]=cached;return cached.bitmap
        }
        let image: CGImage
        if let cached=sourceImages[path] { image=cached }
        else {
            guard let original=bitmaps[path]?.image else { return nil }
            image=original;sourceImages[path]=original
        }
        guard let bitmap = Bitmap(image,width:width,height:height) else { return nil }
        let bytes=width*height*4,limit=32*1024*1024
        if resizedBytes+bytes>limit {
            // Retain the working set instead of invalidating every car/sign
            // together. Reclaim a small batch of the least recently used sizes.
            let oldest=resized.sorted{$0.value.used<$1.value.used}
            for (oldKey,cached) in oldest {
                resized.removeValue(forKey:oldKey)
                resizedBytes-=cached.bitmap.width*cached.bitmap.height*4
                if resizedBytes+bytes<=limit*3/4 { break }
            }
        }
        resized[key] = CachedBitmap(bitmap:bitmap,used:resizeClock); resizedBytes += bytes
        return bitmap
    }
    private func paste(_ bitmap: Bitmap,x: Int,y: Int,output: inout [UInt32]) {
        guard x>=0,y>=0,x+bitmap.width<=1280,y+bitmap.height<=832 else { return }
        for row in 0..<bitmap.height { for column in 0..<bitmap.width {
            let i = (y+row)*1280+x+column
            output[i] = Self.blend(bitmap.pixels[row*bitmap.width+column],over:output[i])
        } }
    }
    private static func blend(_ foreground: UInt32,over background: UInt32) -> UInt32 {
        let alpha = Int(foreground>>24)
        if alpha == 255 { return foreground }
        if alpha == 0 { return background }
        var result: UInt32 = 0xff000000
        for shift in [0,8,16] {
            let value = min(255,Int((foreground>>shift)&255)+Int((background>>shift)&255)*(255-alpha)/255)
            result |= UInt32(value)<<shift
        }
        return result
    }
    private static func nearest4x(_ source: [UInt32]) -> [UInt32] {
        var result = [UInt32](repeating:0,count:1280*832)
        result.withUnsafeMutableBufferPointer { pixels in
            for y in 0..<208 {
                let row=pixels.baseAddress!.advanced(by:y*4*1280)
                for x in 0..<320 {
                    let pixel=source[y*320+x],column=x*4
                    row[column]=pixel;row[column+1]=pixel;row[column+2]=pixel;row[column+3]=pixel
                }
                for copy in 1..<4 { row.advanced(by:copy*1280).update(from:row,count:1280) }
            }
        }
        return result
    }
    private static func image(_ pixels: [UInt32],width: Int,height: Int) -> CGImage? {
        let data = pixels.withUnsafeBytes { Data($0) }
        guard let provider = CGDataProvider(data:data as CFData) else { return nil }
        return CGImage(width:width,height:height,bitsPerComponent:8,bitsPerPixel:32,bytesPerRow:width*4,
            space:CGColorSpaceCreateDeviceRGB(),bitmapInfo:CGBitmapInfo(rawValue:CGImageAlphaInfo.premultipliedLast.rawValue),
            provider:provider,decode:nil,shouldInterpolate:false,intent:.defaultIntent)
    }
}

// The original turntable consists of 24 shaded views. Trace their colour
// regions once at development time, then select the view from the completed
// display's bitplane indices. No timer, CPU read-ahead or machine writes.
final class LotusHDDimensionModel {
    private struct Document: Decodable {
        struct Layer: Decodable { let index: Int;let commands: [[CGFloat]] }
        struct Frame: Decodable { let hash: String;let layers: [Layer] }
        let version: Int;let width: Int;let height: Int
        let sourceRect: [Int];let targetRect: [Int];let background: [Int]
        let palette: [UInt32];let frames: [Frame]
    }
    private let document: Document
    private let paths: [[(Int,CGPath)]]
    private let frameIDs: [String:Int]
    private var cachedFrame: Int?
    private var cachedPanel: CGImage?
    private var cachedImage: CGImage?
    private(set) var displayedFrame: Int?

    init?(data: Data) {
        guard let d = try? JSONDecoder().decode(Document.self,from:data),d.version == 1,
              d.width == 176,d.height == 60,d.sourceRect == [48,128,176,60],
              d.targetRect.count == 4,d.targetRect[0]>=0,d.targetRect[1]>=0,
              d.targetRect[2]>0,d.targetRect[3]>0,d.targetRect[0]+d.targetRect[2]<=320,
              d.targetRect[1]+d.targetRect[3]<=208,d.background.count == 3,
              d.background.allSatisfy({(0...255).contains($0)}),d.palette.count == 32,
              d.frames.count == 24,Set(d.frames.map(\.hash)).count == 24,
              d.frames.allSatisfy({$0.hash.count == 64 && !$0.layers.isEmpty && $0.layers.allSatisfy({
                  (1..<32).contains($0.index) && !$0.commands.isEmpty && $0.commands.allSatisfy({$0.allSatisfy(\.isFinite)})
              })}) else { return nil }
        document = d
        paths = d.frames.map{$0.layers.map{($0.index,OriginalMenuFont.path($0.commands))}}
        frameIDs = Dictionary(uniqueKeysWithValues:d.frames.enumerated().map{($0.element.hash,$0.offset)})
    }

    func render(panel: CGImage,indices: [UInt8]) -> CGImage? {
        displayedFrame = nil
        guard indices.count == 320*208,panel.width == 2560,panel.height == 1664 else { return nil }
        var crop = Data();crop.reserveCapacity(176*60)
        for y in 128..<188 { crop.append(contentsOf:indices[y*320+48..<y*320+224]) }
        let hash = SHA256.hash(data:crop).map{String(format:"%02x",$0)}.joined()
        guard let frame = frameIDs[hash] else { return nil }
        displayedFrame = frame
        if cachedFrame == frame,cachedPanel === panel,let cachedImage { return cachedImage }
        guard let c = CGContext(data:nil,width:2560,height:1664,bitsPerComponent:8,bytesPerRow:2560*4,
            space:CGColorSpaceCreateDeviceRGB(),bitmapInfo:CGImageAlphaInfo.premultipliedLast.rawValue) else { return nil }
        c.draw(panel,in:CGRect(x:0,y:0,width:2560,height:1664))
        c.translateBy(x:0,y:1664);c.scaleBy(x:8,y:-8)
        c.setShouldAntialias(true)
        let t = document.targetRect,rect = CGRect(x:t[0],y:t[1],width:t[2],height:t[3])
        c.clip(to:rect)
        c.setFillColor(CGColor(colorSpace:CGColorSpaceCreateDeviceRGB(),
            components:document.background.map{CGFloat($0)/255}+[1])!)
        c.fill(rect)
        let scale = min(rect.width/176,rect.height/60)
        c.translateBy(x:rect.midX,y:rect.midY);c.scaleBy(x:scale,y:scale);c.translateBy(x:-88,y:-30)
        for (index,path) in paths[frame] {
            let colour = document.palette[index]
            c.setFillColor(CGColor(colorSpace:CGColorSpaceCreateDeviceRGB(),components:[
                CGFloat(colour&255)/255,CGFloat(colour>>8&255)/255,CGFloat(colour>>16&255)/255,1])!)
            c.addPath(path);c.fillPath(using:.evenOdd)
        }
        guard let image = c.makeImage() else { return nil }
        cachedFrame = frame;cachedPanel = panel;cachedImage = image
        return image
    }
}
