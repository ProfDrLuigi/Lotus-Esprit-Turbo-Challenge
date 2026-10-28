import Foundation

enum PlayerSlot: Int, CaseIterable, Identifiable {
    case one, two
    var id: Int { rawValue }
    var title: String { L10n.format("Player %ld", rawValue + 1) }
    var prefix: String { "Lotus.Player\(rawValue + 1)" }
}

enum DriveAction: String, CaseIterable, Identifiable {
    case left, right, accelerate, brake, fire, pause, menu, help
    var id: String { rawValue }
    var title: String {
        switch self {
        case .left: return L10n.text("Left")
        case .right: return L10n.text("Right")
        case .accelerate: return L10n.text("Accelerate / Menu up")
        case .brake: return L10n.text("Brake / Menu down")
        case .fire: return L10n.text("Fire / Confirm")
        case .pause: return L10n.text("Pause / Resume")
        case .menu: return L10n.text("Original menu / Esc")
        case .help: return L10n.text("Controls")
        }
    }
    var bit: UInt8 {
        switch self {
        case .left: return 1
        case .right: return 2
        case .accelerate: return 8
        case .brake: return 4
        case .fire: return 16
        default: return 0
        }
    }
}
