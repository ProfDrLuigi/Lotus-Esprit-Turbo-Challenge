import AVFoundation

// Original and HD music keep separate, continuously advancing playheads. Only
// their gains change when selecting a source; both use the device audio clock.
@MainActor final class LotusMusicPlayer {
    private let source: AVAudioSourceNode
    private let stream = LotusMusicStream()
    private let hdSource: AVAudioSourceNode
    private let hdStream = LotusHDMusicStream()
    private let hdFolder: URL?
    private var generation = -1
    private var observedSong: Int?
    private enum Choice { case original,engine,song(Int) }
    private var manualChoice = Choice.original
    private var observedRace: Bool?
    private static let raceChoices: [Int?] = [nil,1,2,3]
    private var playbackAllowed = false
    var independentRaceMusic = false
    private var preferredRaceSong: Int? = 1
    private(set) var selected: Int?
    var userPaused = false { didSet { applyPause() } }
    var playingHD: Bool { selected != nil && hdAudioEnabled }
    var hdAudioEnabled = false {
        didSet {
            guard hdAudioEnabled != oldValue else { return }
            stream.fade(to: hdAudioEnabled ? 0 : 1)
            hdStream.fade(to: hdAudioEnabled ? 1 : 0)
        }
    }

    init(engine: AVAudioEngine, format: AVAudioFormat, assetsURL: URL? = nil) {
        hdFolder = (assetsURL ?? Bundle.main.resourceURL!.appendingPathComponent("GameAssetts")).appendingPathComponent("HDMusic")
        let stream = self.stream
        source = AVAudioSourceNode(format: format) { silence, _, frames, output in
            let buffers = UnsafeMutableAudioBufferListPointer(output)
            guard buffers.count == 2, let left = buffers[0].mData, let right = buffers[1].mData else { return -50 }
            let rendered = stream.render(left: left.assumingMemoryBound(to: Float.self),
                                         right: right.assumingMemoryBound(to: Float.self), count: Int(frames))
            silence.pointee = ObjCBool(rendered == 0)
            return 0
        }
        let hdStream = self.hdStream
        let hdFormat = AVAudioFormat(standardFormatWithSampleRate: 48000, channels: 2)!
        hdSource = AVAudioSourceNode(format: hdFormat) { silence, _, frames, output in
            let buffers = UnsafeMutableAudioBufferListPointer(output)
            guard buffers.count == 2, let left = buffers[0].mData, let right = buffers[1].mData else { return -50 }
            let rendered = hdStream.render(left: left.assumingMemoryBound(to: Float.self),
                                           right: right.assumingMemoryBound(to: Float.self), count: Int(frames))
            silence.pointee = ObjCBool(rendered == 0)
            return 0
        }
        engine.attach(source)
        engine.connect(source, to: engine.mainMixerNode, format: format)
        engine.attach(hdSource)
        engine.connect(hdSource, to: engine.mainMixerNode, format: hdFormat)
    }

