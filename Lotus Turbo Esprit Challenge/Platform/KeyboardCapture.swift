import AppKit
import SwiftUI

struct KeyboardCapture: NSViewRepresentable {
    let session: GameSession
    func makeNSView(context: Context) -> KeyboardCaptureView {
        let view = KeyboardCaptureView(); view.session = session; return view
    }
    func updateNSView(_ view: KeyboardCaptureView, context: Context) { view.session = session }
    static func dismantleNSView(_ view: KeyboardCaptureView, coordinator: ()) { view.stop() }
}

@MainActor final class KeyboardCaptureView: NSView {
    weak var session: GameSession?
    private var monitor: Any?
    deinit { if let monitor { NSEvent.removeMonitor(monitor) } }
    override func viewDidMoveToWindow() {
        super.viewDidMoveToWindow(); stop()
        guard window != nil else { return }
        monitor = NSEvent.addLocalMonitorForEvents(matching: [.keyDown,.keyUp,.flagsChanged]) { [weak self] event in
            let consumed = MainActor.assumeIsolated { self?.handle(event) ?? false }
            return consumed ? nil : event
        }
    }
    func stop() { if let monitor { NSEvent.removeMonitor(monitor) }; monitor = nil }
    func handle(_ event: NSEvent) -> Bool {
        guard let session, let window, event.window === window, session.showControls else { return false }
        guard session.keyboard.learning != nil else {
            if event.type == .keyUp { session.keyboard.keyUp(event.keyCode) }
            if event.type == .keyDown, !event.modifierFlags.contains(.command), session.keyboard.isCommandKey(event.keyCode) {
                session.keyboard.keyDown(event.keyCode, repeating: event.isARepeat); return true
            }
            return false
        }
        // Keep Command shortcuts available to macOS; capture stays local to the sheet.
        guard !event.modifierFlags.contains(.command), event.keyCode != 54, event.keyCode != 55 else { return false }
        switch event.type {
        case .keyDown: session.keyboard.keyDown(event.keyCode, repeating: event.isARepeat)
        case .keyUp: session.keyboard.keyUp(event.keyCode)
        case .flagsChanged:
            if event.keyCode == 57 {
                session.keyboard.keyDown(event.keyCode, repeating: false); session.keyboard.keyUp(event.keyCode)
            } else if let down = KeyboardInput.modifierDown(event) {
                if down { session.keyboard.keyDown(event.keyCode, repeating: false) }
                else { session.keyboard.keyUp(event.keyCode) }
            }
        default: return false
        }
        return true
    }
}
