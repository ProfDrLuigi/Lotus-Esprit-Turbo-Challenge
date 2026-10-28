import AVFoundation

@MainActor final class PaulaAudio {
    private let engine: AVAudioEngine
    private let format = AVAudioFormat(standardFormatWithSampleRate: 44100, channels: 2)!
    private let ring = StereoAudioRing()
    private let source: AVAudioSourceNode
    private let music: LotusMusicPlayer
    private var mixer = RacingAudioMixer()
    private var ready = false
    var muted = false { didSet { engine.mainMixerNode.outputVolume = muted ? 0 : 0.8 } }
    var hdAudioEnabled = false { didSet { music.hdAudioEnabled = hdAudioEnabled } }
    var musicPaused: Bool {
        get { music.userPaused }
        set { music.userPaused = newValue }
    }
    var musicTrack: Int? { music.selected }
    var independentRaceMusic: Bool {
        get { music.independentRaceMusic }
        set { music.independentRaceMusic=newValue }
    }
    var failure: String?
    var diagnostics: StereoAudioRing.Statistics { ring.statistics }
    private(set) var engineStarts = 0
    private(set) var enginePauses = 0
    var isRunning: Bool { engine.isRunning }

    init(engine: AVAudioEngine = AVAudioEngine(), assetsURL: URL? = nil) {
        self.engine = engine
        let ring = self.ring
        source = AVAudioSourceNode(format: format) { silence, _, frames, output in
            let buffers = UnsafeMutableAudioBufferListPointer(output)
            guard buffers.count == 2, let left = buffers[0].mData, let right = buffers[1].mData else { return -50 }
            let copied = ring.read(left: left.assumingMemoryBound(to: Float.self),
                                   right: right.assumingMemoryBound(to: Float.self), count: Int(frames))
            silence.pointee = ObjCBool(copied == 0)
            return 0
        }
        engine.attach(source)
        engine.connect(source, to: engine.mainMixerNode, format: format)
        music = LotusMusicPlayer(engine: engine, format: format, assetsURL: assetsURL)
    }
    func start() {
        guard !ready || !engine.isRunning else { return }
        do {
            try engine.start()
            engineStarts += 1
            engine.mainMixerNode.outputVolume = muted ? 0 : 0.8
            ready = true; failure = nil
        }
        catch { failure = error.localizedDescription }
    }
    func pause() {
        guard ready || engine.isRunning else { return }
        enginePauses += 1
        music.pause(); engine.pause(); ready = false; ring.clear()
    }
    func stop() { music.stop(); engine.stop(); ready = false; ring.clear(); mixer = RacingAudioMixer() }
    func skipMusic(_ direction: Int, source: LotusMachine) throws { try music.skip(direction,source:source) }
    func beginMusic(source: LotusMachine) throws { try music.beginMusic(source:source) }
    func resetMusicControls() { music.stop();music.userPaused = false }
    func enqueue(_ game: LotusMachine) {
        do { try music.update(game) }
        catch { music.stop(); failure = "Music playback: \(error.localizedDescription)"; return }
        start()
        guard ready else { return }
        music.play()
        let localMusic=independentRaceMusic && (game.long(0x64)==0x151b0 || game.word(0x1afe0)==41)
        // Engine-only is a local choice too: never let the shared native
        // radio's Paula music leak back into this Mac's effects stream.
        ring.enqueue(mixer.render(game, separateMusic: music.selected != nil || localMusic))
    }
}
