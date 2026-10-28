import Foundation

// Original addresses are labels in generated Swift routines. No opcode decoder,
// ROM, or external emulator is used by the application.
final class LotusMachine {
    var ram = [UInt8](repeating: 0, count: 0x100000)
    var custom = [UInt16](repeating: 0, count: 256)
    var r = [UInt32](repeating: 0, count: 16)
    var pc = 0x10000
    var n = false, z = false, v = false, c = false, x = false
    var fault: String?
    var frameNumber = 0
    var disk: [Int: [UInt8]]
    var buttons1: UInt8 = 0
    var buttons2: UInt8 = 0
    var decorativeClassicControlRows = false
    var beam: UInt16 = 0
    var keyboardByte: UInt8 = 255
    var keyPending = false
    var interruptLevel = 0
    var interruptStack = [Int]()
    var dma: UInt16 = 0
    var audioStarts = [Int](repeating: 0, count: 4)
    var audioInitialPointer = [Int](repeating: 0, count: 4)
    var audioInitialLength = [Int](repeating: 0, count: 4)
    // Observe the original motor routine without changing its CPU execution.
    // Its music branch skips AUD2/3; the native mixer can retain a quiet engine.
    var motorCommands = [UInt32](repeating: 0, count: 2)
    var motorCommandsValid = false
    var motorSample = [UInt8]()
    var motorInitialLength = 0
    var motorLoopOffset = 0
    var motorLoopLength = 0
    var soundBank: [UInt8]?
    var soundBankGeneration = 0
    var musicGeneration = 0
    var soundEffects = [-1, -1]
    var isAudioReplica = false
    struct ChampionshipResult {
        let difficulty: Int
        let scores: [Int]
    }
    var championshipResults = [ChampionshipResult]()
    var blitCount = 0
    var diskReads = [Int]()
    var openedFile: Int?
    var breakpoint: Int?
    var videoObjects = [Int:[LotusVideoObject]]()
    var displayedVideoBuffer = 0
    var captureVideoObjects = false {
        didSet {
            guard !captureVideoObjects,oldValue else { return }
            // These are presentation-only snapshots, often several full
            // bitmaps per frame. SD must neither capture nor retain them.
            videoObjects.removeAll();videoPendingBatches.removeAll();videoActiveBatch=nil
            videoBackgrounds.removeAll();videoDistances.removeAll();videoRoads.removeAll()
            videoRoadProfiles=nil;videoBackdrops.removeAll()
            videoPixelIndices.removeAll();videoRowPalette.removeAll()
        }
    }
    var videoPixelIndices = [UInt8]()
    var videoRowPalette = [UInt32]()
    var videoPendingBatches = [Int:LotusVideoBatch]()
    var videoActiveBatch: LotusVideoBatch?
    var videoBackgrounds = [Int:[Int:[UInt8]]]()
    var videoDistances = [Int:[UInt32]]()
    var videoRoads = [Int:[Int:LotusVideoRoad]]()
    var videoRoadProfiles: [[LotusVideoRoad.Boundary]]?
    var videoBackdrops = [Int:[Int:LotusVideoBackdrop]]()
    var videoModeFrame = -1
    var videoInitialMode: UInt16 = 0
    private var magneticFieldsSoundEndFrame: Int?
    private var magneticFieldsSkipRequested = false
    private var magneticFieldsIntroFinished = false

    var magneticFieldsIntroActive: Bool {
        !isAudioReplica && !magneticFieldsIntroFinished &&
            (frameNumber == 0 || word(0x1afe0) == 1 || word(0x1afe0) == 0xffff)
    }
    func skipMagneticFieldsIntro() {
        guard magneticFieldsIntroActive else { return }
        magneticFieldsSkipRequested = true
    }

    private func holdMagneticFieldsIntro() -> Bool {
        guard magneticFieldsIntroActive else { return false }
        if magneticFieldsSkipRequested || word(0x1aff6) != 0 || (buttons1|buttons2)&31 != 0 {
            // Retain the original fade/cleanup, then take its existing Fire
            // path into GAME OPTIONS instead of showing the attract screens.
            putWord(0x1aff6,1)
            return false
        }
        // Original disk loading normally keeps this logo on screen. Native
        // reads finish before its animation/sample, so yield at the end of the
        // load while VBlank and the original logo handler continue normally.
        return magneticFieldsSoundEndFrame.map{frameNumber<$0 || dma&15 != 0} ?? true
    }

