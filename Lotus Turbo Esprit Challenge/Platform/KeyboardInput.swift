import AppKit
import Carbon.HIToolbox
import Combine

@MainActor final class KeyboardInput: ObservableObject {
    enum Slot: Int, CaseIterable {
        case primary, alternate
        var title: String { self == .primary ? L10n.text("Primary key") : L10n.text("Alternate key") }
    }
    struct Selection: Equatable {
        let player: PlayerSlot
        let action: DriveAction
        let slot: Slot
    }
    @Published private(set) var bindings: [PlayerSlot: [DriveAction: [Int]]] = [:]
    @Published private(set) var learning: Selection?
    @Published private(set) var notice: String?
    private let preferences: UserDefaults
    private var held = Set<UInt16>(), blocked = Set<UInt16>()
    private var pending: [PlayerSlot: Set<DriveAction>] = [:]
    private var recordedKey: UInt16?
    private static let settingsKey = "Lotus.KeyboardBindings.v2"

    init(preferences: UserDefaults = .standard) {
        self.preferences = preferences
        let saved = preferences.dictionary(forKey: Self.settingsKey) as? [String: [String: [Int]]]
        var used = Set<Int>()
        for player in PlayerSlot.allCases {
            var profile = Self.defaults(player)
            for action in DriveAction.allCases {
                if let values = saved?[String(player.rawValue)]?[action.rawValue], values.count == 2 {
                    profile[action] = values.map { Self.valid($0) ? $0 : -1 }
                }
                profile[action] = profile[action]!.map { code in
                    guard code >= 0, used.insert(code).inserted else { return -1 }
                    return code
                }
            }
            bindings[player] = profile
        }
    }
    static func valid(_ code: Int) -> Bool { (0..<128).contains(code) && code != 54 && code != 55 }
    static func defaults(_ player: PlayerSlot) -> [DriveAction: [Int]] {
        if player == .one {
            return [.left:[123,0], .right:[124,2], .accelerate:[126,13], .brake:[125,1],
                    .fire:[49,36], .pause:[35,-1], .menu:[53,-1], .help:[122,-1]]
        }
        return [.left:[86,38], .right:[88,37], .accelerate:[91,34], .brake:[84,40],
                .fire:[82,32], .pause:[101,-1], .menu:[100,-1], .help:[120,-1]]
    }
    func key(_ selection: Selection) -> Int {
        bindings[selection.player]?[selection.action]?[selection.slot.rawValue] ?? -1
    }
    func assign(_ selection: Selection, code: Int?) {
        guard code == nil || Self.valid(code!) else { return }
        let next = code ?? -1, previous = key(selection)
        var conflict: Selection?
        if next >= 0 {
            for player in PlayerSlot.allCases {
                for action in DriveAction.allCases {
                    for slot in Slot.allCases {
                        let candidate = Selection(player: player, action: action, slot: slot)
                        if candidate != selection && key(candidate) == next { conflict = candidate }
                    }
                }
            }
        }
        if let other = conflict {
            bindings[other.player]![other.action]![other.slot.rawValue] = previous
            notice = L10n.format("Swapped with %@: %@.", other.player.title, other.action.title)
        } else { notice = L10n.text("Binding saved.") }
        bindings[selection.player]![selection.action]![selection.slot.rawValue] = next
        learning = nil; recordedKey = nil
        releaseUntilNeutral(); save()
    }
    func reset(_ player: PlayerSlot) {
        cancelLearning()
        let other: PlayerSlot = player == .one ? .two : .one
        let occupied = Set(bindings[other]!.values.flatMap { $0 }.filter { $0 >= 0 })
        let defaults = Self.defaults(player)
        var conflicts = false
        bindings[player] = defaults.mapValues { keys in keys.map { code in
            if code >= 0 && occupied.contains(code) { conflicts = true; return -1 }
            return code
        }}
        notice = conflicts ? L10n.text("Keys used by the other player were left unassigned.") : L10n.text("Default bindings restored.")
        releaseUntilNeutral(); save()
    }
    private func save() {
        var saved = [String: [String: [Int]]]()
        for player in PlayerSlot.allCases {
            saved[String(player.rawValue)] = Dictionary(uniqueKeysWithValues: bindings[player]!.map { ($0.key.rawValue, $0.value) })
        }
        preferences.set(saved, forKey: Self.settingsKey)
    }
    func beginLearning(_ selection: Selection) {
        releaseUntilNeutral(); learning = selection; recordedKey = nil; notice = nil
    }
    func cancelLearning() { learning = nil; recordedKey = nil; releaseUntilNeutral() }
    func keyDown(_ code: UInt16, repeating: Bool) {
        guard Self.valid(Int(code)) else { return }
        let wasHeld = held.contains(code)
        held.insert(code)
        if learning != nil {
            if !repeating && recordedKey == nil { recordedKey = code }
            return
        }
        guard !repeating else { return }
        let wasBlocked = blocked.remove(code) != nil
        guard !wasHeld || wasBlocked else { return }
        for player in PlayerSlot.allCases {
            for action in DriveAction.allCases where bindings[player]![action]!.contains(Int(code)) {
                pending[player, default: []].insert(action)
            }
        }
    }
    func keyUp(_ code: UInt16) {
        held.remove(code); blocked.remove(code)
        if let selection = learning, recordedKey == code { assign(selection, code: Int(code)) }
    }
    func releaseUntilNeutral() { blocked.formUnion(held); pending.removeAll() }
    func isCommandKey(_ code: UInt16) -> Bool {
        PlayerSlot.allCases.contains { player in
            [DriveAction.pause, .menu, .help].contains { bindings[player]![$0]!.contains(Int(code)) }
        }
    }
    func sample(_ player: PlayerSlot) -> (UInt8, Set<DriveAction>) {
        guard learning == nil else { pending.removeAll(); return (0, []) }
        let edges = pending.removeValue(forKey: player) ?? []
        var bits: UInt8 = 0
        for action in DriveAction.allCases {
            if edges.contains(action) || bindings[player]![action]!.contains(where: {
                $0 >= 0 && held.contains(UInt16($0)) && !blocked.contains(UInt16($0))
            }) { bits |= action.bit }
        }
        return (bits, edges)
    }
    static func modifierDown(_ event: NSEvent) -> Bool? {
        // Device-specific masks from IOKit/hidsystem/IOLLEvent.h distinguish
        // releasing one side while the other Shift/Control/Option stays held.
        switch event.keyCode {
        case 56: return event.modifierFlags.rawValue & 0x2 != 0
        case 60: return event.modifierFlags.rawValue & 0x4 != 0
        case 58: return event.modifierFlags.rawValue & 0x20 != 0
        case 61: return event.modifierFlags.rawValue & 0x40 != 0
        case 59: return event.modifierFlags.rawValue & 0x1 != 0
        case 62: return event.modifierFlags.rawValue & 0x2000 != 0
        case 63: return event.modifierFlags.contains(.function)
        default: return nil
        }
    }
    static func keyName(_ code: Int) -> String {
        guard code >= 0 else { return L10n.text("Unassigned") }
        let special: [Int: String] = [123:"←",124:"→",125:"↓",126:"↑",49:"Space",36:"Return",
            76:"Numpad Enter",48:"Tab",53:"Escape",51:"Backspace",117:"Forward Delete",
            56:"Left Shift",60:"Right Shift",58:"Left Option",61:"Right Option",
            59:"Left Control",62:"Right Control",57:"Caps Lock",63:"Fn",114:"Help key",
            115:"Home",119:"End",116:"Page Up",121:"Page Down"]
        if let name = special[code] { return L10n.text(name) }
        let numpad = [82:"0",83:"1",84:"2",85:"3",86:"4",87:"5",88:"6",89:"7",91:"8",92:"9",65:".",67:"*",69:"+",75:"/",78:"-",81:"="]
        if let name = numpad[code] { return L10n.format("Numpad %@", name) }
        let functions = [122:1,120:2,99:3,118:4,96:5,97:6,98:7,100:8,101:9,109:10,103:11,111:12,105:13,107:14,113:15,106:16,64:17,79:18,80:19,90:20]
        if let number = functions[code] { return "F\(number)" }
        if let source = TISCopyCurrentKeyboardLayoutInputSource()?.takeRetainedValue(),
           let property = TISGetInputSourceProperty(source, kTISPropertyUnicodeKeyLayoutData) {
            let data = Unmanaged<CFData>.fromOpaque(property).takeUnretainedValue()
            let layout = UnsafeRawPointer(CFDataGetBytePtr(data)).assumingMemoryBound(to: UCKeyboardLayout.self)
            var dead: UInt32 = 0, length = 0
            var characters = [UniChar](repeating: 0, count: 8)
            if UCKeyTranslate(layout, UInt16(code), UInt16(kUCKeyActionDisplay), 0, UInt32(LMGetKbdType()),
                              OptionBits(kUCKeyTranslateNoDeadKeysMask), &dead, characters.count, &length, &characters) == noErr && length > 0 {
                return String(utf16CodeUnits: characters, count: length).uppercased()
            }
        }
        return L10n.format("Key %ld", code)
    }
}
