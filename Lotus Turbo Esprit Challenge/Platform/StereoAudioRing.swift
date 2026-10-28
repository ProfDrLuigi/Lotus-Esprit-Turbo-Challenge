import Foundation

// Only fixed-memory copies run under the lock. Rendering and allocations stay
// on the producer thread; the device callback only consumes prepared PCM.
nonisolated final class StereoAudioRing: @unchecked Sendable {
    struct Statistics {
        let buffered: Int; let underruns: Int; let dropped: Int
        let callbacks: Int; let requested: Int; let silent: Int
    }
    private let lock = NSLock()
    private let left: UnsafeMutablePointer<Float>
    private let right: UnsafeMutablePointer<Float>
    private let capacity: Int
    private let preRoll: Int
    private var readIndex = 0, writeIndex = 0, available = 0
    private var primed = false
    private var underruns = 0, dropped = 0
    private var callbacks = 0, requested = 0, silent = 0

    init(capacity: Int = 882*8, preRoll: Int = 882*3) {
        precondition(capacity > 0 && preRoll > 0 && preRoll <= capacity)
        self.capacity = capacity; self.preRoll = preRoll
        left = .allocate(capacity: capacity); right = .allocate(capacity: capacity)
        left.initialize(repeating: 0, count: capacity); right.initialize(repeating: 0, count: capacity)
    }
    deinit {
        left.deinitialize(count: capacity); right.deinitialize(count: capacity)
        left.deallocate(); right.deallocate()
    }
    func clear() {
        lock.lock(); defer { lock.unlock() }
        readIndex = 0; writeIndex = 0; available = 0; primed = false
    }
    var statistics: Statistics {
        lock.lock(); defer { lock.unlock() }
        return Statistics(buffered: available, underruns: underruns, dropped: dropped,
                          callbacks: callbacks, requested: requested, silent: silent)
    }
    func enqueue(_ pcm: StereoPCM) {
        precondition(pcm.count == pcm.right.count && pcm.count <= capacity)
        guard pcm.count > 0 else { return }
        pcm.left.withUnsafeBufferPointer { sourceLeft in
            pcm.right.withUnsafeBufferPointer { sourceRight in
                lock.lock(); defer { lock.unlock() }
                let overflow = max(0, available+pcm.count-capacity)
                readIndex = (readIndex+overflow)%capacity; available -= overflow; dropped += overflow
                let first = min(pcm.count, capacity-writeIndex), second = pcm.count-first
                left.advanced(by: writeIndex).update(from: sourceLeft.baseAddress!, count: first)
                right.advanced(by: writeIndex).update(from: sourceRight.baseAddress!, count: first)
                left.update(from: sourceLeft.baseAddress!.advanced(by: first), count: second)
                right.update(from: sourceRight.baseAddress!.advanced(by: first), count: second)
                writeIndex = (writeIndex+pcm.count)%capacity; available += pcm.count
            }
        }
    }
    @discardableResult func read(left outputLeft: UnsafeMutablePointer<Float>,
                                 right outputRight: UnsafeMutablePointer<Float>, count: Int) -> Int {
        lock.lock(); defer { lock.unlock() }
        if !primed && available >= max(preRoll, count) { primed = true }
        let copied = primed ? min(available, count) : 0
        callbacks += 1; requested += count; silent += count-copied
        let first = min(copied, capacity-readIndex), second = copied-first
        outputLeft.update(from: left.advanced(by: readIndex), count: first)
        outputRight.update(from: right.advanced(by: readIndex), count: first)
        outputLeft.advanced(by: first).update(from: left, count: second)
        outputRight.advanced(by: first).update(from: right, count: second)
        outputLeft.advanced(by: copied).update(repeating: 0, count: count-copied)
        outputRight.advanced(by: copied).update(repeating: 0, count: count-copied)
        readIndex = (readIndex+copied)%capacity; available -= copied
        if primed && copied < count { underruns += 1; primed = false }
        return copied
    }
}
