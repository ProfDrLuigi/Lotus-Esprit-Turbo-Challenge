import Combine
import CoreHaptics
import GameController

@MainActor protocol ControllerHapticDriver: AnyObject {
    func connect(_ controller: GCController?) -> Bool
    func play(_ cue: ControllerRumble.Cue, strength: Double) throws
    func stop()
}

@MainActor final class CoreHapticControllerDriver: ControllerHapticDriver {
    private var engine: CHHapticEngine?
    private var player: CHHapticPatternPlayer?
    private var started = false

    func connect(_ controller: GCController?) -> Bool {
        stop()
        engine?.stoppedHandler = { _ in }; engine?.resetHandler = {}
        engine?.stop(completionHandler: nil)
        engine = nil; started = false
        guard let haptics = controller?.haptics,
              haptics.supportedLocalities.contains(.default),
              let engine = haptics.createEngine(withLocality: .default) else { return false }
        self.engine = engine
        engine.playsHapticsOnly = true
        engine.isAutoShutdownEnabled = true
        engine.stoppedHandler = { [weak self, weak engine] _ in
            Task { @MainActor in
                guard let self, self.engine === engine else { return }
                self.started = false; self.player = nil
            }
        }
        engine.resetHandler = { [weak self, weak engine] in
            Task { @MainActor in
                guard let self, self.engine === engine else { return }
                self.started = false; self.player = nil
            }
        }
        return true
    }
    func play(_ cue: ControllerRumble.Cue, strength: Double) throws {
        guard let engine else { return }
        if !started { try engine.start(); started = true }
        let next = try engine.makePlayer(with: cue.pattern(strength: strength))
        try? player?.stop(atTime: CHHapticTimeImmediate)
        player = next
        try next.start(atTime: CHHapticTimeImmediate)
    }
    func stop() { try? player?.stop(atTime: CHHapticTimeImmediate); player = nil }
}

@MainActor final class ControllerRumble: ObservableObject {
    enum Cue: CaseIterable {
        case shift, impact, test
        var duration: Double { self == .shift ? 0.08 : self == .impact ? 0.22 : 0.25 }
        var priority: Int { self == .shift ? 0 : self == .impact ? 1 : 2 }
        func pattern(strength: Double) throws -> CHHapticPattern {
            let base = self == .shift ? 0.3 : self == .impact ? 0.9 : 0.7
            let event = CHHapticEvent(eventType: .hapticContinuous, parameters: [
                CHHapticEventParameter(parameterID: .hapticIntensity, value: Float(base * ControllerRumble.clamp(strength))),
                CHHapticEventParameter(parameterID: .hapticSharpness, value: self == .shift ? 0.5 : 0.2)
            ], relativeTime: 0, duration: duration)
            return try CHHapticPattern(events: [event], parameters: [])
        }
    }
    struct State {
        let gear: UInt32
        let impact: Int
        let moving: Bool
    }
    @Published var enabled: Bool {
        didSet { preferences.set(enabled, forKey: prefix + ".Enabled"); if !enabled { stop() } }
    }
    @Published var strength: Double {
        didSet {
            let normalized = Self.clamp(strength)
            if strength != normalized { strength = normalized; return }
            preferences.set(strength, forKey: prefix + ".Strength"); stop()
        }
    }
    @Published private(set) var available = false
    @Published private(set) var connected = false
    @Published private(set) var error: String?
    private let preferences: UserDefaults
    private let prefix: String
    private let driver: ControllerHapticDriver
    private let clock: () -> TimeInterval
    private weak var controller: GCController?
    private var until = -Double.infinity, lastStart = -Double.infinity, retryAfter = -Double.infinity
    private var priority = -1

    init(player: PlayerSlot, preferences: UserDefaults = .standard, driver: ControllerHapticDriver? = nil,
         clock: @escaping () -> TimeInterval = { ProcessInfo.processInfo.systemUptime }) {
        self.preferences = preferences; prefix = player.prefix + ".Rumble"
        self.driver = driver ?? CoreHapticControllerDriver(); self.clock = clock
        enabled = preferences.object(forKey: prefix + ".Enabled") as? Bool ?? true
        strength = Self.clamp(preferences.object(forKey: prefix + ".Strength") as? Double ?? 0.5)
    }
    nonisolated private static func clamp(_ value: Double) -> Double { value.isFinite ? min(1, max(0, value)) : 0 }
    func connect(_ controller: GCController?) {
        guard controller !== self.controller else { return }
        stop(); self.controller = controller; connected = controller != nil
        available = driver.connect(controller); error = nil; retryAfter = -Double.infinity
    }
    func play(_ cue: Cue) {
        guard enabled, strength > 0, available else { return }
        let now = clock()
        guard cue == .test || now >= retryAfter else { return }
        guard now >= until || cue.priority >= priority else { return }
        guard now - lastStart >= 0.05 || cue.priority > priority else { return }
        do {
            try driver.play(cue, strength: strength)
            lastStart = now; until = now + cue.duration; priority = cue.priority
            error = nil; retryAfter = -Double.infinity
        } catch {
            self.error = L10n.text("Could not start rumble. Use Test to try again.")
            retryAfter = now + 1; until = -Double.infinity; priority = -1
        }
    }
    func update(before: State, after: State) {
        // Original collision routines $15832/$15954 write the signed knockback
        // at player+$72/$74; $15b62 decays it. Gear is stored at player+$8c.
        if after.impact > before.impact + 2 { play(.impact) }
        else if before.moving && after.moving && before.gear != after.gear { play(.shift) }
    }
    func stop() {
        driver.stop(); until = -Double.infinity; priority = -1; lastStart = -Double.infinity
    }
}
