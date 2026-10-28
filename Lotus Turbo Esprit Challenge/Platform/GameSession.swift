import AppKit
import Combine

@MainActor final class GameSession: ObservableObject {
    @Published var paused = false {
        didSet { if paused != oldValue { if paused { cancelRaceChat() };releaseInput(); audio.pause(); frameClock.reset(); view?.needsDisplay = true } }
    }
    @Published var showControls = false {
        didSet { if !showControls { cancelLearning() } else { cancelRaceChat() }; releaseInput(); audio.pause(); frameClock.reset() }
    }
    @Published var controlsPlayer: PlayerSlot = .one
    @Published var controlsPane = 0
    @Published var showOnline = false {
        didSet { if showOnline != oldValue { if showOnline { cancelRaceChat() };releaseInput();audio.pause();frameClock.reset() } }
    }
    @Published private(set) var onlinePaused = false
    let online = LotusOnlineClient()
    let raceChat = LotusRaceChat()
    let highScores: LotusHighScores
    @Published var onlineNickname: String {
        didSet { preferences.set(onlineNickname,forKey:"Lotus.Online.Nickname") }
    }
    var showingPause: Bool { online.isPlaying ? onlinePaused:paused }
    @Published private(set) var isFullScreen = false
    @Published var displayRate: Int {
        didSet {
            let normalized = displayRate == 60 ? 60 : 50
            if displayRate != normalized { displayRate = normalized; return }
            guard displayRate != oldValue else { return }
            preferences.set(displayRate, forKey: "Lotus.DisplayRate")
            frameClock.reset()
            if timer != nil { scheduleDisplayTimer() }
        }
    }
    @Published var muted: Bool {
        didSet { audio.muted = muted; preferences.set(muted, forKey: "Lotus.Muted") }
    }
    @Published var hdAudioEnabled: Bool {
        didSet {
            audio.hdAudioEnabled = hdAudioEnabled
            preferences.set(hdAudioEnabled, forKey: "Lotus.HDAudio")
        }
    }
    @Published var hdGraphicsEnabled: Bool {
        didSet {
            if hdGraphicsEnabled && graphics == nil { hdGraphicsEnabled = false; return }
            preferences.set(hdGraphicsEnabled,forKey:"Lotus.HDGraphics")
            presentation.reset()
            machine?.captureVideoObjects = hdGraphicsEnabled
            if let originalImage, let game = machine {
                image = hdGraphicsEnabled ? graphics?.render(originalImage,machine:radioDisplayMachine ?? game) ?? originalImage : originalImage
                view?.needsDisplay = true
            }
        }
    }
    var hdGraphicsAvailable: Bool { graphics != nil }
    @Published var failure: String?
    @Published private(set) var needsOriginalData = false
    @Published private(set) var importingOriginalData = false
    @Published private(set) var originalDataNotice: String?
    private var importCancellation: LotusOriginalData.Cancellation?
    private var originalProgram: Data?
    @Published private(set) var musicPaused = false
    @Published private(set) var musicTrack: Int?
    @Published private var musicControlsAvailable = false
    var canControlMusic: Bool { musicControlsAvailable && failure == nil }
    var onlineRadioVisible: Bool { online.isPlaying && !racing && machine?.word(0x1afe0)==41 }
    var onlineRadioInteractive: Bool { onlineRadioVisible && machine?.word(0x1b762)==8 && !showingPause && !showControls && !showOnline }
    @Published var status = "AMIGA · 1990 GREMLIN"
    let controllers: ControllerHub
    let keyboard: KeyboardInput
    let audio: PaulaAudio
    private(set) var machine: LotusMachine?
    weak var view: LotusView?
    var image: CGImage?
    private var originalImage: CGImage?
    private let localRadio = LotusOnlineRadio()
    private var radioDisplayMachine: LotusMachine?
    private var radioMusicFrames = 0
    private var radioSeek = 0
    private var radioSeekUntil = 0
    private var graphics: LotusHDGraphics?
    private var timer: Timer?
    private var frameClock = FrameClock()
    private var presentation = FramePresentation()
    private var keyQueue = [UInt8]()
    private var textKeys = [UInt16: UInt8]()
    private var optionsClick: UInt8 = 0
    private var optionsHeldDirections: UInt8 = 0
    private var onlinePendingButtons: UInt8 = 0
    private var active = true
    private var ticks = 0
    private let preferences: UserDefaults
    private let assetsURL: URL?
    private let audioEnabled: Bool
    var racing: Bool { machine?.long(0x64) == 0x151b0 }
    var hdOptionsVisible: Bool {
        !online.isEngaged && hdGraphicsEnabled && graphics?.showingOptions == true && machine?.word(0x1afe0) == 40 && !racing
    }
    private var hdOptionsInteractive: Bool {
        !online.isEngaged && hdGraphicsEnabled && graphics?.optionsMenuAvailable == true &&
            machine?.word(0x1afe0) == 40 && machine?.word(0x1b762) == 8 && !racing
    }
    func activateHDMenuRow(_ row: Int) {
        guard hdOptionsInteractive,!paused,!showControls,active,let game = machine,LotusHDOptionsMenu.rows.indices.contains(row) else { return }
        releaseInput()
        if row == 4 || row == 7 {
            game.putWord(0x1b05e,UInt32(row))
            controlsPlayer = row == 4 ? .one:.two
            showControls = true
        } else {
            game.putWord(0x1b05e,UInt32(row))
            // Values are changed by the original option handler, including its
            // display strings and the settings later copied into the race.
            if [0,1,3,6].contains(row) { optionsClick = 2 }
        }
        view?.window?.makeFirstResponder(view);view?.needsDisplay = true
    }
    private var editingName: Bool {
        guard !online.isEngaged,!showControls, !paused, let game = machine else { return false }
        // Original option rows 2/5 edit the player names at $13266/$132c2.
        return game.word(0x1afe0) == 40 && game.word(0x1b762) == 8 && [2,5].contains(game.word(0x1b05e))
    }

