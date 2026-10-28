import Foundation

@MainActor struct RacingAudioMixer {
    private var original = PaulaMixer()
    private var effects: LotusEffectsReplay?

    mutating func render(_ game: LotusMachine, separateMusic: Bool) -> StereoPCM {
        let racingWithMusic = game.long(0x64) == 0x151b0 && (game.word(0x1b05c) != 0 || separateMusic)
        if racingWithMusic {
            if effects?.generation != game.soundBankGeneration { effects = LotusEffectsReplay(source: game) }
            if game.word(0x1a970) == 0, let effects { return effects.render(source: game) }
        } else { effects = nil }
        if separateMusic || racingWithMusic {
            return StereoPCM(left: Array(repeating: 0, count: 882), right: Array(repeating: 0, count: 882))
        }
        return original.render(game)
    }
}
