import Foundation
import CryptoKit
import Darwin

/// Imports data only. Amiga programs are decoded/relocated, never executed.
nonisolated enum LotusOriginalData {
    static var defaultURL: URL {
        FileManager.default.urls(for: .applicationSupportDirectory, in: .userDomainMask)[0]
            .appendingPathComponent("Lotus1", isDirectory: true)
    }
    struct Signature: Codable, Sendable {
        let name: String
        let size: Int
        let sha256: String
    }
    struct Profile: Codable, Sendable {
        let id: String
        let fingerprints: [Signature]
        let requiredFiles: [String]
        let programSHA256: String
    }
    struct Catalogue: Codable, Sendable {
        let version: Int
        let profiles: [Profile]
    }
    struct Receipt: Codable, Sendable {
        let version: Int
        let profile: String
        let sourceName: String
        let importedAt: Date
        let ownershipConfirmed: Bool
        let files: [Signature]
    }
    struct Loaded: Sendable {
        let program: Data
        let disk: [Int: [UInt8]]
    }
    final class Cancellation: @unchecked Sendable {
        private let lock = NSLock()
        private var cancelled = false
        func cancel() { lock.lock(); cancelled = true; lock.unlock() }
        func check() throws {
            lock.lock(); let value = cancelled; lock.unlock()
            if value { throw Failure.cancelled }
        }
    }
    enum Failure: Error, LocalizedError {
        case cancelled, ownership, invalidADF, wrongGame, unsupported, trackloader, incomplete, damaged, busy, helper, extraction
        var errorDescription: String? {
            switch self {
            case .cancelled: return L10n.text("Import cancelled. You can select an ADF again.")
            case .ownership: return L10n.text("Please confirm that you own the original Amiga game.")
            case .invalidADF: return L10n.text("This is not a supported Amiga ADF disk image. Select an unpacked .adf file.")
            case .wrongGame: return L10n.text("This ADF could not be identified as Lotus Esprit Turbo Challenge (Lotus 1). Its game files do not match a known edition.")
            case .unsupported: return L10n.text("Lotus 1 was recognized, but this program edition is not supported yet. Please try another ADF of your original game.")
            case .trackloader: return L10n.text("This Lotus 1 ADF uses a custom trackloader instead of an Amiga filesystem. This edition is not supported yet. Please select a DOS/AmigaDOS edition of your original game.")
            case .incomplete: return L10n.text("Lotus 1 was recognized, but required game files are missing or damaged. Please select a complete ADF.")
            case .damaged: return L10n.text("The installed original game data is missing or damaged. Please import your ADF again.")
            case .busy: return L10n.text("Another Lotus window is importing game data. Please wait and try again.")
            case .helper: return L10n.text("The bundled ADF extractor is missing or damaged. Please reinstall the app.")
            case .extraction: return L10n.text("The ADF could not be read completely. Please select an undamaged disk image.")
            }
        }
    }
    static func hash(_ data: Data) -> String { SHA256.hash(data: data).map { String(format: "%02x", $0) }.joined() }
    static func catalogue(at url: URL) throws -> Catalogue {
        let value = try JSONDecoder().decode(Catalogue.self, from: Data(contentsOf: url))
        guard value.version == 1, !value.profiles.isEmpty,
              value.profiles.allSatisfy({ (5...8).contains($0.fingerprints.count) &&
                  Set($0.fingerprints.map(\.name)).count == $0.fingerprints.count &&
                  $0.requiredFiles.count == 95 && Set($0.requiredFiles).count == 95 &&
                  Set($0.fingerprints.map(\.name)).isSubset(of: Set($0.requiredFiles)) &&
                  $0.requiredFiles.allSatisfy(validDiskName) &&
                  $0.fingerprints.allSatisfy({ validDiskName($0.name) && $0.size > 0 && $0.sha256.count == 64 }) }) else { throw Failure.helper }
        return value
    }
    private static func validDiskName(_ name: String) -> Bool {
        guard name.count == 10, name.hasPrefix("file"), name.hasSuffix(".scr") else { return false }
        return UInt8(name.dropFirst(4).prefix(2), radix: 16) != nil && name == name.lowercased()
    }
    /// Some DOS editions rename the unchanged assets. Only this exact alias
    /// pattern is accepted; names and disk labels never establish identity.
    private static func diskName(_ name: String) -> String? {
        let leaf = (name as NSString).lastPathComponent.lowercased()
        if validDiskName(leaf) { return leaf }
        if leaf.count == 10, leaf.hasPrefix("genesis_"), let id = UInt8(leaf.suffix(2), radix: 16) {
            return String(format: "file%02x.scr", id)
        }
        return nil
    }

    /// Recognition only, never an alternate installation path. These Angels
    /// disks have a raw size/offset directory at sector 19, not AmigaDOS headers.
    /// Require three actual game-file hashes before explaining the limitation.
    private static func isLotusTrackloader(_ image: Data, catalogue: Catalogue) -> Bool {
        guard image.count == 901120 else { return false }
        let bytes = Array(image), names = ["file00.scr", "file20.scr", "file50.scr"]
        return catalogue.profiles.contains { profile in
            names.allSatisfy { name in
                guard let signature = profile.fingerprints.first(where: { $0.name == name }),
                      let id = Int(name.dropFirst(4).prefix(2), radix: 16) else { return false }
                let entry = 0x2600+id*8, size = integer(bytes, entry), offset = integer(bytes, entry+4)
                guard size == signature.size, offset >= 0x2c00, size <= image.count-offset else { return false }
                return hash(image.subdata(in: offset..<offset+size)) == signature.sha256
            }
        }
    }
    private static func checkedData(_ url: URL, maximum: Int) throws -> Data {
        let info = try url.resourceValues(forKeys: [.isRegularFileKey, .isSymbolicLinkKey, .fileSizeKey])
        guard info.isRegularFile == true, info.isSymbolicLink != true,
              let size = info.fileSize, size > 0, size <= maximum else { throw Failure.damaged }
        let data = try Data(contentsOf: url)
        guard data.count == size else { throw Failure.damaged }
        return data
    }
    /// Every cached file is checked, so a partial or edited installation reopens setup.
    static func load(at folder: URL, catalogue: Catalogue) throws -> Loaded {
        let info = try folder.resourceValues(forKeys: [.isDirectoryKey, .isSymbolicLinkKey])
        guard info.isDirectory == true, info.isSymbolicLink != true else { throw Failure.damaged }
        let receipt = try JSONDecoder().decode(Receipt.self, from: checkedData(folder.appendingPathComponent("import-manifest.json"), maximum: 128*1024))
        guard receipt.version == 1, receipt.ownershipConfirmed,
              let profile = catalogue.profiles.first(where: { $0.id == receipt.profile }),
              receipt.files.count == 96, Set(receipt.files.map(\.name)).count == 96,
              Set(receipt.files.map(\.name)) == Set(["program.bin"] + profile.requiredFiles.map { "Disk/"+$0 }) else { throw Failure.damaged }
        let diskInfo = try folder.appendingPathComponent("Disk").resourceValues(forKeys: [.isDirectoryKey, .isSymbolicLinkKey])
        guard diskInfo.isDirectory == true, diskInfo.isSymbolicLink != true else { throw Failure.damaged }
        var disk = [Int: [UInt8]](), program = Data()
        for file in receipt.files {
            let data = try checkedData(folder.appendingPathComponent(file.name), maximum: 0x100000)
            guard data.count == file.size, hash(data) == file.sha256 else { throw Failure.damaged }
            if file.name == "program.bin" { program = data }
            else if let id = Int(file.name.dropFirst(9).prefix(2), radix: 16) { disk[id] = Array(data) }
        }
        guard program.count == 0x100000, hash(program) == profile.programSHA256, disk.count == 95 else { throw Failure.damaged }
        for file in profile.fingerprints {
            guard let id = Int(file.name.dropFirst(4).prefix(2), radix: 16), let bytes = disk[id],
                  bytes.count == file.size, hash(Data(bytes)) == file.sha256 else { throw Failure.damaged }
        }
        return Loaded(program: program, disk: disk)
    }
    private struct Listing: Decodable {
        let lsarContents: [Entry]
    }
    private struct Entry: Decodable {
        let XADFileName: String
        let XADIndex: Int
        let XADFileSize: Int?
        let XADIsDirectory: Bool?
        let XADIsLink: Bool?
        let XADIsSymbolicLink: Bool?
        let LibXADFileInfo: String?
    }
    private static func safePath(_ name: String) -> Bool {
        !name.isEmpty && name.utf8.count <= 512 && !name.hasPrefix("/") &&
            !name.contains("\\") && !name.contains(":") && !name.contains("\0") &&
            name.split(separator: "/", omittingEmptySubsequences: false).allSatisfy { !$0.isEmpty && $0 != "." && $0 != ".." }
    }
    static func run(_ executable: URL, _ arguments: [String], work: URL, cancellation: Cancellation, timeout: TimeInterval = 30) throws -> Data {
        guard FileManager.default.isExecutableFile(atPath: executable.path) else { throw Failure.helper }
        try cancellation.check()
        let log = work.appendingPathComponent("process-"+UUID().uuidString)
        FileManager.default.createFile(atPath: log.path, contents: nil)
        let output = try FileHandle(forWritingTo: log)
        defer { try? output.close(); try? FileManager.default.removeItem(at: log) }
        let process = Process()
        process.executableURL = executable; process.arguments = arguments
        process.currentDirectoryURL = work
        process.standardInput = FileHandle.nullDevice
        process.standardOutput = output; process.standardError = FileHandle.nullDevice
        do { try process.run() } catch { throw Failure.helper }
        let deadline = ProcessInfo.processInfo.systemUptime + timeout
        do {
            while process.isRunning {
                try cancellation.check()
                guard ProcessInfo.processInfo.systemUptime < deadline,
                      ((try? log.resourceValues(forKeys: [.fileSizeKey]).fileSize) ?? 0) < 4*1024*1024 else { throw Failure.extraction }
                Thread.sleep(forTimeInterval: 0.02)
            }
        } catch {
            if process.isRunning { process.terminate() }
            let grace = ProcessInfo.processInfo.systemUptime + 0.5
            while process.isRunning && ProcessInfo.processInfo.systemUptime < grace { Thread.sleep(forTimeInterval: 0.01) }
            if process.isRunning { kill(process.processIdentifier, SIGKILL) }
            process.waitUntilExit()
            throw error
        }
        process.waitUntilExit()
        try cancellation.check()
        guard process.terminationStatus == 0 else { throw Failure.extraction }
        return try Data(contentsOf: log)
    }
    /// All work happens in a private staging directory; an installed game is
    /// replaced in one filesystem operation only after full validation.
    static func install(adf: URL, destination: URL, helpers: URL, catalogue: Catalogue,
                        ownershipConfirmed: Bool, cancellation: Cancellation = Cancellation(),
                        prepare: (@Sendable (URL) throws -> Void)? = nil) throws {
        guard ownershipConfirmed else { throw Failure.ownership }
        let fm = FileManager.default
        guard adf.pathExtension.lowercased() == "adf" else { throw Failure.invalidADF }
        let image: Data
        do { image = try checkedData(adf, maximum: 4*1024*1024) } catch { throw Failure.invalidADF }
        guard image.count >= 64*1024, image.count%512 == 0, image.prefix(3) == Data("DOS".utf8), image[3] <= 5 else { throw Failure.invalidADF }
        let parent = destination.deletingLastPathComponent()
        try fm.createDirectory(at: parent, withIntermediateDirectories: true)
        let lockPath = parent.appendingPathComponent(".Lotus1-import.lock").path
        let fd = open(lockPath, O_CREAT|O_RDWR|O_NOFOLLOW, S_IRUSR|S_IWUSR)
        guard fd >= 0 else { throw Failure.busy }
        defer { flock(fd, LOCK_UN); close(fd) }
        guard flock(fd, LOCK_EX|LOCK_NB) == 0 else { throw Failure.busy }
        try cancellation.check()
        let stage = parent.appendingPathComponent(".Lotus1-import-"+UUID().uuidString, isDirectory: true)
        try fm.createDirectory(at: stage, withIntermediateDirectories: false, attributes: [.posixPermissions: 0o700])
        defer { try? fm.removeItem(at: stage) }
        // Snapshot the selected ADF to avoid replacing it between listing/extraction.
        let snapshot = stage.appendingPathComponent("source.adf")
        try image.write(to: snapshot, options: .atomic)
        let listingData: Data
        do { listingData = try run(helpers.appendingPathComponent("lsar"), ["-j", snapshot.path], work: stage, cancellation: cancellation) }
        catch Failure.extraction {
            if isLotusTrackloader(image, catalogue: catalogue) { throw Failure.trackloader }
            throw Failure.extraction
        }
        guard let listing = try? JSONDecoder().decode(Listing.self, from: listingData), listing.lsarContents.count <= 512,
              listing.lsarContents.allSatisfy({ safePath($0.XADFileName) && $0.XADIsLink != true && $0.XADIsSymbolicLink != true }),
              Set(listing.lsarContents.map(\.XADIndex)).count == listing.lsarContents.count,
              listing.lsarContents.allSatisfy({ $0.XADIndex >= 0 }) else { throw Failure.extraction }
        var byPath = [String: Entry]()
        for entry in listing.lsarContents where entry.XADIsDirectory != true {
            let key = entry.XADFileName.lowercased()
            if let previous = byPath[key] {
                // libxad can report the very same linked-list node twice on
                // ADFs. Accept that exact duplicate, never two distinct files
                // that merely happen to have the same (case-folded) name.
                guard previous.XADFileName == entry.XADFileName,
                      previous.XADFileSize == entry.XADFileSize,
                      let identity = previous.LibXADFileInfo, identity == entry.LibXADFileInfo else { throw Failure.extraction }
            } else { byPath[key] = entry }
        }
        let entries = Array(byPath.values)
        let required = Set(catalogue.profiles.flatMap(\.requiredFiles))
        // A full set must live in one directory, never assembled across disks/editions.
        let grouped = Dictionary(grouping: entries) { ($0.XADFileName as NSString).deletingLastPathComponent.lowercased() }
        var recognized = [(Profile, [String: Entry])]()
        let extracted = stage.appendingPathComponent("extracted", isDirectory: true)
        try fm.createDirectory(at: extracted, withIntermediateDirectories: false)
        let selected = entries.filter {
            let leaf = diskName($0.XADFileName) ?? ""
            let directory = ($0.XADFileName as NSString).deletingLastPathComponent.lowercased()
            return required.contains(leaf) || (directory != "c" && directory != "s" && ($0.XADFileSize ?? 0) >= 12 && ($0.XADFileSize ?? 0) <= 512*1024)
        }
        guard selected.count <= 160, selected.allSatisfy({ ($0.XADFileSize ?? 0) > 0 && ($0.XADFileSize ?? Int.max) <= 0x100000 }),
              selected.reduce(0, { $0+($1.XADFileSize ?? 0) }) <= 8*1024*1024 else { throw Failure.extraction }
        guard !selected.isEmpty else { throw Failure.wrongGame }
        _ = try run(helpers.appendingPathComponent("unar"), ["-q", "-D", "-f", "-nr", "-k", "skip", "-o", extracted.path, "-i", snapshot.path]+selected.map { String($0.XADIndex) }, work: stage, cancellation: cancellation)
        for (_, group) in grouped {
            var files = [String: Entry]()
            for entry in group {
                let leaf = diskName(entry.XADFileName) ?? ""
                if required.contains(leaf) {
                    guard files[leaf] == nil else { throw Failure.extraction }
                    files[leaf] = entry
                }
            }
            for profile in catalogue.profiles {
                let matches = profile.fingerprints.allSatisfy { signature in
                    guard let entry = files[signature.name], entry.XADFileSize == signature.size,
                          let data = try? checkedData(extracted.appendingPathComponent(entry.XADFileName), maximum: 0x100000) else { return false }
                    return hash(data) == signature.sha256
                }
                if matches { recognized.append((profile, files)) }
            }
        }
        guard !recognized.isEmpty else { throw Failure.wrongGame }
        // Prefer a complete profile if a disk contains more than one directory.
        guard let (profile, files) = recognized.first(where: { Set($0.0.requiredFiles).isSubset(of: Set($0.1.keys)) }) else { throw Failure.incomplete }
        var program: Data?
        for entry in selected where !required.contains(diskName(entry.XADFileName) ?? "") {
            try cancellation.check()
            guard let source = try? checkedData(extracted.appendingPathComponent(entry.XADFileName), maximum: 512*1024),
                  let memory = try? programMemory(from: source), hash(memory) == profile.programSHA256 else { continue }
            program = memory; break
        }
        guard let program else { throw Failure.unsupported }
        let ready = stage.appendingPathComponent("ready", isDirectory: true)
        let disk = ready.appendingPathComponent("Disk", isDirectory: true)
        try fm.createDirectory(at: disk, withIntermediateDirectories: true)
        var signatures = [Signature(name: "program.bin", size: program.count, sha256: hash(program))]
        try program.write(to: ready.appendingPathComponent("program.bin"))
        for name in profile.requiredFiles {
            try cancellation.check()
            guard let entry = files[name] else { throw Failure.incomplete }
            let data = try checkedData(extracted.appendingPathComponent(entry.XADFileName), maximum: 0x100000)
            guard data.count == entry.XADFileSize else { throw Failure.incomplete }
            try data.write(to: disk.appendingPathComponent(name))
            signatures.append(Signature(name: "Disk/"+name, size: data.count, sha256: hash(data)))
        }
        let receipt = Receipt(version: 1, profile: profile.id, sourceName: adf.lastPathComponent,
                              importedAt: Date(), ownershipConfirmed: true, files: signatures)
        let encoder = JSONEncoder(); encoder.outputFormatting = [.prettyPrinted, .sortedKeys]
        try encoder.encode(receipt).write(to: ready.appendingPathComponent("import-manifest.json"))
        _ = try load(at: ready, catalogue: catalogue)
        try prepare?(ready)
        try cancellation.check()
        if fm.fileExists(atPath: destination.path) {
            guard renameatx_np(AT_FDCWD, ready.path, AT_FDCWD, destination.path, UInt32(RENAME_SWAP)) == 0 else {
                throw NSError(domain: NSPOSIXErrorDomain, code: Int(errno))
            }
        } else {
            guard rename(ready.path, destination.path) == 0 else { throw NSError(domain: NSPOSIXErrorDomain, code: Int(errno)) }
        }
    }

    /// Upgrade an existing verified import without asking for its ADF again.
    static func prepareInstalled(at destination: URL, catalogue: Catalogue, cancellation: Cancellation,
                                 prepare: @Sendable (URL) throws -> Void) throws {
        let fm=FileManager.default,parent=destination.deletingLastPathComponent()
        let fd=open(parent.appendingPathComponent(".Lotus1-import.lock").path,O_CREAT|O_RDWR|O_NOFOLLOW,S_IRUSR|S_IWUSR)
        guard fd>=0 else { throw Failure.busy }
        defer { flock(fd,LOCK_UN);close(fd) }
        guard flock(fd,LOCK_EX|LOCK_NB)==0 else { throw Failure.busy }
        _ = try load(at:destination,catalogue:catalogue)
        let stage=parent.appendingPathComponent(".Lotus1-import-"+UUID().uuidString)
        try fm.createDirectory(at:stage,withIntermediateDirectories:false,attributes:[.posixPermissions:0o700])
        defer { try? fm.removeItem(at:stage) }
        for name in ["program.bin","Disk","import-manifest.json"] {
            try cancellation.check();try fm.copyItem(at:destination.appendingPathComponent(name),to:stage.appendingPathComponent(name))
        }
        try prepare(stage);try cancellation.check()
        guard renameatx_np(AT_FDCWD,stage.path,AT_FDCWD,destination.path,UInt32(RENAME_SWAP))==0 else {
            throw NSError(domain:NSPOSIXErrorDomain,code:Int(errno))
        }
    }

    static func programMemory(from source: Data) throws -> Data {
        var bytes = Array(source)
        if bytes.count >= 0x240, bytes[0x228..<0x22c].allSatisfy({ (1...16).contains($0) }),
           integer(bytes, 0x234) == (bytes.count-0x23c)/4, (bytes.count-0x23c)%4 == 0 {
            bytes = try unpackPP20(Array("PP20".utf8)+Array(bytes[0x228..<0x22c])+Array(bytes[0x238..<bytes.count-4]))
        } else if bytes.starts(with: Array("PP20".utf8)) { bytes = try unpackPP20(bytes) }
        else if bytes.count >= 0x31c, integer(bytes, 0) == 1011, integer(bytes, 8) == 9,
                integer(bytes, 0xf8) == 1001, integer(bytes, 0xfc) == 128,
                integer(bytes, 0x100) == 0x7a005246, integer(bytes, 0x304) == 1002 {
            bytes = try unpackImploderExecutable(bytes)
        }
        return try normalizeProgram(relocateHunks(bytes))
    }
    private static func integer(_ bytes: [UInt8], _ offset: Int) -> Int {
        bytes[offset..<offset+4].reduce(0) { ($0<<8)|Int($1) }
    }
    /// Convert known filename/AGA adaptations to the address layout used by the
    /// translated engine. A full decoded-program hash gates every patch; an
    /// unknown or modified executable can never be "repaired" into acceptance.
    private static func normalizeProgram(_ source: Data) throws -> Data {
        let fingerprint = hash(source)
        let genesis = "28a78fe0b068cf7769e82994ae9e189ae2bf49b18934c1ab6da5b88ec0c01e26"
        let aga = "5f84fe975fb1b56bcc4ee7f44ab5e90c7f6e22761bc6db27fb973434802a1add"
        guard fingerprint == genesis || fingerprint == aga else { return source }
        var memory = source
        var edits: [(Int, [UInt8])] = [
            (0x14171, [0x9e]), (0x14179, [0x9f]), (0x1b79a, Array("file00.scr".utf8))
        ]
        if fingerprint == aga {
            edits += [
                (0x101ca, [0x13,0xfc,0,1,0,0xbf,0xee,1]),
                (0x10434, [0x30,0x3c,0,0x32,0x51,0xc8,0xff,0xfe]),
                (0x10688, [0x30,0x3c,0,0x50,0x51,0xc8,0xff,0xfe]),
                (0x1069e, [0x30,0x3c,0,0x32,0x51,0xc8,0xff,0xfe]),
                (0x106da, [0x30,0x3c,0,0x32,0x51,0xc8,0xff,0xfe]),
                (0x10706, [0x30,0x3c,0,0x32,0x51,0xc8,0xff,0xfe]),
                (0x10c20, [0x30,0x1f,0x4e,0x73]), (0x1417f, [0x96]), (0x151bd, [2]),
                (0x161e4, [0x30,0x3c,0,0x32,0x51,0xc8,0xff,0xfe]),
                (0x16200, [0x30,0x3c,0,0x32,0x51,0xc8,0xff,0xfe]),
                (0x163dc, [0x3d,0x7c,0,0x95,0,0x58]), (0x16410, [0x3d,0x7c,0,0x95,0,0x58]),
                (0x1b796, Array("df0".utf8))
            ]
        }
        for (address, bytes) in edits { memory.replaceSubrange(address..<address+bytes.count, with: bytes) }
        guard hash(memory) == "6424e66f5e5af7d7bfec72bff7dfc8501e748e13020aab5141a4e870cbbd559b" else { throw Failure.unsupported }
        return memory
    }

    /// Decode the streaming File Imploder executable used by the Genesis AGA
    /// edition. This implements its data format, without running its 68000 stub.
    /// The 132-byte ring in the stub is represented by a bounded linear stream.
    private static func unpackImploderExecutable(_ bytes: [UInt8]) throws -> [UInt8] {
        guard integer(bytes, 4) == 0, integer(bytes, 12) == 0, integer(bytes, 16) == 8,
              integer(bytes, 0x38) == 1001, integer(bytes, 0x3c) == 30 else { throw Failure.unsupported }
        let packedSize = integer(bytes, 0x308)*4, packedEnd = 0x30c+packedSize
        guard packedSize > 0, packedEnd+16 == bytes.count,
              integer(bytes, packedEnd) == 1010, integer(bytes, packedEnd+4) == 1003,
              integer(bytes, packedEnd+8) == 33, integer(bytes, packedEnd+12) == 1010 else { throw Failure.unsupported }
        var sizes = [Int]()
        for index in 0..<5 {
            let size = (integer(bytes, 0x18+index*4)&0x3fffffff)*4, bss = 0xbc+index*12
            guard size > 0, size <= 0x100000, integer(bytes, bss) == 1003,
                  integer(bytes, bss+4)*4 == size, integer(bytes, bss+8) == 1010 else { throw Failure.unsupported }
            sizes.append(size)
        }
        var cursor = 0x30c+integer(bytes, 0x108), register = Int(bytes[0x2e8])
        var literals = Int(bytes[0x2e6])*256+Int(bytes[0x2e7]), cycles = integer(bytes, 0x2ea)
        guard cursor >= 0x30c, cursor <= packedEnd, register != 0,
              bytes[0x2e9] == 0, (1...0x10000).contains(cycles) else { throw Failure.unsupported }
        func byte() throws -> UInt8 {
            guard cursor > 0x30c else { throw Failure.unsupported }
            cursor -= 1; return bytes[cursor]
        }
        func bit() throws -> Int {
            var carry = register>>7; register = (register<<1)&255
            if register == 0 { register = Int(try byte()); carry = register>>7; register = ((register<<1)|1)&255 }
            return carry
        }
        func bits(_ count: Int) throws -> Int {
            var value = 0
            for _ in 0..<count { value = value*2 + (try bit()) }
            return value
        }
        func selector() throws -> Int { try bit() == 0 ? 0 : 1+bit() }
        let literalWidths = [[1,1,1,1], [2,3,3,4], [4,5,7,14]]
        var stream = [UInt8](); stream.reserveCapacity(65536)
        while true {
            guard literals <= 0x100000-stream.count else { throw Failure.unsupported }
            for _ in 0..<literals { stream.append(try byte()) }
            cycles -= 1; if cycles == 0 { break }
            var category = 0
            while category < 5 { if try bit() == 0 { break }; category += 1 }
            let column = min(category, 3)
            var count = category+2
            if count == 6 { count += try bits(3) } else if count == 7 { count = Int(try byte()) }
            let literalMode = try selector()
            literals = [0,2,[6,10,10,18][column]][literalMode] + (try bits(literalWidths[literalMode][column]))
            let distanceMode = try selector()
            let distance = 1+[0,32,64][distanceMode]+(try bits([5,5,6][distanceMode]))
            guard count > 0, count <= 0x100000-stream.count, distance <= stream.count else { throw Failure.unsupported }
            for _ in 0..<count { stream.append(stream[stream.count-distance]) }
        }
        guard cursor == 0x30c else { throw Failure.unsupported }
        // The decoded stream contains hunk data and delta-coded relocations.
        var position = 0, hunk = 0
        var data = [[UInt8]](repeating: [], count: 5), present = [Bool](repeating: false, count: 5)
        var relocations = [[(Int, Int)]](repeating: [], count: 5)
        func read() throws -> Int {
            guard position+4 <= stream.count else { throw Failure.unsupported }
            defer { position += 4 }; return integer(stream, position)
        }
        while position < stream.count {
            let tag = try read()
            if tag == 0x80000000 { hunk += 1; guard hunk <= 5 else { throw Failure.unsupported }; continue }
            guard hunk < 5 else { throw Failure.unsupported }
            if tag == 0x40000000 {
                while true {
                    let count = try read(); if count == 0 { break }
                    let target = try read()
                    guard target < 5, count <= (stream.count-position)/4 else { throw Failure.unsupported }
                    var offset = 0
                    for _ in 0..<count {
                        offset += try read()
                        guard offset%2 == 0, offset+4 <= sizes[hunk] else { throw Failure.unsupported }
                        relocations[hunk].append((target, offset))
                    }
                }
            } else {
                guard tag > 0, tag <= sizes[hunk]/4, !present[hunk], tag*4 <= stream.count-position else { throw Failure.unsupported }
                data[hunk] = Array(stream[position..<position+tag*4]); position += tag*4; present[hunk] = true
            }
        }
        guard hunk == 5, present[0] else { throw Failure.unsupported }
        var output = [UInt8]()
        func put(_ value: Int) { for shift in stride(from: 24, through: 0, by: -8) { output.append(UInt8(truncatingIfNeeded: value>>shift)) } }
        for value in [1011,0,5,0,4]+sizes.map({ $0/4 }) { put(value) }
        for index in 0..<5 {
            put(present[index] ? 1002 : 1003); put(present[index] ? data[index].count/4 : sizes[index]/4)
            output += data[index]
            if !relocations[index].isEmpty {
                put(1004)
                for target in 0..<5 {
                    let offsets = relocations[index].filter { $0.0 == target }.map(\.1)
                    if !offsets.isEmpty { put(offsets.count); put(target); for offset in offsets { put(offset) } }
                }
                put(0)
            }
            put(1010)
        }
        return output
    }
    static func unpackPP20(_ bytes: [UInt8]) throws -> [UInt8] {
        guard bytes.count >= 12, bytes.starts(with: Array("PP20".utf8)) || integer(bytes, 0) == bytes.count else { throw Failure.unsupported }
        let widths = bytes[4..<8].map(Int.init)
        let size = (Int(bytes[bytes.count-4])<<16)|(Int(bytes[bytes.count-3])<<8)|Int(bytes[bytes.count-2])
        let skip = Int(bytes.last!)
        guard widths.allSatisfy({ (1...16).contains($0) }), (1...0x100000).contains(size), skip <= 31 else { throw Failure.unsupported }
        var source = bytes.count-5, current = 0, available = 0
        func bits(_ count: Int) throws -> Int {
            var result = 0
            for _ in 0..<count {
                if available == 0 {
                    guard source >= 8 else { throw Failure.unsupported }
                    current = Int(bytes[source]); source -= 1; available = 8
                }
                result = result*2+(current&1); current >>= 1; available -= 1
            }
            return result
        }
        _ = try bits(skip)
        var output = [UInt8](repeating: 0, count: size), position = size
        while position > 0 {
            if try bits(1) == 0 {
                var count = 1
                while true {
                    let extra = try bits(2); count += extra
                    guard count <= position else { throw Failure.unsupported }
                    if extra != 3 { break }
                }
                for _ in 0..<count { position -= 1; output[position] = UInt8(try bits(8)) }
            }
            if position == 0 { break }
            let category = try bits(2)
            var count = category+2, width = widths[category]
            if category == 3, try bits(1) == 0 { width = 7 }
            let offset = try bits(width)
            if category == 3 {
                while true {
                    let extra = try bits(3); count += extra
                    guard count <= position else { throw Failure.unsupported }
                    if extra != 7 { break }
                }
            }
            guard count <= position else { throw Failure.unsupported }
            for _ in 0..<count {
                position -= 1
                guard position+offset+1 < size else { throw Failure.unsupported }
                output[position] = output[position+offset+1]
            }
        }
        return output
    }
    private static func relocateHunks(_ bytes: [UInt8]) throws -> Data {
        var cursor = 0
        func take(_ count: Int) throws -> [UInt8] {
            guard count >= 0, count <= bytes.count-cursor else { throw Failure.unsupported }
            defer { cursor += count }; return Array(bytes[cursor..<cursor+count])
        }
        func read() throws -> Int { integer(try take(4), 0) }
        guard try read() == 1011 else { throw Failure.unsupported }
        while true { let length = try read(); if length == 0 { break }; _ = try take(length*4) }
        let table = try read(), first = try read(), last = try read()
        guard first <= last, table > last, last-first < 256 else { throw Failure.unsupported }
        var allocations = [Int]()
        for _ in first...last {
            let value = try read(), size = (value&0x3fffffff)*4
            guard value&0xc0000000 != 0xc0000000, size <= 0x100000 else { throw Failure.unsupported }
            allocations.append(size)
        }
        struct Hunk { var data: [UInt8]; var relocations: [(Int, Int)]; let address: Int }
        var hunks = [Hunk](), active: Int?, address = 0x10000
        while cursor < bytes.count {
            let tag = try read()&0x3fffffff
            switch tag {
            case 1001, 1002, 1003:
                guard active == nil, hunks.count < allocations.count else { throw Failure.unsupported }
                let stored = (try read()&0x3fffffff)*4, size = allocations[hunks.count]
                guard stored <= size, address+size <= 0x100000 else { throw Failure.unsupported }
                var data = [UInt8](repeating: 0, count: size)
                if tag != 1003 { data.replaceSubrange(0..<stored, with: try take(stored)) }
                active = hunks.count; hunks.append(Hunk(data: data, relocations: [], address: address))
                address = (address+size+255) & ~255
            case 1004:
                guard let index = active else { throw Failure.unsupported }
                while true {
                    let count = try read(); if count == 0 { break }
                    let target = try read()
                    guard (first...last).contains(target), count <= bytes.count/4 else { throw Failure.unsupported }
                    for _ in 0..<count {
                        let offset = try read()
                        guard offset%2 == 0, offset+4 <= hunks[index].data.count else { throw Failure.unsupported }
                        hunks[index].relocations.append((target-first, offset))
                    }
                }
            case 1008:
                guard active != nil else { throw Failure.unsupported }
                while true { let count = try read(); if count == 0 { break }; _ = try take(count*4); _ = try read() }
            case 1000, 1009: _ = try take(read()*4)
            case 1010: guard active != nil else { throw Failure.unsupported }; active = nil
            default: throw Failure.unsupported
            }
        }
        guard active == nil, hunks.count == allocations.count else { throw Failure.unsupported }
        var memory = Data(repeating: 0, count: 0x100000)
        for hunk in hunks {
            var data = hunk.data
            for (target, offset) in hunk.relocations {
                let value = UInt32(truncatingIfNeeded: integer(data, offset)) &+ UInt32(hunks[target].address)
                for byte in 0..<4 { data[offset+byte] = UInt8(truncatingIfNeeded: value >> ((3-byte)*8)) }
            }
            memory.replaceSubrange(hunk.address..<hunk.address+data.count, with: data)
        }
        return memory
    }
}