    init(program: Data, disk: [Int: [UInt8]]) {
        self.disk = disk
        ram.replaceSubrange(0..<min(program.count, ram.count), with: program.prefix(ram.count))
        r[15] = 0xf0000
        custom[0x1c/2] = 0x4000 // Exec leaves the interrupt master enabled.
        putLong(0x64, 0xf00000)
        putLong(0x68, 0xf00000)
        putLong(0x6c, 0xf00000)
    }

    @inline(__always) func byte(_ address: Int) -> UInt32 {
        let a = address & 0xffffff
        if a < ram.count { return UInt32(ram[a]) }
        if a == 0xbfe001 {
            return 255 & ~(buttons1 & 16 != 0 ? 128 : 0) & ~(buttons2 & 16 != 0 ? 64 : 0)
        }
        if a == 0xbfed01 { return keyPending ? 8 : 0 }
        if a == 0xbfec01 { return UInt32(keyboardByte) }
        if a == 0xdff006 { beam &+= 1; return UInt32(beam & 255) }
        if a >= 0xdff000 && a < 0xdff200 {
            let value = word(a & ~1)
            return a & 1 == 0 ? value >> 8 : value & 255
        }
        return 255
    }
    func joy(_ buttons: UInt8) -> UInt32 {
        let left = buttons & 1 != 0, right = buttons & 2 != 0
        let down = buttons & 4 != 0, up = buttons & 8 != 0
        return (left ? 512 : 0) | (right ? 2 : 0) | (up != left ? 256 : 0) | (down != right ? 1 : 0)
    }
    @inline(__always) func word(_ address: Int) -> UInt32 {
        let a = address & 0xffffff
        if a + 1 < ram.count { return UInt32(ram[a]) << 8 | UInt32(ram[a+1]) }
        if a == 0xdff00c { return joy(buttons1) }
        if a == 0xdff00a { return joy(buttons2) }
        if a == 0xdff002 { return UInt32(dma & 0x1fff) }
        if a == 0xdff006 { beam &+= 1; return UInt32(beam & 255) << 8 }
        if a >= 0xdff000 && a < 0xdff200 { return UInt32(custom[(a-0xdff000)/2]) }
        return byte(a) << 8 | byte(a+1)
    }
    @inline(__always) func long(_ a: Int) -> UInt32 { word(a) << 16 | word(a+2) }
    @inline(__always) func read(_ a: Int, _ size: Int) -> UInt32 {
        size == 1 ? byte(a) : size == 2 ? word(a) : long(a)
    }
    @inline(__always) func putByte(_ address: Int, _ value: UInt32) {
        let a = address & 0xffffff
        if a < ram.count { ram[a] = UInt8(truncatingIfNeeded: value) }
        else if a == 0xbfee01 && value & 64 != 0 { keyPending = false }
        else if a >= 0xdff000 && a < 0xdff200 {
            let current = word(a & ~1)
            putWord(a & ~1, a & 1 == 0 ? (current & 255) | ((value & 255) << 8) : (current & 0xff00) | (value & 255))
        }
    }
    @inline(__always) func putWord(_ address: Int, _ value: UInt32) {
        let a = address & 0xffffff
        if a+1 < ram.count {
            ram[a] = UInt8(truncatingIfNeeded: value >> 8)
            ram[a+1] = UInt8(truncatingIfNeeded: value)
        } else if a >= 0xdff000 && a < 0xdff200 {
            let index = (a-0xdff000)/2
            let w = UInt16(truncatingIfNeeded: value)
            if a == 0xdff09a || a == 0xdff09c {
                let readIndex = a == 0xdff09a ? 0x1c/2 : 0x1e/2
                if w & 0x8000 != 0 { custom[readIndex] |= w & 0x7fff }
                else { custom[readIndex] &= ~w }
            } else if a == 0xdff096 {
                let old = dma
                if w & 0x8000 != 0 { dma |= w & 0x7fff } else { dma &= ~w }
                for channel in 0..<4 where old & (1 << channel) == 0 && dma & (1 << channel) != 0 {
                    audioStarts[channel] &+= 1
                    let base = 0xa0/2+channel*8
                    audioInitialPointer[channel] = Int(custom[base]) << 16 | Int(custom[base+1])
                    audioInitialLength[channel] = max(2, Int(custom[base+2])*2)
                }
            } else {
                let pointerHigh = [0x48,0x4c,0x50,0x54,0x80,0x84,0xa0,0xb0,0xc0,0xd0].contains(a-0xdff000)
                    || (a >= 0xdff0e0 && a <= 0xdff0f4 && (a-0xdff0e0) % 4 == 0)
                    || (a >= 0xdff120 && a <= 0xdff13c && (a-0xdff120) % 4 == 0)
                custom[index] = pointerHigh ? w & 31 : w
                if a == 0xdff058 { blit(value); blitCount += 1; custom[0x1e/2] |= 0x40 }
            }
        }
    }
    @inline(__always) func putLong(_ a: Int, _ value: UInt32) { putWord(a, value >> 16); putWord(a+2, value & 65535) }
    @inline(__always) func write(_ a: Int, _ value: UInt32, _ size: Int) {
        if size == 1 { putByte(a, value) } else if size == 2 { putWord(a, value) } else { putLong(a, value) }
    }

