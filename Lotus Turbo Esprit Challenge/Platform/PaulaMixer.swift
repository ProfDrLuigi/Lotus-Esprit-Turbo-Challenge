import Foundation

nonisolated struct StereoPCM: Sendable {
    var left: [Float]
    var right: [Float]
    var count: Int { left.count }
}

// Original replay commands, original signed 8-bit samples and PAL Paula clock.
// Kept separate from the device callback: no game state is read on its thread.
@MainActor struct PaulaMixer {
    static let sampleRate = 44100.0
    static let framesPerTick = 882
    private struct Voice {
        var generation = -1
        var pointer = 0
        var length = 2
        var position = 0.0
        var enabled = false
    }
    private var voices = Array(repeating: Voice(), count: 4)

    static func volume(_ register: UInt16) -> Float {
        Float(register & 64 != 0 ? 64 : register & 63) / 64
    }
    static func increment(_ register: UInt16) -> Double {
        3546895.0 / Double(register == 0 ? 65536 : max(124, Int(register))) / sampleRate
    }

    // Integrate the held DAC level over each output frame. This preserves the
    // sample clock across blocks and avoids nearest-sample resampling jitter.
    private static func sample(_ voice: inout Voice, bytes: [UInt8], step: Double,
                               loopPointer: Int, loopLength: Int) -> Float {
        var remaining = step, area = 0.0
        while remaining > 1e-12 {
            if voice.position >= Double(voice.length)-1e-10 {
                voice.position = 0; voice.pointer = loopPointer; voice.length = max(2, loopLength)
            }
            let whole = Int(voice.position)
            let span = min(remaining, Double(whole+1)-voice.position)
            let address = voice.pointer+whole
            if bytes.indices.contains(address) { area += Double(Int8(bitPattern: bytes[address])) / 128 * span }
            voice.position += span; remaining -= span
        }
        return Float(area/step)
    }

    mutating func render(_ game: LotusMachine, engineGain: Float = 1) -> StereoPCM {
        var pcm = StereoPCM(left: Array(repeating: 0, count: Self.framesPerTick),
                            right: Array(repeating: 0, count: Self.framesPerTick))
        for channel in 0..<4 {
            guard game.dma & 0x200 != 0 && game.dma & (1 << channel) != 0 else {
                voices[channel].enabled = false; continue
            }
            let base = 0xa0/2+channel*8
            if !voices[channel].enabled || voices[channel].generation != game.audioStarts[channel] {
                voices[channel] = Voice(generation: game.audioStarts[channel],
                                        pointer: game.audioInitialPointer[channel],
                                        length: max(2, game.audioInitialLength[channel]), enabled: true)
            }
            let pointer = (Int(game.custom[base]) << 16 | Int(game.custom[base+1])) & 0x1ffffe
            let length = max(2, Int(game.custom[base+2])*2)
            let step = Self.increment(game.custom[base+3])
            let gain = Self.volume(game.custom[base+4])*0.24 * (channel >= 2 ? engineGain : 1)
            for index in 0..<pcm.count {
                let value = Self.sample(&voices[channel], bytes: game.ram, step: step,
                                        loopPointer: pointer, loopLength: length)*gain
                // Paula's original stereo routing: 0/3 left, 1/2 right.
                if channel == 0 || channel == 3 { pcm.left[index] += value }
                else { pcm.right[index] += value }
            }
        }
        return pcm
    }
}
