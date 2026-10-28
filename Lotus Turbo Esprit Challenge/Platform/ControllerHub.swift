import Combine
import Foundation
import GameController

@MainActor final class ControllerHub: ObservableObject {
    struct Device: Identifiable {
        let id: Int
        let controller: GCController
        var choice: String { "controller.\(id)" }
        var title: String { "\(id + 1) · \(controller.vendorName ?? L10n.text("Game controller"))" }
    }
    let players: [ControllerInput]
    @Published private(set) var devices = [Device]()
    @Published private(set) var selections: [PlayerSlot: String] = [:]
    var onChange: (() -> Void)?
    private let preferences: UserDefaults
    private var observers = [NSObjectProtocol]()

    init(preferences: UserDefaults = .standard, players: [ControllerInput]? = nil) {
        self.preferences = preferences
        self.players = players ?? PlayerSlot.allCases.map { ControllerInput(player: $0, preferences: preferences) }
        for player in PlayerSlot.allCases {
            let saved = preferences.string(forKey: player.prefix + ".ControllerChoice") ?? "automatic"
            selections[player] = Self.validChoice(saved) ? saved : "automatic"
        }
    }
    private static func validChoice(_ value: String) -> Bool {
        if value == "automatic" || value == "none" { return true }
        return value.hasPrefix("controller.") && Int(value.dropFirst(11)).map { (0..<64).contains($0) } == true
    }
    func input(_ player: PlayerSlot) -> ControllerInput { players[player.rawValue] }
    func start() {
        guard observers.isEmpty else { return }
        for event in [NSNotification.Name.GCControllerDidConnect, .GCControllerDidDisconnect] {
            observers.append(NotificationCenter.default.addObserver(forName: event, object: nil, queue: .main) { [weak self] _ in
                MainActor.assumeIsolated { self?.updateDevices(GCController.controllers()) }
            })
        }
        updateDevices(GCController.controllers())
    }
    func stop() {
        observers.forEach(NotificationCenter.default.removeObserver); observers.removeAll()
        players.forEach { $0.activate(nil) }; devices = []
    }
    func updateDevices(_ controllers: [GCController]) {
        var seen = Set<ObjectIdentifier>()
        let connected = controllers.filter { $0.extendedGamepad != nil && seen.insert(ObjectIdentifier($0)).inserted }
        var next = devices.filter { device in connected.contains { $0 === device.controller } }
        for controller in connected where !next.contains(where: { $0.controller === controller }) {
            var number = 0
            while next.contains(where: { $0.id == number }) { number += 1 }
            next.append(Device(id: number, controller: controller))
        }
        devices = next.sorted { $0.id < $1.id }
        apply()
    }
    func select(_ choice: String, for player: PlayerSlot) {
        guard Self.validChoice(choice) else { return }
        let other: PlayerSlot = player == .one ? .two : .one
        let oldDevice = devices.first { $0.controller === input(player).controller }?.choice ?? "none"
        if let selected = devices.first(where: { $0.choice == choice }),
           selected.controller === input(other).controller {
            selections[other] = oldDevice
        }
        selections[player] = choice
        for slot in PlayerSlot.allCases { preferences.set(selections[slot], forKey: slot.prefix + ".ControllerChoice") }
        apply()
    }
    private func apply() {
        var chosen = [PlayerSlot: GCController](), used = Set<ObjectIdentifier>()
        for player in PlayerSlot.allCases {
            if let device = devices.first(where: { $0.choice == selections[player] }),
               used.insert(ObjectIdentifier(device.controller)).inserted { chosen[player] = device.controller }
        }
        for player in PlayerSlot.allCases where selections[player] == "automatic" {
            let previous = input(player).controller
            let available = devices.filter { !used.contains(ObjectIdentifier($0.controller)) }
            if let device = available.first(where: { $0.controller === previous }) ?? available.first {
                chosen[player] = device.controller; used.insert(ObjectIdentifier(device.controller))
            }
        }
        let changed = PlayerSlot.allCases.filter { input($0).controller !== chosen[$0] }
        // Detach every old handler before attaching either new handler during a swap.
        for player in changed { input(player).activate(nil) }
        for player in changed { input(player).activate(chosen[player]) }
        if !changed.isEmpty { onChange?() }
    }
    func cancelLearning() { players.forEach { $0.cancelLearning() } }
    func neutralize() { players.forEach { $0.neutralize(); $0.rumble.stop() } }
}
