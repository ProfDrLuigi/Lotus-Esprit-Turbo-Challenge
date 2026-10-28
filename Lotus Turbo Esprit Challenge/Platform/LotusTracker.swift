import Foundation
import COpenMPT

// Each decoder is owned by one music stream. Creation/destruction happen away
// from the device callback; read() advances only by the requested audio frames.
nonisolated final class LotusTracker {
    private let handle: OpaquePointer

    init(module: Data) throws {
        var error: Int32 = 0
        var message: UnsafePointer<CChar>?
        let decoder = module.withUnsafeBytes {
            openmpt_module_create_from_memory2($0.baseAddress, $0.count,
                                               { _, _ in }, nil, nil, nil, &error, &message, nil)
        }
        defer { if let message { openmpt_free_string(message) } }
        guard let decoder else {
            throw NSError(domain: "LotusTracker", code: Int(error), userInfo:
                          [NSLocalizedDescriptionKey: message.map { String(cString: $0) } ?? "Invalid original music data"])
        }
        guard openmpt_module_ctl_set_boolean(decoder, "render.resampler.emulate_amiga", 1) != 0,
              openmpt_module_ctl_set_text(decoder, "render.resampler.emulate_amiga_type", "a500") != 0,
              openmpt_module_set_render_param(decoder, OPENMPT_MODULE_RENDER_STEREOSEPARATION_PERCENT, 100) != 0,
              openmpt_module_set_repeat_count(decoder, -1) != 0 else {
            openmpt_module_destroy(decoder)
            throw CocoaError(.fileReadCorruptFile)
        }
        handle = decoder
    }
    deinit { openmpt_module_destroy(handle) }

    @discardableResult func read(left: UnsafeMutablePointer<Float>, right: UnsafeMutablePointer<Float>, count: Int) -> Int {
        let rendered = openmpt_module_read_float_stereo(handle, 44100, count, left, right)
        // Match the approved 16-bit reference's headroom. Keep float precision
        // between those limits, without introducing lossy AAC conversion.
        for index in 0..<rendered {
            left[index] = min(32767.0/32768, max(-1, left[index]))
            right[index] = min(32767.0/32768, max(-1, right[index]))
        }
        if rendered < count {
            left.advanced(by: rendered).update(repeating: 0, count: count-rendered)
            right.advanced(by: rendered).update(repeating: 0, count: count-rendered)
        }
        return rendered
    }
}

// Fades advance on audio frames, including rapid reversals, rather than timers.
nonisolated struct LotusMusicFade {
    private var gain: Float
    private var target: Float
    private var step: Float = 0
    private var remaining = 0

    init(gain: Float) { self.gain = gain; target = gain }
    mutating func fade(to target: Float, frames: Int) {
        guard target != self.target else { return }
        self.target = target
        remaining = frames
        step = (target-gain)/Float(frames)
    }
    mutating func reset() { gain = target; remaining = 0 }
    mutating func next() -> Float {
        if remaining > 0 {
            gain += step; remaining -= 1
            if remaining == 0 { gain = target }
        }
        return gain
    }
}

// The lock serializes the decoder with short control changes. Parsing, module
// allocation and destruction are outside it. The callback never reads game RAM.
nonisolated final class LotusMusicStream: @unchecked Sendable {
    private let lock = NSLock()
    private var decoder: LotusTracker?
    private var paused = false
    private var volume: Float = 0.9
    private var fade = LotusMusicFade(gain: 1)

    func replace(_ next: LotusTracker?, paused: Bool = false) {
        lock.lock()
        let previous = decoder
        decoder = next; self.paused = paused
        fade.reset()
        lock.unlock()
        withExtendedLifetime(previous) {}
    }
    func set(paused: Bool, volume: Float? = nil) {
        lock.lock(); defer { lock.unlock() }
        self.paused = paused
        if let volume { self.volume = volume }
    }
    func fade(to gain: Float) {
        lock.lock(); defer { lock.unlock() }
        fade.fade(to: gain, frames: 8820) // 200 ms at 44.1 kHz.
    }
    @discardableResult func render(left: UnsafeMutablePointer<Float>, right: UnsafeMutablePointer<Float>, count: Int) -> Int {
        lock.lock(); defer { lock.unlock() }
        guard !paused, let decoder else {
            left.update(repeating: 0, count: count); right.update(repeating: 0, count: count)
            return 0
        }
        let rendered = decoder.read(left: left, right: right, count: count)
        for index in 0..<rendered {
            let gain = volume*fade.next()
            left[index] *= gain; right[index] *= gain
        }
        return rendered
    }
}
