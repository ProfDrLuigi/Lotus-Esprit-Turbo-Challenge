import Foundation
import CryptoKit

// The game strips the 31 MOD sample headers and keeps their fields in its
// original instrument table. Patterns and initialized samples stay unchanged.
@MainActor enum LotusMusicData {
    // Load a toolbar selection through the original loader on an isolated RAM
    // copy: its decompression workspace overlaps the live race graphics.
    static func playbackModule(song: Int, from source: LotusMachine) throws -> Data {
        guard (0...4).contains(song), source.disk[0xe8] != nil else { throw CocoaError(.fileReadCorruptFile) }
        let game = LotusMachine(program: Data(), disk: source.disk)
        game.isAudioReplica = true; game.ram = source.ram
        game.r[14] = 0xdff000
        for address in [0x13cea,0x11eb2] {
            game.r[0] = UInt32(song)
            game.r[15] = 0xf0000; game.push(0xeffffc); game.pc = address
            var steps = 0
            while game.pc != 0xeffffc && game.fault == nil && steps < 2_000_000 {
                if !game.nativeCall() { game.stepCompiled() }
                steps += 1
            }
            guard game.pc == 0xeffffc, game.fault == nil else { throw CocoaError(.fileReadCorruptFile) }
        }
        return try playbackModule(from: game)
    }

    // The supplied release's second radio tune has a low guitar voice compared
    // with the user's WinUAE reference. This specific +8-semitone correction was
    // measured against that recording and approved in a separate listening test.
    // Keep the raw reconstruction and game RAM intact; change only decoder input.
    static func playbackModule(from game: LotusMachine) throws -> Data {
        var module = try module(from: game)
        guard game.word(0x1afea) == 2 else { return module }
        let digest = SHA256.hash(data: module).map { String(format: "%02x", $0) }.joined()
        guard digest == "d571cba683b96871e514d5e8c9758174fa1bc5da68400372204e72d0a7fc4715" else { return module }
        let periods = [856,808,762,720,678,640,604,570,538,508,480,453,
                       428,404,381,360,339,320,302,285,269,254,240,226,
                       214,202,190,180,170,160,151,143,135,127,120,113]
        let orderCount = Int(module[950])
        let patternCount = Int(module[952..<952+orderCount].max()!)+1
        for offset in stride(from: 1084, to: 1084+patternCount*1024, by: 4) {
            let instrument = Int(module[offset]&0xf0 | module[offset+2]>>4)
            let period = Int(module[offset]&0x0f)<<8 | Int(module[offset+1])
            guard instrument == 10, period != 0, let note = periods.firstIndex(of: period), note+8 < periods.count else { continue }
            let corrected = periods[note+8]
            module[offset] = module[offset]&0xf0 | UInt8(corrected>>8)
            module[offset+1] = UInt8(corrected&255)
        }
        return module
    }

    static func module(from game: LotusMachine) throws -> Data {
        let base = Int(game.long(0x10934))
        guard base > 0, base+134 <= game.ram.count,
              Array(game.ram[base+130..<base+134]) == Array("M.K.".utf8) else {
            throw CocoaError(.fileReadCorruptFile)
        }
        let orders = Int(game.byte(base))
        guard (1...128).contains(orders) else { throw CocoaError(.fileReadCorruptFile) }
        let patterns = Int(game.ram[base+2..<base+2+orders].max()!)+1
        let end = base+134+patterns*1024
        guard patterns <= 128, end <= game.ram.count else { throw CocoaError(.fileReadCorruptFile) }
        var result = Data("Lotus original MOD".utf8)
        result.append(contentsOf: repeatElement(0, count: 20-result.count))
        var samples = Data()
        func word(_ value: Int) {
            result.append(UInt8(truncatingIfNeeded: value >> 8))
            result.append(UInt8(truncatingIfNeeded: value))
        }
        for index in 1...31 {
            let entry = 0x1095e+index*16
            let pointer = Int(game.long(entry)), length = Int(game.word(entry+4))*2
            let volume = Int(game.word(entry+6))
            let loopOffset = Int(game.long(entry+8)), loopWords = Int(game.word(entry+12))
            guard pointer <= game.ram.count, length <= game.ram.count-pointer,
                  volume <= 64, loopOffset % 2 == 0, loopOffset/2 <= 65535 else {
                throw CocoaError(.fileReadCorruptFile)
            }
            result.append(contentsOf: repeatElement(0, count: 22))
            word(length/2); result.append(0); result.append(UInt8(volume))
            word(loopOffset/2); word(loopWords)
            samples.append(contentsOf: game.ram[pointer..<pointer+length])
        }
        result.append(contentsOf: game.ram[base..<end])
        result.append(samples)
        return result
    }
}