    func sendKey(_ raw: UInt8) {
        let inverted = ~raw
        keyboardByte = (inverted << 1) | (inverted >> 7)
        keyPending = true; custom[0x1e/2] |= 8
    }
    var status: UInt32 { (x ? 16 : 0) | (n ? 8 : 0) | (z ? 4 : 0) | (v ? 2 : 0) | (c ? 1 : 0) }
    func enterInterrupt(_ level: Int, _ vector: Int) {
        interruptStack.append(interruptLevel)
        push(UInt32(pc))
        r[15] &-= 2
        putWord(Int(r[15]), status)
        interruptLevel = level
        pc = Int(long(vector))
    }
    func returnInterrupt() {
        let saved = word(Int(r[15])); r[15] &+= 2
        x = saved & 16 != 0; n = saved & 8 != 0; z = saved & 4 != 0
        v = saved & 2 != 0; c = saved & 1 != 0
        pc = Int(pop())
        interruptLevel = interruptStack.popLast() ?? 0
    }
    @inline(__always) func serviceInterrupt() {
        let enabled = custom[0x1c/2]
        guard enabled & 0x4000 != 0 else { return }
        let pending = enabled & custom[0x1e/2]
        if interruptLevel < 3 && pending & 0x70 != 0 { enterInterrupt(3, 0x6c) }
        else if interruptLevel < 2 && pending & 8 != 0 { enterInterrupt(2, 0x68) }
        else if interruptLevel < 1 && pending & 2 != 0 { enterInterrupt(1, 0x64) }
    }

