import Foundation
import CryptoKit

/// Small, bounded records shared with the Debian C relay. No game assets cross the network.
enum LotusOnlineProtocol {
    static let revision: UInt8 = 4
    static let serverHost = "lotus1.wired.us.kg"
    static let port: UInt16 = 19890
    static let alphabet = Array("ABCDEFGHJKLMNPQRSTUVWXYZ23456789")
    enum Kind: UInt8 { case hello=1, welcome, start, input, frame, hash, error, ping, pong, browse, listBegin, roomInfo, listEnd, chat, chatMessage, identify, identified, scoreSubmit, scoresGet, scoresBegin, scoreRow, scoresEnd, scoreAck, members }
    static let scoreMaximum = [140,200,300]
    struct HighScore: Identifiable, Equatable {
        let nickname: String
        let difficulty: Int
        let score: Int
        var id: String { "\(difficulty):\(nickname)" }
    }
    static func validNickname(_ text: String) -> Bool {
        (2...20).contains(text.unicodeScalars.count) && text.utf8.count<=48 && validChat(text) &&
            text==text.trimmingCharacters(in:.whitespacesAndNewlines)
    }
    static let chatLimit = 200
    static func validChat(_ text: String) -> Bool {
        !text.trimmingCharacters(in:.whitespacesAndNewlines).isEmpty && text.utf8.count<=chatLimit &&
            !text.unicodeScalars.contains { $0.value<32 || (127...159).contains($0.value) ||
                (0x2028...0x202e).contains($0.value) ||
                (0x2066...0x2069).contains($0.value) }
    }
    struct Room: Identifiable {
        let id: UInt32
        let title: String
        let isPrivate: Bool
        let players: Int
        let started: Bool
        let difficulty: Int
        let gears: Int
        let code: String?
        var canJoin: Bool { players<2 && !started }
    }
    struct Input: Equatable {
        var buttons: UInt8 = 0
        var flags: UInt8 = 0
    }
    struct Frame {
        let number: UInt32
        let players: [Input]
    }
    struct Configuration: Equatable {
        let difficulty: UInt8
        let gears: UInt8
        let delay: UInt8
    }
    static func randomRoom() -> String { String((0..<6).map { _ in alphabet.randomElement()! }) }
    static func validRoom(_ room: String) -> Bool {
        room.utf8.count == 6 && room.utf8.allSatisfy { (65...90).contains($0) || (50...57).contains($0) }
    }
    static func uint32(_ number: UInt32) -> [UInt8] {
        [UInt8(truncatingIfNeeded:number>>24),UInt8(truncatingIfNeeded:number>>16),
         UInt8(truncatingIfNeeded:number>>8),UInt8(truncatingIfNeeded:number)]
    }
    static func read32(_ data: [UInt8],_ at: Int) -> UInt32 {
        data[at..<at+4].reduce(0) { $0<<8 | UInt32($1) }
    }
    static func record(_ bytes: [UInt8]) -> Data { Data(uint32(UInt32(bytes.count))+bytes) }
    struct Decoder {
        private var buffer = Data()
        mutating func append(_ data: Data) throws -> [[UInt8]] {
            guard buffer.count+data.count<=8192 else { throw Failure.packet }
            buffer.append(data)
            var result = [[UInt8]](),at=0
            let bytes = [UInt8](buffer)
            while bytes.count-at>=4 {
                let count = Int(LotusOnlineProtocol.read32(bytes,at))
                guard (1...256).contains(count) else { throw Failure.packet }
                if bytes.count-at<4+count { break }
                result.append(Array(bytes[at+4..<at+4+count]));at+=4+count
            }
            if at>0 { buffer.removeFirst(at) }
            return result
        }
    }
    enum Failure: Error { case packet }
}

/// The original simulation remains the authority on physics and the split screen.
/// Only this deterministic adapter may change its state during an online race.
enum LotusOnlineSimulation {
    static func identity(program: Data,disk: [Int:[UInt8]]) -> [UInt8] {
        var hash = SHA256()
        hash.update(data:Data("Lotus online simulation 1\0".utf8))
        hash.update(data:program)
        for id in disk.keys.sorted() {
            hash.update(data:Data(LotusOnlineProtocol.uint32(UInt32(id))))
            hash.update(data:Data(disk[id]!))
        }
        return Array(hash.finalize())
    }
    static func prepare(_ game: LotusMachine,configuration: LotusOnlineProtocol.Configuration) throws {
        game.skipMagneticFieldsIntro()
        for _ in 0..<1200 {
            if game.word(0x1afe0)==40 && game.word(0x1b762)==8 { break }
            game.runFrame()
            if game.fault != nil { throw LotusOnlineProtocol.Failure.packet }
        }
        guard game.word(0x1afe0)==40 && game.word(0x1b762)==8 else { throw LotusOnlineProtocol.Failure.packet }
        // Original GAME OPTIONS values; the original Start handler copies them
        // into the live race variables. Use both joystick boundaries on both Macs.
        configure(game,configuration)
        game.buttons1=16;game.buttons2=0;game.runFrame()
        game.buttons1=0
        // Keep all subsequent loading, radio and race frames in lockstep.
    }
    private static func configure(_ game: LotusMachine,_ configuration: LotusOnlineProtocol.Configuration) {
        game.putWord(0x1b066,UInt32(configuration.difficulty))
        game.putWord(0x1b068,1)
        game.putWord(0x1b06c,0);game.putWord(0x1b06e,0)
        game.putWord(0x1b070,UInt32(configuration.gears));game.putWord(0x1b072,UInt32(configuration.gears))
        game.putWord(0x1b05e,0)
    }
    @discardableResult static func advance(_ game: LotusMachine,frame: LotusOnlineProtocol.Frame,
                                          configuration: LotusOnlineProtocol.Configuration) -> Bool {
        guard frame.players.allSatisfy({$0.flags&1==0}) else { return false }
        game.buttons1=frame.players[0].buttons;game.buttons2=frame.players[1].buttons
        game.putByte(0x194b6,UInt32(frame.players[1].buttons))
        if game.word(0x1afe0)==40 && game.word(0x1b762)==8 {
            // Returning from a tournament must not let local menu input turn
            // the online session back into a one-player race.
            configure(game,configuration);game.buttons1=16;game.buttons2=0;game.putByte(0x194b6,0)
        }
        game.runFrame()
        return true
    }
    static func digest(_ game: LotusMachine) -> [UInt8] {
        var hash = SHA256()
        hash.update(data:Data(game.ram))
        var values = game.r+[UInt32(game.pc),UInt32(game.frameNumber),game.status,UInt32(game.beam),
            UInt32(game.dma),UInt32(game.keyboardByte),game.keyPending ? 1:0,UInt32(game.interruptLevel)]
        values += game.interruptStack.map {UInt32($0)}
        values += game.custom.map {UInt32($0)}
        hash.update(data:Data(values.flatMap{LotusOnlineProtocol.uint32($0)}))
        return Array(hash.finalize())
    }
}