    func update(_ game: LotusMachine) throws {
        let original = Int(Int16(truncatingIfNeeded: game.word(0x1afea)))
        let nativeSong = (0...4).contains(original) && game.byte(0x10938) == 0 && game.musicGeneration > 0 ? original : nil
        let racing = game.long(0x64) == 0x151b0
        let localSelection = independentRaceMusic && (racing || game.word(0x1afe0) == 41)
        let contextChanged = observedRace != racing
        let changed = observedSong != nativeSong || generation != game.musicGeneration || contextChanged
        if changed {
            if localSelection {
                manualChoice=preferredRaceSong.map{.song($0)} ?? .engine
            } else { manualChoice = .original }
            observedSong = nativeSong; generation = game.musicGeneration;observedRace = racing
            if contextChanged && !localSelection { userPaused = false }
        }
        let song = racing ? nativeSong.flatMap{(1...3).contains($0) ? $0:nil}:nativeSong
        let target: Int?
        switch manualChoice {
        case .original: target = song
        case .engine: target = nil
        case .song(let id): target = id
        }
        let volume: Float = racing ? 0.7:0.9
        stream.set(paused:userPaused,volume:volume);hdStream.set(paused:userPaused,volume:volume)
        guard let target else { clearPlayback(); return }
        // The shared radio can load a different native song. It must neither
        // replace nor restart this Mac's independently selected playback.
        if selected != target || (changed && !localSelection) {
            let module: Data
            do {
                module = localSelection || target != nativeSong
                    ? try LotusMusicData.playbackModule(song:target,from:game)
                    : try LotusMusicData.playbackModule(from:game)
            }
            catch {
                // An early logo skip can leave the title's instrument table
                // incomplete. Reload track 0 on an isolated RAM copy, just as
                // manual race selections do, without touching the live game.
                guard target == 0 else { throw error }
                module = try LotusMusicData.playbackModule(song:0,from:game)
            }
            try select(target,module:module)
        }
        play()
    }
    func skip(_ direction: Int, source game: LotusMachine) throws {
        guard canSelect(game) else { return }
        try update(game)
        let choices: [Int?] = independentRaceMusic ? [nil,1,2,3,4]:Self.raceChoices
        let index = choices.firstIndex(where:{$0 == selected}) ?? 0
        let next = choices[(index+(direction<0 ? -1:1)+choices.count)%choices.count]
        if let song = next {
            try select(song,module:LotusMusicData.playbackModule(song:song,from:game))
            manualChoice = .song(song)
        } else { manualChoice = .engine;clearPlayback() }
        if independentRaceMusic { preferredRaceSong=next }
    }
    func beginMusic(source game: LotusMachine) throws {
        guard canSelect(game) else { return }
        try update(game)
        if selected == nil {
            try select(1,module:LotusMusicData.playbackModule(song:1,from:game))
            manualChoice = .song(1)
            if independentRaceMusic { preferredRaceSong=1 }
        }
        userPaused = false
    }
    private func canSelect(_ game: LotusMachine) -> Bool {
        let racing=game.long(0x64) == 0x151b0
        return (racing || independentRaceMusic && game.word(0x1afe0)==41) &&
            (independentRaceMusic || game.musicGeneration>0)
    }
    private func select(_ song: Int,module: Data) throws {
        let next = try LotusTracker(module:module), hd = try loadHD(song)
        let paused = userPaused || !playbackAllowed
        stream.replace(next,paused:paused); hdStream.replace(hd,paused:paused); selected = song
        applyPause()
    }
    private func loadHD(_ song: Int) throws -> AVAudioPCMBuffer {
        let name = "track-\(song)_hd.\(song == 0 ? "mp3" : "m4a")"
        guard let url = hdFolder?.appendingPathComponent(name) else { throw CocoaError(.fileNoSuchFile) }
        let file = try AVAudioFile(forReading: url, commonFormat: .pcmFormatFloat32, interleaved: false)
        // The supplied HD tracks are all 48-kHz stereo. Decode only the selected
        // file once, then loop its buffer on the device clock without disk I/O.
        guard file.processingFormat.sampleRate == 48000, file.processingFormat.channelCount == 2,
              file.length > 0, file.length <= Int64(UInt32.max),
              let buffer = AVAudioPCMBuffer(pcmFormat: file.processingFormat,
                                            frameCapacity: AVAudioFrameCount(file.length)) else {
            throw CocoaError(.fileReadCorruptFile)
        }
        try file.read(into: buffer)
        guard buffer.frameLength > 0 else { throw CocoaError(.fileReadCorruptFile) }
        return buffer
    }
    private func applyPause() {
        stream.set(paused: userPaused || !playbackAllowed)
        hdStream.set(paused: userPaused || !playbackAllowed)
    }
    func play() { playbackAllowed = true; applyPause() }
    func pause() { playbackAllowed = false; applyPause() }
    func stop() {
        clearPlayback(); manualChoice = .original; observedSong = nil; generation = -1;observedRace = nil
    }
    private func clearPlayback() {
        guard selected != nil else { return }
        stream.replace(nil); hdStream.replace(nil)
        selected = nil
    }
}

// Keep decoding/allocation outside the render callback. A silent HD track still
// advances its playhead; pause holds both the position and the crossfade.
nonisolated final class LotusHDMusicStream: @unchecked Sendable {
    private let lock = NSLock()
    private var buffer: AVAudioPCMBuffer?
    private var position = 0
    private var paused = false
    private var volume: Float = 0.9
    private var fade = LotusMusicFade(gain: 0)

    func replace(_ next: AVAudioPCMBuffer?, paused: Bool = false) {
        lock.lock()
        let previous = buffer
        buffer = next; position = 0; self.paused = paused; fade.reset()
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
        fade.fade(to: gain, frames: 9600) // 200 ms at 48 kHz.
    }
    func render(left: UnsafeMutablePointer<Float>, right: UnsafeMutablePointer<Float>, count: Int) -> Int {
        lock.lock(); defer { lock.unlock() }
        guard !paused, let buffer, let channels = buffer.floatChannelData else {
            left.update(repeating: 0, count: count); right.update(repeating: 0, count: count)
            return 0
        }
        let length = Int(buffer.frameLength)
        for index in 0..<count {
            let gain = volume*fade.next()
            left[index] = channels[0][position]*gain
            right[index] = channels[1][position]*gain
            position += 1
            if position == length { position = 0 }
        }
        return count
    }
}
