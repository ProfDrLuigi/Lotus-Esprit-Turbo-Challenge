import Foundation

// The game's original four-voice effects/engine player, isolated from music.
// Uses the same statically translated routines; no runtime instruction decoder.
@MainActor final class LotusEffectsReplay {
    private let game: LotusMachine
    private var mixer = PaulaMixer()
    let generation: Int

    init?(source: LotusMachine) {
        guard let bank = source.soundBank else { return nil }
        generation = source.soundBankGeneration
        game = LotusMachine(program: Data(), disk: [:])
        game.isAudioReplica = true
        game.ram = bank
        game.custom = source.custom
        game.dma = 0x200
        game.r[14] = 0xdff000
        call(0x10212) // original stop music / enter effects mode
        call(0x1024a) // resolve and start both original engine voices
    }

    private func call(_ address: Int) {
        game.r[15] = 0xf0000; game.push(0xeffffc); game.pc = address
        var budget = 0
        while game.pc != 0xeffffc && game.fault == nil && budget < 20_000 {
            if !game.nativeCall() { game.stepCompiled() }
            budget += 1
        }
        if game.pc != 0xeffffc && game.fault == nil { game.fail("Original audio routine exceeded its budget") }
    }

    func render(source: LotusMachine) -> StereoPCM {
        // Same order as $11f1e–$11fc6. The next tick activates pending effects
        // and reloads their loops; a new command then starts its own voice.
        call(0x10258)
        game.putWord(0x10652, 0); game.putWord(0x10654, 0)
        for player in 0..<2 where source.soundEffects[player] >= 0 {
            guard player == 0 || source.word(0x1b062) != 0 else { continue }
            game.r[player == 0 ? 2 : 3] = UInt32(source.soundEffects[player])
            call(player == 0 ? 0x10220 : 0x1022e)
        }
        if source.motorCommandsValid {
            game.r[0] = source.motorCommands[0]
            game.r[1] = source.word(0x1b062) != 0 ? source.motorCommands[1] : 0x3f8
            call(0x1023c)
        }
        // Engines remain behind the music; transient effects retain their
        // normal level. Both use the original sample, period and envelope.
        var pcm = mixer.render(game, engineGain: 0.65)
        // Keep each player's original side dominant, with enough crossfeed for
        // the engine and tyre sounds to remain audible on either speaker.
        for index in 0..<pcm.count {
            let left = pcm.left[index], right = pcm.right[index]
            pcm.left[index] = left*0.8+right*0.2
            pcm.right[index] = right*0.8+left*0.2
        }
        return pcm
    }
}