    func nativeCall() -> Bool {
        if pc == 0x131a0,decorativeClassicControlRows {
            // Native options have already restored the previous row's colour
            // and applied Up/Down. Skip obsolete input choices before flashing
            // or dispatching the selected row, preserving their original text.
            var row=Int(word(0x1b05e))
            if row == 4 || row == 7 || row == 8 {
                let input=byte(0x1aa26),direction=input&8 != 0 ? -1:1
                repeat { row=(row+direction+9)%9 } while row == 4 || row == 7 || row == 8
                putWord(0x1b05e,UInt32(row))
                // A HD→Classic switch can leave a formerly active Control row
                // selected. Relocation must not edit the next option instead.
                if input&12 == 0 { putByte(0x1aa26,input & ~UInt32(3)) }
            }
        }
        if pc == 0x1250e && magneticFieldsIntroActive {
            // $124a0 starts the four Paula channels with the original sample.
            // Derive its duration from AUDxLEN/PER and the PAL sample clock,
            // independently of whether audio is enabled or currently muted.
            let seconds = (0..<4).map { channel -> Double in
                let period = Int(custom[0xa0/2+channel*8+3])
                return Double(audioInitialLength[channel])*Double(max(124,period))/3546895
            }.max() ?? 0
            magneticFieldsSoundEndFrame = frameNumber+Int(ceil(seconds*50))
        }
        if pc == 0x10d7a { magneticFieldsIntroFinished = true }
        if pc == 0x16258 || pc == 0x18a2c || pc == 0x178ce || pc == 0x17a30 || pc == 0x16f26 || pc == 0x171e8 || pc == 0x19180 { observeVideoObjects() }
        if pc == 0x10308 && !isAudioReplica { musicGeneration &+= 1 }
        if pc == 0x11f2e {
            soundEffects[0] = Int(Int16(truncatingIfNeeded: word(0x101f2)))
            soundEffects[1] = Int(Int16(truncatingIfNeeded: word(0x101f4)))
        }
        if pc == 0x1073e && !isAudioReplica {
            // Both engine voices and the complete original instrument bank are
            // initialized here, before music starts using the same four voices.
            soundBank = ram; soundBankGeneration &+= 1
        }
        if pc == 0x11f56 {
            // $11f66–$11fc6: original RPM -> period/volume calculation.
            // $11f64 skips it in music mode, so observe its inputs beforehand.
            for player in 0..<2 {
                let rpm = word(0x12318+player*2)
                motorCommands[player] = rpm == 0 ? 0x3f8
                    : word(0x1231c+player*2) << 16 | max(124, 0xf80c0/rpm) & 0xffff
            }
            motorCommandsValid = true
        }
        if pc == 0x10736 {
            // After the original engine command (effect 8) resolves its actual
            // instrument, observe AUD3's replay structure, including its loop.
            let voice = 0x108fa
            let pointer = Int(long(voice)), length = Int(word(voice+4))*2
            let offset = Int(long(voice+0x10))-pointer, loop = Int(word(voice+0x14))*2
            let count = max(length, offset+loop)
            if pointer > 0 && offset >= 0 && count > 0 && pointer+count <= ram.count && loop > 0 {
                motorSample = Array(ram[pointer..<pointer+count])
                motorInitialLength = length
                motorLoopOffset = offset; motorLoopLength = loop
            }
        }
        if pc == 0x1294e && !isAudioReplica {
            // The original $1286e routine has just assembled GAME OVER,
            // evaluated both totals and inserted the native high-score rows.
            championshipResults.append(.init(difficulty:Int(word(0x1b060)),
                scores:[Int(word(0x1b09a)),Int(word(0x1b098))]))
            if championshipResults.count>4 { championshipResults.removeFirst() }
        }
        if pc == 0xf00000 {
            if interruptLevel == 2 { keyPending = false; custom[0x1e/2] &= ~8 }
            returnInterrupt(); return true
        }
        if pc == 0x1018c { r[0] = 0xe00000; pc = 0x10190; return true }
        if pc == 0x1418c {
            let address = Int(r[1])
            guard address >= 0, address+16 < ram.count else { fail("Invalid original filename"); return true }
            let name = String(bytes: ram[address..<address+16].prefix(while: { $0 != 0 }), encoding: .ascii) ?? ""
            let leaf = String(name.split(separator: ":").last ?? "")
            guard leaf.lowercased().hasPrefix("file"), let index = Int(leaf.dropFirst(4).prefix(2), radix: 16), disk[index] != nil else {
                fail("Missing original file: \(name)"); return true
            }
            openedFile = index; r[0] = 1; logic(1, 4); pc = 0x14190; return true
        }
        if pc == 0x141ae {
            let index = openedFile ?? -1, destination = Int(r[2])
            guard let file = disk[index], destination >= 0, destination+file.count <= ram.count else {
                fail("Invalid original disk request \(index)"); return true
            }
            diskReads.append(index)
            ram.replaceSubrange(destination..<destination+file.count, with: file)
            r[0] = UInt32(file.count)
            logic(r[0], 4)
            pc = 0x141b2; return true
        }
        if pc == 0x141c0 { openedFile = nil; r[0] = 1; logic(1, 4); pc = 0x141c4; return true }
        return false
    }

    func runFrame(instructionBudget: Int = 500_000) {
        guard fault == nil else { return }
        motorCommandsValid = false
        soundEffects[0] = -1; soundEffects[1] = -1
        if magneticFieldsIntroActive,let end = magneticFieldsSoundEndFrame,frameNumber>=end,dma&15 != 0 {
            // Complete the intro's Paula DMA independently of the audio device.
            // Its original handler first installs the silent loop, then stops
            // the four voices and requests the fade on the next completion.
            custom[0x1e/2] |= 0x780
        }
        custom[0x1e/2] |= 0x20
        if custom[0x1c/2] & 2 != 0 { custom[0x1e/2] |= 2 }
        var waits = Set<Int>()
        for _ in 0..<instructionBudget {
            if pc == breakpoint { break }
            serviceInterrupt()
            if interruptLevel == 0 && pc == 0x10d6a && holdMagneticFieldsIntro() { break }
            if interruptLevel == 0 && pc == 0x15f56 && (word(0x1a976) &- word(0x1a97a)) & 65535 < 2 { break }
            if interruptLevel == 0 && Self.waitAddresses.contains(pc) {
                if !waits.insert(pc).inserted { break }
            }
            if !nativeCall() { stepCompiled() }
            if fault != nil { break }
        }
        frameNumber += 1
    }
}