    init(assetsURL: URL? = nil, preferences: UserDefaults = .standard, controllers: ControllerHub? = nil, keyboard: KeyboardInput? = nil, audioEnabled: Bool = true,highScoresURL: URL? = nil) {
        self.assetsURL = assetsURL; self.preferences = preferences; self.audioEnabled = audioEnabled
        highScores=LotusHighScores(url:highScoresURL ?? (assetsURL==nil ? LotusHighScores.defaultURL:nil))
        onlineNickname=preferences.string(forKey:"Lotus.Online.Nickname") ?? ""
        audio = PaulaAudio(assetsURL: assetsURL)
        self.controllers = controllers ?? ControllerHub(preferences: preferences)
        self.keyboard = keyboard ?? KeyboardInput(preferences: preferences)
        displayRate = preferences.integer(forKey: "Lotus.DisplayRate") == 60 ? 60 : 50
        muted = preferences.bool(forKey: "Lotus.Muted")
        hdAudioEnabled = preferences.bool(forKey: "Lotus.HDAudio")
        // Production resources are validated and loaded once by reload().
        // Explicit command-line fixtures keep their existing injection path.
        graphics = assetsURL.flatMap { LotusHDGraphics(assetsURL:$0) }
        hdGraphicsEnabled = graphics != nil && preferences.bool(forKey:"Lotus.HDGraphics")
        audio.hdAudioEnabled = hdAudioEnabled
        self.controllers.onChange = { [weak self] in self?.paused = true; self?.releaseInput() }
        online.onStart = { [weak self] in try self?.resetOnlineGame() }
        raceChat.onChange = { [weak self] in self?.view?.needsDisplay=true }
        online.onChat = { [weak self] sender,text in
            guard let self,self.racing else { return }
            self.raceChat.receive(sender:sender,text:text,name:self.online.playerNames[sender])
        }
        online.onScoreSync = { [weak self] in
            guard let self else { return }
            self.online.synchronizeScores(self.highScores.best(for:self.online.nickname))
        }
        online.onEnd = { [weak self] in
            guard let self else { return }
            self.cancelRaceChat();self.raceChat.clear()
            self.paused=true;self.onlinePaused=false;self.audio.pause()
            if self.showControls {
                self.showControls=false
                DispatchQueue.main.async { [weak self] in
                    guard let self,self.online.phase == .failed else { return }
                    self.showOnline=true
                }
            } else { self.showOnline=true }
            self.view?.needsDisplay=true
        }
        reload()
    }
    private func reload(allowPreparation: Bool = true) {
        musicControlsAvailable = false;radioDisplayMachine=nil;radioMusicFrames=0;radioSeek=0;radioSeekUntil=0
        do {
            let program: Data, disk: [Int: [UInt8]]
            if let base = assetsURL {
                // Explicit fixture injection for command-line engine checks only.
                program = try Data(contentsOf: base.appendingPathComponent("program.bin"))
                let files = try FileManager.default.contentsOfDirectory(at: base.appendingPathComponent("Disk"), includingPropertiesForKeys: nil)
                var loaded = [Int: [UInt8]]()
                for file in files where file.pathExtension == "scr" {
                    if let index = Int(file.deletingPathExtension().lastPathComponent.dropFirst(4), radix: 16) { loaded[index] = Array(try Data(contentsOf: file)) }
                }
                disk = loaded
            } else {
                let loaded = try LotusOriginalData.load(at: LotusOriginalData.defaultURL, catalogue: importCatalogue())
                do { try LotusResourceStore.validate(at:LotusOriginalData.defaultURL,loaded:loaded,bundle:Bundle.main.bundleURL) }
                catch {
                    if allowPreparation { prepareExistingResources();return }
                    throw error
                }
                graphics = LotusHDGraphics(assetsURL:nil)
                guard graphics != nil else { throw LotusResourceStore.Failure.cache }
                hdGraphicsEnabled = preferences.bool(forKey:"Lotus.HDGraphics")
                program = loaded.program; disk = loaded.disk
            }
            guard disk.count == 95, program.count == 0x100000 else { throw LotusOriginalData.Failure.damaged }
            originalProgram = program
            machine = LotusMachine(program: program, disk: disk)
            machine?.captureVideoObjects = hdGraphicsEnabled
            failure = nil;needsOriginalData = false;originalDataNotice = nil
        } catch {
            machine = nil;originalProgram = nil
            if assetsURL == nil {
                needsOriginalData = true;failure = nil
                originalDataNotice = FileManager.default.fileExists(atPath: LotusOriginalData.defaultURL.path) ? LotusOriginalData.Failure.damaged.localizedDescription:nil
            } else { failure = error.localizedDescription }
        }
        audio.muted = muted
    }
    private func importCatalogue() throws -> LotusOriginalData.Catalogue {
        guard let url = Bundle.main.resourceURL?.appendingPathComponent("OriginalData/profiles.json") else { throw LotusOriginalData.Failure.helper }
        return try LotusOriginalData.catalogue(at: url)
    }
    private func prepareExistingResources() {
        guard !importingOriginalData else { return }
        needsOriginalData=true;importingOriginalData=true
        originalDataNotice=L10n.text("Preparing local reference data from your imported game…")
        let cancellation=LotusOriginalData.Cancellation(),bundle=Bundle.main.bundleURL
        importCancellation=cancellation
        Task { [weak self] in
            let error=await Task.detached(priority:.userInitiated) { () -> String? in
                do {
                    let catalogue=try LotusOriginalData.catalogue(at:bundle.appendingPathComponent("Contents/Resources/OriginalData/profiles.json"))
                    try LotusOriginalData.prepareInstalled(at:LotusOriginalData.defaultURL,catalogue:catalogue,cancellation:cancellation) { ready in
                        try LotusResourceStore.prepare(at:ready,bundle:bundle,cancellation:cancellation)
                    }
                    return nil
                } catch { return error.localizedDescription }
            }.value
            guard let self else { return }
            self.importingOriginalData=false;self.importCancellation=nil
            if let error { self.originalDataNotice=error }
            else {
                self.reload(allowPreparation:false);self.paused=false;self.frameClock.reset()
                if self.view != nil { self.start();self.view?.window?.makeFirstResponder(self.view) }
            }
        }
    }
    func chooseOriginalADF(ownershipConfirmed: Bool) {
        guard needsOriginalData,!importingOriginalData else { return }
        guard ownershipConfirmed else { originalDataNotice = LotusOriginalData.Failure.ownership.localizedDescription;return }
        let panel = NSOpenPanel()
        panel.title = L10n.text("Select the original Lotus 1 ADF")
        panel.allowedFileTypes = ["adf"];panel.allowsMultipleSelection = false;panel.canChooseDirectories = false
        guard panel.runModal() == .OK,let adf = panel.url else { return }
        do {
            let catalogue = try importCatalogue()
            let bundle=Bundle.main.bundleURL,helpers = bundle.appendingPathComponent("Contents/Helpers")
            let cancellation = LotusOriginalData.Cancellation()
            importCancellation = cancellation;importingOriginalData = true;originalDataNotice = nil
            Task { [weak self] in
                let error = await Task.detached(priority: .userInitiated) { () -> String? in
                    let access = adf.startAccessingSecurityScopedResource()
                    defer { if access { adf.stopAccessingSecurityScopedResource() } }
                    do {
                        try LotusOriginalData.install(adf: adf,destination: LotusOriginalData.defaultURL,helpers: helpers,
                                                      catalogue: catalogue,ownershipConfirmed: ownershipConfirmed,cancellation: cancellation) { ready in
                            try LotusResourceStore.prepare(at:ready,bundle:bundle,cancellation:cancellation)
                        }
                        return nil
                    } catch { return error.localizedDescription }
                }.value
                guard let self else { return }
                self.importingOriginalData = false;self.importCancellation = nil
                if let error { self.originalDataNotice = error }
                else {
                    self.reload(allowPreparation:false);self.paused = false;self.frameClock.reset()
                    if self.view != nil { self.start();self.view?.window?.makeFirstResponder(self.view) }
                }
            }
        } catch { originalDataNotice = error.localizedDescription }
    }
    func cancelOriginalImport() { importCancellation?.cancel() }
    func requestOriginalDataImport() {
        guard !importingOriginalData else { return }
        stop();showOnline = false;showControls = false;onlinePaused = false
        machine = nil;originalProgram = nil;image = nil;originalImage = nil
        musicControlsAvailable = false;originalDataNotice = nil;needsOriginalData = true
        view?.needsDisplay = true
    }
    func retryInstalledOriginalData() {
        guard needsOriginalData,!importingOriginalData else { return }
        reload()
        if !needsOriginalData { paused = false;start() }
    }
    func start() {
        guard timer == nil,!needsOriginalData else { return }
        controllers.start()
        frameClock.reset()
        scheduleDisplayTimer()
    }
    private func scheduleDisplayTimer() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1.0/Double(displayRate), repeats: true) { [weak self] _ in
            MainActor.assumeIsolated { self?.displayFrame(at: ProcessInfo.processInfo.systemUptime) }
        }
        if let timer { RunLoop.main.add(timer, forMode: .common) }
    }
    func displayFrame(at time: TimeInterval) {
        guard timer != nil else { return }
        if online.isEngaged {
            if online.isPlaying {
                let update=frameClock.advance(to:time)
                let before=machine?.frameNumber
                let started=ProcessInfo.processInfo.systemUptime
                for _ in 0..<update.steps { tickOnline(renderFrame:false) }
                presentAfterSimulation(before:before,started:started,time:time)
            } else { frameClock.reset(at:time);audio.pause() }
            return
        }
        if paused || showControls || showOnline || !active || failure != nil {
            frameClock.reset(at: time)
            tick(renderFrame: false)
            return
        }
        let update = frameClock.advance(to: time)
        let before=machine?.frameNumber
        let started=ProcessInfo.processInfo.systemUptime
        for _ in 0..<update.steps { tick(renderFrame:false) }
        presentAfterSimulation(before:before,started:started,time:time)
    }
    func stop() { cancelOriginalImport();timer?.invalidate(); timer = nil;online.disconnect(); frameClock.reset(); cancelLearning(); controllers.stop(); audio.stop(); releaseInput() }
    func attachSurface(_ surface: LotusView) {
        surface.session = self; view = surface
        // makeNSView runs inside SwiftUI's update. Controller discovery publishes
        // device/input changes, so start it after that update has returned.
        DispatchQueue.main.async { [weak self, weak surface] in
            guard let self, let surface, self.view === surface, surface.session === self else { return }
            self.start()
        }
    }
    func detachSurface(_ surface: LotusView) {
        guard view === surface else { return }
        // SwiftUI is destroying its graph here. Stop runtime work immediately,
        // then publish controller/keyboard cleanup after dismantleNSView returns.
        surface.session = nil; view = nil
        timer?.invalidate(); timer = nil; frameClock.reset()
        audio.stop(); releaseInput()
        DispatchQueue.main.async { [self] in
            // A representable can be reattached before the next run-loop turn.
            guard view == nil else { return }
            stop()
        }
    }
    func restart() {
        online.disconnect();onlinePaused=false;showOnline=false
        releaseInput(); audio.stop(); paused = false; frameClock.reset(); ticks = 0; image = nil; originalImage = nil; reload()
        musicPaused = false; musicTrack = nil; audio.musicPaused = false
        view?.window?.makeFirstResponder(view)
    }
    func updateWindowMode() {
        let fullScreen = view?.window?.styleMask.contains(.fullScreen) ?? false
        if isFullScreen != fullScreen { isFullScreen = fullScreen }
    }
    func toggleFullScreen() {
        guard let view, let window = view.window else { return }
        releaseInput()
        window.makeFirstResponder(view)
        window.toggleFullScreen(nil)
    }
    func skipMusic(_ direction: Int) {
        guard canControlMusic, let game = machine else { return }
        do {
            try audio.skipMusic(direction,source:game); musicTrack = audio.musicTrack
            radioMusicFrames=0;radioSeek=direction;radioSeekUntil=game.frameNumber+12
        }
        catch { failure = L10n.format("Music playback: %@",error.localizedDescription) }
        view?.window?.makeFirstResponder(view)
    }
    func toggleMusicPlayback() {
        guard canControlMusic, let game = machine else { return }
        do {
            if musicTrack == nil || musicPaused {
                try audio.beginMusic(source:game); musicPaused = false
            } else { musicPaused = true }
            audio.musicPaused = musicPaused; musicTrack = audio.musicTrack
        } catch { failure = L10n.format("Music playback: %@",error.localizedDescription) }
        view?.window?.makeFirstResponder(view)
    }
    func releaseInput() {
        optionsClick = 0
        optionsHeldDirections = 0
        onlinePendingButtons = 0
        keyboard.releaseUntilNeutral(); keyQueue.removeAll(); textKeys.removeAll(); controllers.neutralize()
        // Online state may only be changed by the same relayed frame on both Macs.
        if !online.isEngaged,let game = machine {
            game.buttons1 = 0; game.buttons2 = 0; game.keyPending = false
            game.custom[0x1e/2] &= ~8
            game.putByte(0x194b6, 0); game.putByte(0x1af9a, 255)
        }
    }
    func setActive(_ value: Bool) {
        active = value
        frameClock.reset()
        if !value {
            cancelRaceChat()
            cancelLearning()
            // Two online windows cannot both be key at once. Focus loss must
            // release local controls without repeatedly pausing the shared race.
            if !online.isEngaged { paused = true }
            releaseInput();audio.pause()
        }
    }
    func cancelLearning() { keyboard.cancelLearning(); controllers.cancelLearning() }
    func learnKey(_ selection: KeyboardInput.Selection) {
        cancelLearning(); releaseInput(); keyboard.beginLearning(selection)
    }
    func learnController(_ player: PlayerSlot, _ action: DriveAction) {
        cancelLearning(); releaseInput(); controllers.input(player).beginLearning(action)
    }
    func connectOnline(host: String,port: UInt16,room: String,create: Bool,difficulty: UInt8,gears: UInt8,
                       privateRoom: Bool = true,title: String = "Lotus race") {
        guard let game=machine,let program=originalProgram else { return }
        cancelLearning();releaseInput();audio.stop();frameClock.reset()
        online.connect(host:host,port:port,room:room.uppercased(),create:create,
                       configuration:.init(difficulty:difficulty,gears:gears,delay:8),
                       identity:LotusOnlineSimulation.identity(program:program,disk:game.disk),privateRoom:privateRoom,title:title,nickname:onlineNickname)
    }
    func enterOnlineLobby(host: String,port: UInt16) {
        let nickname=onlineNickname.trimmingCharacters(in:.whitespacesAndNewlines).precomposedStringWithCanonicalMapping
        guard LotusOnlineProtocol.validNickname(nickname) else { return }
        onlineNickname=nickname;highScores.claimUnassigned(nickname)
        online.browse(host:host,port:port,nickname:nickname)
    }
    func leaveOnline() { online.disconnect();restart() }
    @discardableResult func beginRaceChat() -> Bool {
        guard online.isPlaying,racing,active,!showControls,!showOnline,failure==nil else { return false }
        raceChat.beginEditing();releaseInput();view?.openChatEditor()
        return true
    }
    func cancelRaceChat() {
        guard raceChat.isEditing else { return }
        raceChat.endEditing();releaseInput();view?.closeChatEditor()
    }
    @discardableResult func sendRaceChat(_ draft: String) -> Bool {
        guard raceChat.isEditing,online.isPlaying,racing else { cancelRaceChat();return false }
        let text=draft.trimmingCharacters(in:.whitespacesAndNewlines)
        if text.isEmpty { cancelRaceChat();return true }
        guard online.sendChat(text) else { return false }
        cancelRaceChat();return true
    }
    private func resetOnlineGame() throws {
        cancelRaceChat();raceChat.clear()
        releaseInput();audio.stop();reload()
        guard let game=machine,failure==nil else { throw LotusOnlineProtocol.Failure.packet }
        try LotusOnlineSimulation.prepare(game,configuration:online.configuration)
        paused=false;onlinePaused=false;showOnline=false;showControls=false
        frameClock.reset();ticks=0;musicPaused=false;musicTrack=nil;audio.musicPaused=false
        originalImage=game.makeImage()
        if let originalImage { image=hdGraphicsEnabled ? graphics?.render(originalImage,machine:game) ?? originalImage:originalImage }
        view?.window?.makeFirstResponder(view);view?.needsDisplay=true
    }
    private func tickOnline(renderFrame: Bool = true) {
        let keys=keyboard.sample(.one),pad=controllers.input(.one).sample()
        let commands=keys.1.union(pad.1)
        let learning=keyboard.learning != nil || controllers.players.contains{$0.learning != nil}
        if active && !learning && !raceChat.isEditing {
            if commands.contains(.help) { controlsPlayer = .one;showControls.toggle() }
            else if commands.contains(.menu) { paused=true;showOnline=true }
            else if commands.contains(.pause) { paused.toggle() }
            else if paused && !showControls && !showOnline && commands.contains(.fire) { paused=false }
        }
        let sharedHold=paused || showControls || showOnline || learning
        let held=sharedHold || !active || raceChat.isEditing
        if onlineRadioInteractive && !held {
            if commands.contains(.left) { skipMusic(-1) }
            else if commands.contains(.right) { skipMusic(1) }
        }
        if held { onlinePendingButtons=0 }
        else { onlinePendingButtons |= commands.reduce(UInt8(0)){$0|$1.bit} }
        // Radio seek is local audio/presentation, never a relayed steering
        // input. Fire/confirm continues to advance the shared native screen.
        let buttons=(keys.0|pad.0|onlinePendingButtons) & (onlineRadioVisible ? 0xfc:0xff)
        let local=LotusOnlineProtocol.Input(buttons:held ? 0:buttons,flags:sharedHold ? 1:0)
        // A missing packet is not a user pause. Let the bounded audio queue
        // drain naturally instead of stopping/restarting AVAudioEngine and
        // discarding its pre-roll on every brief network wait.
        guard let frame=online.takeFrame(local:local) else { return }
        onlinePendingButtons=0
        if frame.players[0].flags&2 != 0 {
            do { try resetOnlineGame() } catch { online.simulationFailed();return }
        }
        guard let game=machine,failure==nil else { online.simulationFailed();return }
        let sharedPause=frame.players.contains{$0.flags&1 != 0}
        if onlinePaused != sharedPause { onlinePaused=sharedPause;view?.needsDisplay=true }
        if sharedPause { audio.pause() }
        else {
            let wasRacing=racing,before=PlayerSlot.allCases.map{rumbleState(game,$0)}
            LotusOnlineSimulation.advance(game,frame:frame,configuration:online.configuration)
            finishFrame(game,wasRacing:wasRacing,before:before,renderFrame:renderFrame)
        }
        if online.nextFrame%100==0 { online.report(LotusOnlineSimulation.digest(game)) }
    }
    func tick(renderFrame: Bool = true) {
        if online.isEngaged {
            if online.isPlaying { tickOnline(renderFrame:renderFrame) }
            return
        }
        let wasBlocked = paused || showControls || showOnline || !active
        let wasLearning = keyboard.learning != nil || controllers.players.contains { $0.learning != nil }
        var bits = [UInt8](repeating: 0, count: 2)
        var commands = [PlayerSlot: Set<DriveAction>]()
        for player in PlayerSlot.allCases {
            let keys = keyboard.sample(player)
            let pad = controllers.input(player).sample()
            bits[player.rawValue] = keys.0 | pad.0
            commands[player] = keys.1.union(pad.1)
        }
        if !wasLearning && active {
            if !wasBlocked,let game = machine,game.magneticFieldsIntroActive,
               bits.contains(where:{$0 != 0}) || commands.values.contains(where:{!$0.isEmpty}) {
                game.skipMagneticFieldsIntro();releaseInput();bits = [0,0]
            } else if let player = PlayerSlot.allCases.first(where: { commands[$0]!.contains(.help) }) {
                let close = showControls && controlsPlayer == player
                controlsPlayer = player; showControls = !close
            } else if commands.values.contains(where: { $0.contains(.menu) }) {
                if showControls { showControls = false }
                else { paused = false; keyQueue.append(contentsOf: [0x45,0xc5]) }
            } else if commands.values.contains(where: { $0.contains(.pause) }) {
                if showControls { showControls = false; paused = false } else { paused.toggle() }
            } else if paused && commands.values.contains(where: { $0.contains(.fire) }) { paused = false }
        }
        guard !wasBlocked, active, !paused, !showControls, failure == nil, let game = machine else { return }
        if hdOptionsInteractive {
            var row = min(7,Int(game.word(0x1b05e)))
            let edges = commands[.one,default:[]].union(commands[.two,default:[]])
            // An unassigned analogue stick supplies direction bits without a
            // DriveAction command. Detect edges in those bits as well.
            let directions = (bits[0] | bits[1]) & 12
            let pressed = directions & ~optionsHeldDirections
            optionsHeldDirections = directions
            if pressed&8 != 0 { row = (row+7)%8 }
            if pressed&4 != 0 { row = (row+1)%8 }
            game.putWord(0x1b05e,UInt32(row))
            // Omit the obsolete port row, and let either player's bindings
            // navigate the eight visible entries without a held-key repeat.
            bits[0] = (bits[0] | bits[1]) & ~12
            bits[1] = 0
            if row == 4 || row == 7 {
                bits[0] &= ~3
                if edges.contains(.fire) { activateHDMenuRow(row);return }
                bits[0] &= ~16
            }
            bits[0] |= optionsClick;optionsClick = 0
        }
        game.buttons1 = bits[0]; game.buttons2 = bits[1]
        game.decorativeClassicControlRows = !hdGraphicsEnabled
        // The original can read player two from JOY0 or its keyboard latch.
        // Feed both native input boundaries so either original input mode works.
        game.putByte(0x194b6, UInt32(bits[1]))
        if !game.keyPending, !keyQueue.isEmpty { game.sendKey(keyQueue.removeFirst()) }
        let wasRacing = racing
        let before = PlayerSlot.allCases.map { rumbleState(game, $0) }
        game.runFrame()
        finishFrame(game,wasRacing:wasRacing,before:before,renderFrame:renderFrame)
    }
    private func finishFrame(_ game: LotusMachine,wasRacing: Bool,before: [ControllerRumble.State],renderFrame: Bool) {
        audio.independentRaceMusic=online.isPlaying
        for result in game.championshipResults {
            let slot=online.isPlaying ? online.slot ?? 0:0
            let name=online.isPlaying ? online.nickname:onlineNickname
            highScores.record(difficulty:result.difficulty,score:result.scores[slot],
                nickname:LotusOnlineProtocol.validNickname(name) ? name:"")
        }
        game.championshipResults.removeAll()
        let musicEligible = (racing && (online.isPlaying || game.musicGeneration>0)) || onlineRadioVisible
        if musicControlsAvailable != musicEligible { musicControlsAvailable = musicEligible }
        if wasRacing && !racing {
            cancelRaceChat();raceChat.clear()
            audio.resetMusicControls();musicPaused = false;musicTrack = nil
        }
        if let fault = game.fault { failure = L10n.format("Game engine: %@", fault); audio.pause(); controllers.neutralize(); return }
        if wasRacing && racing && game.word(0x1a970) == 0 {
            if online.isPlaying,let slot=online.slot,let player=PlayerSlot(rawValue:slot) {
                controllers.input(.one).rumble.update(before:before[slot],after:rumbleState(game,player))
            } else {
                for player in PlayerSlot.allCases where player == .one || game.word(0x1b062) != 0 {
                    controllers.input(player).rumble.update(before: before[player.rawValue], after: rumbleState(game, player))
                }
            }
        }
        if audioEnabled {
            audio.enqueue(game)
            if musicTrack != audio.musicTrack { musicTrack = audio.musicTrack }
            if musicPaused != audio.musicPaused { musicPaused = audio.musicPaused }
        }
        if onlineRadioVisible,musicTrack != nil,!musicPaused { radioMusicFrames+=1 }
        if renderFrame { presentFrame() }
        else { game.latchVideoState() }
        ticks += 1
        if ticks % 25 == 0 { status = racing ? L10n.text("ORIGINAL RACE · 50 Hz") : "AMIGA · 1990 GREMLIN" }
    }
    private func presentFrame() {
        guard let game=machine else { return }
        let started=ProcessInfo.processInfo.systemUptime
        originalImage=game.makeImage()
        radioDisplayMachine = onlineRadioVisible ? localRadio.presentation(from:game,track:musicTrack,frames:radioMusicFrames,
            seek:game.frameNumber<radioSeekUntil ? radioSeek:0):nil
        if let radioDisplayMachine { originalImage=radioDisplayMachine.makeImage() }
        if let originalImage { image=hdGraphicsEnabled ? graphics?.render(originalImage,machine:radioDisplayMachine ?? game) ?? originalImage:originalImage }
        presentation.recordRender(ProcessInfo.processInfo.systemUptime-started)
        view?.needsDisplay=true
    }
    private func presentAfterSimulation(before: Int?,started: TimeInterval,time: TimeInterval) {
        guard let before,let game=machine,game.frameNumber>before else { return }
        presentation.recordLogic((ProcessInfo.processInfo.systemUptime-started)/Double(game.frameNumber-before))
        if presentation.shouldPresent(at:time) { presentFrame() }
    }
    private func rumbleState(_ game: LotusMachine, _ player: PlayerSlot) -> ControllerRumble.State {
        let base = player == .one ? 0x1a980 : 0x1aa36
        let impact = max(abs(Int(Int16(truncatingIfNeeded: game.word(base+0x72)))),
                         abs(Int(Int16(truncatingIfNeeded: game.word(base+0x74)))))
        return .init(gear: game.word(base+0x8c), impact: impact, moving: game.word(base+0x10) > 500)
    }
    func keyDown(_ code: UInt16, repeating: Bool, characters: String? = nil) {
        guard !needsOriginalData else { return }
        if raceChat.isEditing { return }
        if online.isEngaged { keyboard.keyDown(code,repeating:repeating);return }
        if !paused,!showControls,active,let game = machine,game.magneticFieldsIntroActive,KeyboardInput.valid(Int(code)) {
            keyboard.keyDown(code,repeating:repeating)
            // Keep a held skip key blocked until keyUp, including autorepeat
            // after the options screen appears. It must not start a race too.
            keyboard.releaseUntilNeutral()
            if !repeating { game.skipMagneticFieldsIntro() }
            return
        }
        if editingName {
            let character = characters?.uppercased()
            let raw = character.flatMap { character in Self.nameKeys.values.first { $0.1 == character }?.0 } ?? Self.nameKeys[code]?.0
            if let raw {
                textKeys[code] = raw; keyQueue.append(raw)
                if keyQueue.count > 64 { keyQueue.removeFirst() }
                return
            }
        }
        keyboard.keyDown(code, repeating: repeating)
    }
    func keyUp(_ code: UInt16) {
        if let raw = textKeys.removeValue(forKey: code) { keyQueue.append(raw | 128) }
        keyboard.keyUp(code)
    }
    func modifierChanged(_ event: NSEvent) {
        if editingName { return }
        if event.keyCode == 57 {
            keyDown(event.keyCode, repeating: false); keyUp(event.keyCode)
        } else if let down = KeyboardInput.modifierDown(event) {
            if down { keyDown(event.keyCode, repeating: false) } else { keyUp(event.keyCode) }
        }
    }
    private static let nameKeys: [UInt16: (UInt8, String)] = [
        0:(0x20,"A"),1:(0x21,"S"),2:(0x22,"D"),3:(0x23,"F"),4:(0x25,"H"),5:(0x24,"G"),
        6:(0x31,"Z"),7:(0x32,"X"),8:(0x33,"C"),9:(0x34,"V"),11:(0x35,"B"),12:(0x10,"Q"),
        13:(0x11,"W"),14:(0x12,"E"),15:(0x13,"R"),16:(0x15,"Y"),17:(0x14,"T"),
        18:(0x01,"1"),19:(0x02,"2"),20:(0x03,"3"),21:(0x04,"4"),22:(0x06,"6"),23:(0x05,"5"),
        24:(0x0c,"="),25:(0x09,"9"),26:(0x07,"7"),27:(0x0b,"-"),28:(0x08,"8"),29:(0x0a,"0"),
        30:(0x1b,"]"),31:(0x18,"O"),32:(0x16,"U"),33:(0x1a,"["),34:(0x17,"I"),35:(0x19,"P"),
        37:(0x28,"L"),38:(0x26,"J"),39:(0x2a,"'"),40:(0x27,"K"),41:(0x29,";"),42:(0x0d,"\\"),
        43:(0x38,","),44:(0x3a,"/"),45:(0x36,"N"),46:(0x37,"M"),47:(0x39,"."),49:(0x40," "),51:(0x41,"\u{8}"),
        82:(0x0a,"0"),83:(0x01,"1"),84:(0x02,"2"),85:(0x03,"3"),86:(0x04,"4"),
        87:(0x05,"5"),88:(0x06,"6"),89:(0x07,"7"),91:(0x08,"8"),92:(0x09,"9")
    ]
}
