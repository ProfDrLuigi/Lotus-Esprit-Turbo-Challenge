import Foundation
import GameController
import Combine

@MainActor final class ControllerInput: ObservableObject {
    let player: PlayerSlot
    let rumble: ControllerRumble
    @Published private(set) var name: String?
    @Published private(set) var bindings: [String: String]
    @Published private(set) var learning: DriveAction?
    @Published var deadZone: Double {
        didSet {
            let normalized = Self.clampZone(deadZone)
            if deadZone != normalized { deadZone = normalized; return }
            preferences.set(deadZone, forKey: player.prefix + ".DeadZone"); neutralize()
        }
    }
    @Published var useStick: Bool {
        didSet { preferences.set(useStick, forKey: player.prefix + ".UseStick"); neutralize() }
    }
    private(set) var controller: GCController?
    private var pending = Set<DriveAction>(), held = Set<DriveAction>(), pressedControls = Set<String>()
    private var waitingForNeutral = true
    private var recordedControl: String?
    private let preferences: UserDefaults
    static let defaults = ["left":"dpad.left", "right":"dpad.right", "accelerate":"rightTrigger",
                           "brake":"leftTrigger", "fire":"buttonA", "pause":"buttonMenu", "menu":"buttonB", "help":"buttonX"]
    static let options: [(String, String)] = [
        ("", "Unassigned"), ("buttonA", "Bottom action button"), ("buttonB", "Right action button"),
        ("buttonX", "Left action button"), ("buttonY", "Top action button"),
        ("leftTrigger", "Left trigger"), ("rightTrigger", "Right trigger"),
        ("leftShoulder", "Left shoulder button"), ("rightShoulder", "Right shoulder button"),
        ("dpad.left", "D-pad left"), ("dpad.right", "D-pad right"),
        ("dpad.up", "D-pad up"), ("dpad.down", "D-pad down"), ("buttonMenu", "Menu button"),
        ("buttonOptions", "Options button"), ("leftThumbstickButton", "Left stick button"), ("rightThumbstickButton", "Right stick button"),
        ("leftStick.left", "Left stick left"), ("leftStick.right", "Left stick right"),
        ("leftStick.up", "Left stick up"), ("leftStick.down", "Left stick down"),
        ("rightStick.left", "Right stick left"), ("rightStick.right", "Right stick right"),
        ("rightStick.up", "Right stick up"), ("rightStick.down", "Right stick down")
    ]
    init(player: PlayerSlot = .one, preferences: UserDefaults = .standard, rumble: ControllerRumble? = nil) {
        self.player = player; self.preferences = preferences
        self.rumble = rumble ?? ControllerRumble(player: player, preferences: preferences)
        deadZone = Self.clampZone(preferences.object(forKey: player.prefix + ".DeadZone") as? Double ?? 0.30)
        useStick = preferences.object(forKey: player.prefix + ".UseStick") as? Bool ?? true
        bindings = Self.defaults
        let saved = preferences.dictionary(forKey: player.prefix + ".ControllerBindings") as? [String: String]
            ?? (player == .one ? preferences.dictionary(forKey: "Lotus.ControllerBindings") as? [String: String] : nil)
        if let saved {
            var occupied = Set<String>()
            for action in DriveAction.allCases {
                let id = saved[action.rawValue] ?? Self.defaults[action.rawValue]!
                if Self.options.contains(where: { $0.0 == id }) {
                    bindings[action.rawValue] = id.isEmpty || occupied.insert(id).inserted ? id : ""
                }
            }
        }
    }
    private static func clampZone(_ value: Double) -> Double { value.isFinite ? min(0.8, max(0, value)) : 0.3 }
    func activate(_ controller: GCController?) {
        guard controller !== self.controller else { return }
        self.controller?.extendedGamepad?.valueChangedHandler = nil
        self.controller?.playerIndex = .indexUnset
        self.controller = controller; name = controller.map { $0.vendorName ?? L10n.text("Game controller") }
        cancelLearning(); rumble.connect(controller)
        controller?.playerIndex = player == .one ? .index1 : .index2
        controller?.handlerQueue = .main
        controller?.extendedGamepad?.valueChangedHandler = { [weak self] _, _ in
            MainActor.assumeIsolated { self?.capture() }
        }
    }
    private func buttons(_ g: GCExtendedGamepad) -> [String: GCControllerButtonInput] {
        var result = ["buttonA":g.buttonA, "buttonB":g.buttonB, "buttonX":g.buttonX, "buttonY":g.buttonY,
                      "leftTrigger":g.leftTrigger, "rightTrigger":g.rightTrigger, "leftShoulder":g.leftShoulder,
                      "rightShoulder":g.rightShoulder, "dpad.left":g.dpad.left, "dpad.right":g.dpad.right,
                      "dpad.up":g.dpad.up, "dpad.down":g.dpad.down, "buttonMenu":g.buttonMenu]
        result["buttonOptions"] = g.buttonOptions
        result["leftThumbstickButton"] = g.leftThumbstickButton
        result["rightThumbstickButton"] = g.rightThumbstickButton
        return result
    }
    func neutralize() {
        waitingForNeutral = true; pending.removeAll(); held.removeAll(); pressedControls.removeAll()
    }
    private func capture() {
        guard let g = controller?.extendedGamepad else { return }
        var pressed = Set(buttons(g).filter { $0.value.isPressed }.map { $0.key })
        for (prefix, stick) in [("leftStick",g.leftThumbstick), ("rightStick",g.rightThumbstick)] {
            for (direction,value) in [("left",-stick.xAxis.value),("right",stick.xAxis.value),
                                      ("up",stick.yAxis.value),("down",-stick.yAxis.value)] {
                let id = prefix + "." + direction
                let threshold = Float(deadZone) * (pressedControls.contains(id) ? 0.6 : 1)
                if value > threshold { pressed.insert(id) }
            }
        }
        if waitingForNeutral {
            if pressed.isEmpty { waitingForNeutral = false }
            return
        }
        pressedControls = pressed
        if let action = learning {
            if let recordedControl {
                if !pressed.contains(recordedControl) { assign(action, recordedControl) }
            } else { recordedControl = Self.options.first(where: { pressed.contains($0.0) })?.0 }
            return
        }
        let next = Set(DriveAction.allCases.filter { pressed.contains(bindings[$0.rawValue] ?? "") })
        pending.formUnion(next.subtracting(held)); held = next
    }
    func sample() -> (UInt8, Set<DriveAction>) {
        capture()
        guard !waitingForNeutral, learning == nil, controller != nil else { return (0, []) }
        var bits: UInt8 = 0
        for action in held.union(pending) { bits |= action.bit }
        if useStick {
            for (direction,bit): (String,UInt8) in [("left",1),("right",2),("up",8),("down",4)] {
                let id = "leftStick." + direction
                if pressedControls.contains(id) && !bindings.values.contains(id) { bits |= bit }
            }
        }
        let actions = pending; pending.removeAll()
        return (bits, actions)
    }
    func beginLearning(_ action: DriveAction) {
        neutralize(); learning = action; recordedControl = nil
    }
    func cancelLearning() { learning = nil; recordedControl = nil; neutralize() }
    func assign(_ action: DriveAction, _ id: String) {
        guard Self.options.contains(where: { $0.0 == id }) else { return }
        let old = bindings[action.rawValue] ?? ""
        if !id.isEmpty, let other = bindings.first(where: { $0.key != action.rawValue && $0.value == id }) { bindings[other.key] = old }
        bindings[action.rawValue] = id
        preferences.set(bindings, forKey: player.prefix + ".ControllerBindings")
        cancelLearning()
    }
    func reset() {
        bindings = Self.defaults
        preferences.set(bindings, forKey: player.prefix + ".ControllerBindings"); cancelLearning()
    }
    func label(_ id: String) -> String {
        if let g = controller?.extendedGamepad, let label = buttons(g)[id]?.localizedName { return label }
        return Self.options.first(where: { $0.0 == id }).map { L10n.text($0.1) } ?? id
    }
}
