import Foundation
import CryptoKit

/// HD artwork, fonts and music stay in the bundle. Only original-derived
/// references, masks and model contours are prepared in Application Support.
nonisolated enum LotusResourceStore {
    static let generation = 2
    static var defaultAssetsURL: URL { LotusOriginalData.defaultURL.appendingPathComponent("Resources",isDirectory:true) }
    static func bundleAssetsURL(in bundle: URL) -> URL { bundle.appendingPathComponent("Contents/Resources/GameAssetts",isDirectory:true) }
    struct File: Codable, Sendable { let path: String;let size: Int;let sha256: String }
    struct Package: Codable, Sendable { let version: Int;let files: [File] }
    private struct Receipt: Codable {
        let generation: Int;let packageSHA256: String;let sourceSHA256: String;let files: [File]
    }
    enum Failure: Error, LocalizedError {
        case package, generation, cache
        var errorDescription: String? {
            switch self {
            case .package: return L10n.text("The bundled HD resources are missing or damaged. Please reinstall the app.")
            case .generation: return L10n.text("Local graphics could not be prepared from this game edition. Your existing game data was kept.")
            case .cache: return L10n.text("Local reference data needs to be prepared again.")
            }
        }
    }
    static func sourceHash(_ loaded: LotusOriginalData.Loaded) -> String {
        var hash = SHA256();hash.update(data:loaded.program)
        for id in loaded.disk.keys.sorted() { hash.update(data:Data([UInt8(id)]));hash.update(data:Data(loaded.disk[id]!)) }
        return hash.finalize().map { String(format:"%02x",$0) }.joined()
    }
    static func package(in bundle: URL) throws -> Package {
        let url = bundle.appendingPathComponent("Contents/Resources/HDResources.json")
        guard let bytes = try? Data(contentsOf:url), bytes.count<128*1024,
              let package = try? JSONDecoder().decode(Package.self,from:bytes),package.version==2,
              package.files.count<150,
              Set(package.files.map(\.path)).count==package.files.count,
              package.files.allSatisfy({safe($0.path) && $0.size>0 && $0.size<=32*1024*1024}) else { throw Failure.package }
        return package
    }
    private static func fingerprint(_ package: Package) throws -> String {
        let encoder=JSONEncoder();encoder.outputFormatting=[.sortedKeys]
        return LotusOriginalData.hash(try encoder.encode(package))
    }
    private static let generatedPaths: Set<String> = Set([
        "badge","front-car","spec-car","dimension-car","cockpit-angle","cockpit-front","garage",
        "panel-10","panel-20","panel-21","panel-22","panel-23","radio"
    ].map { "HDGraphics/References/"+$0+".png" } + ["hud","radio","dimensions","magnetic-fields"].map { "HDGraphics/Font/"+$0+".json" } + ["HDGraphics/manifest.json"])
    private static func safe(_ path: String) -> Bool {
        (path.hasPrefix("HDGraphics/") || path.hasPrefix("HDMusic/")) && !path.contains("\\") &&
            path.split(separator:"/",omittingEmptySubsequences:false).allSatisfy { !$0.isEmpty && $0 != "." && $0 != ".." }
    }
    private static func bytes(_ path: URL) throws -> Data {
        let values = try path.resourceValues(forKeys:[.isRegularFileKey,.isSymbolicLinkKey,.fileSizeKey])
        guard values.isRegularFile==true,values.isSymbolicLink != true,let size=values.fileSize,
              (1...32*1024*1024).contains(size) else { throw Failure.cache }
        let data = try Data(contentsOf:path,options:.mappedIfSafe)
        guard data.count==size else { throw Failure.cache };return data
    }
    static func validate(at game: URL, loaded: LotusOriginalData.Loaded, bundle: URL) throws {
        let package = try package(in:bundle),assets=game.appendingPathComponent("Resources")
        let directory = try assets.resourceValues(forKeys:[.isDirectoryKey,.isSymbolicLinkKey])
        guard directory.isDirectory==true,directory.isSymbolicLink != true else { throw Failure.cache }
        let receiptURL=assets.appendingPathComponent("resource-manifest.json")
        guard let data=try? bytes(receiptURL),data.count<128*1024,
              let receipt=try? JSONDecoder().decode(Receipt.self,from:data),receipt.generation==generation,
              receipt.packageSHA256 == (try fingerprint(package)),receipt.sourceSHA256==sourceHash(loaded),
              receipt.files.count==generatedPaths.count,
              Set(receipt.files.map(\.path))==generatedPaths else { throw Failure.cache }
        for item in receipt.files {
            let data=try bytes(assets.appendingPathComponent(item.path))
            guard data.count==item.size,LotusOriginalData.hash(data)==item.sha256 else { throw Failure.cache }
        }
        // Reject directory symlinks as well as symlink leaf files.
        let enumerator=FileManager.default.enumerator(at:assets,includingPropertiesForKeys:[.isSymbolicLinkKey])
        while let url=enumerator?.nextObject() as? URL {
            guard try url.resourceValues(forKeys:[.isSymbolicLinkKey]).isSymbolicLink != true else { throw Failure.cache }
        }
    }
    static func prepare(at game: URL, bundle: URL, cancellation: LotusOriginalData.Cancellation) throws {
        let info=try Data(contentsOf:bundle.appendingPathComponent("Contents/Info.plist"))
        guard let plist=try PropertyListSerialization.propertyList(from:info,format:nil) as? [String:Any],
              let name=plist["CFBundleExecutable"] as? String,!name.contains("/") else { throw Failure.package }
        do {
            _ = try LotusOriginalData.run(bundle.appendingPathComponent("Contents/MacOS/"+name),["--lotus-derive",game.path],
                                         work:game,cancellation:cancellation,timeout:300)
        } catch LotusOriginalData.Failure.cancelled { throw LotusOriginalData.Failure.cancelled }
        catch { throw Failure.generation }
        let loaded=try LotusOriginalData.load(at:game,catalogue:LotusOriginalData.catalogue(at:bundle.appendingPathComponent("Contents/Resources/OriginalData/profiles.json")))
        try validate(at:game,loaded:loaded,bundle:bundle)
    }
    @MainActor static func worker(game: URL, bundle: URL) throws {
        let fm=FileManager.default,package=try package(in:bundle)
        let catalogue=try LotusOriginalData.catalogue(at:bundle.appendingPathComponent("Contents/Resources/OriginalData/profiles.json"))
        let loaded=try LotusOriginalData.load(at:game,catalogue:catalogue)
        let bundledAssets=bundleAssetsURL(in:bundle)
        let assets=game.appendingPathComponent("Resources")
        guard !fm.fileExists(atPath:assets.path) else { throw Failure.cache }
        try fm.createDirectory(at:assets,withIntermediateDirectories:false)
        for item in package.files {
            let data=try bytes(bundledAssets.appendingPathComponent(item.path))
            guard data.count==item.size,LotusOriginalData.hash(data)==item.sha256 else { throw Failure.package }
        }
        try LotusDerivedResources.generate(loaded,assets:assets,bundledAssets:bundledAssets,helpers:bundle.appendingPathComponent("Contents/Helpers"))
        let files=try generatedPaths.sorted().map { path -> File in
            let data=try bytes(assets.appendingPathComponent(path))
            return File(path:path,size:data.count,sha256:LotusOriginalData.hash(data))
        }
        let receipt=Receipt(generation:generation,packageSHA256:try fingerprint(package),sourceSHA256:sourceHash(loaded),files:files)
        let encoder=JSONEncoder();encoder.outputFormatting=[.sortedKeys,.prettyPrinted]
        try encoder.encode(receipt).write(to:assets.appendingPathComponent("resource-manifest.json"))
        try validate(at:game,loaded:loaded,bundle:bundle)
    }
}
