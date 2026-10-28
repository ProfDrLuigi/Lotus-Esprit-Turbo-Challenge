import AppKit
import QuartzCore
import SwiftUI

struct GameSurface: NSViewRepresentable {
    @ObservedObject var session: GameSession
    func makeNSView(context: Context) -> LotusView {
        let view = LotusView(); session.attachSurface(view); return view
    }
    func updateNSView(_ view: LotusView, context: Context) { view.needsDisplay = true }
    static func dismantleNSView(_ view: LotusView, coordinator: ()) { view.session?.detachSurface(view) }
}

@MainActor final class LotusView: NSView, NSTextFieldDelegate {
    weak var session: GameSession?
    private let picture = CALayer()
    private let pauseShade = CALayer()
    private let pauseText = CATextLayer()
    private var optionButtons = [NSButton]()
    private var radioButtons = [NSButton]()
    private let chatPanel = NSView()
    private let chatEditor = NSTextField()
    private var chatLabels = [NSTextField]()
    override var acceptsFirstResponder: Bool { true }
    override var isOpaque: Bool { true }
    override var wantsUpdateLayer: Bool { true }
    override init(frame frameRect: NSRect) { super.init(frame: frameRect); configureLayers() }
    required init?(coder: NSCoder) { super.init(coder: coder); configureLayers() }
    private func configureLayers() {
        wantsLayer = true
        layer?.backgroundColor = NSColor.black.cgColor
        picture.magnificationFilter = .nearest; picture.minificationFilter = .nearest
        pauseShade.backgroundColor = NSColor(white: 0, alpha: 0.7).cgColor
        pauseText.font = NSFont.monospacedSystemFont(ofSize: 28, weight: .bold)
        pauseText.fontSize = 28; pauseText.alignmentMode = .center
        pauseText.foregroundColor = NSColor.white.cgColor
        layer?.addSublayer(picture); layer?.addSublayer(pauseShade); pauseShade.addSublayer(pauseText)
        for row in 0..<LotusHDOptionsMenu.rows.count {
            let button = NSButton(title:"",target:self,action:#selector(optionPressed(_:)))
            button.tag = row;button.isTransparent = true;button.isBordered = false
            button.focusRingType = .none;button.isHidden = true
            button.setAccessibilityIdentifier("options-"+LotusHDOptionsMenu.identifiers[row])
            addSubview(button);optionButtons.append(button)
        }
        for direction in [-1,1] {
            let button=NSButton(title:"",target:self,action:#selector(radioPressed(_:)))
            button.tag=direction;button.isTransparent=true;button.isBordered=false
            button.focusRingType = .none;button.isHidden=true
            button.setAccessibilityLabel(L10n.text(direction<0 ? "Previous track":"Next track"))
            button.setAccessibilityIdentifier(direction<0 ? "online-radio-previous":"online-radio-next")
            addSubview(button);radioButtons.append(button)
        }
        chatPanel.wantsLayer=true
        chatPanel.layer?.backgroundColor=NSColor(white:0,alpha:0.7).cgColor
        chatPanel.layer?.cornerRadius=4
        chatPanel.isHidden=true;addSubview(chatPanel)
        for _ in 0..<3 {
            let label=NSTextField(wrappingLabelWithString:"")
            label.textColor = .white;label.maximumNumberOfLines=3
            label.setAccessibilityIdentifier("race-chat-message")
            chatPanel.addSubview(label);chatLabels.append(label)
        }
        chatEditor.delegate=self;chatEditor.isHidden=true
        chatEditor.placeholderString="Chat · Enter ↵ · Esc"
        chatEditor.focusRingType = .none
        chatEditor.textColor = .white;chatEditor.backgroundColor=NSColor(white:0.08,alpha:1)
        chatEditor.setAccessibilityLabel("Race chat")
        chatEditor.setAccessibilityIdentifier("race-chat-input")
        chatPanel.addSubview(chatEditor)
    }
    deinit { NotificationCenter.default.removeObserver(self) }
    override func viewDidMoveToWindow() {
        super.viewDidMoveToWindow()
        NotificationCenter.default.removeObserver(self)
        guard let window else { return }
        window.makeFirstResponder(self)
        window.title = "Lotus Esprit Turbo Challenge"
        window.backgroundColor = .black
        window.minSize = NSSize(width: 980, height: 480)
        window.collectionBehavior.insert(.fullScreenPrimary)
        session?.updateWindowMode()
        NotificationCenter.default.addObserver(self, selector: #selector(changedWindowMode), name: NSWindow.didEnterFullScreenNotification, object: window)
        NotificationCenter.default.addObserver(self, selector: #selector(changedWindowMode), name: NSWindow.didExitFullScreenNotification, object: window)
        NotificationCenter.default.addObserver(self, selector: #selector(lostFocus), name: NSWindow.didResignKeyNotification, object: window)
        NotificationCenter.default.addObserver(self, selector: #selector(gainedFocus), name: NSWindow.didBecomeKeyNotification, object: window)
        NotificationCenter.default.addObserver(self, selector: #selector(lostFocus), name: NSApplication.willResignActiveNotification, object: nil)
    }
    @objc private func changedWindowMode(_ note: Notification) {
        session?.updateWindowMode()
        window?.makeFirstResponder(self)
        needsDisplay = true
    }
    @objc private func lostFocus(_ note: Notification) {
        if note.name == NSApplication.willResignActiveNotification || session?.showControls != true { session?.setActive(false) }
    }
    @objc private func gainedFocus(_ note: Notification) { session?.setActive(true) }
    override func mouseDown(with event: NSEvent) {
        session?.cancelRaceChat();window?.makeFirstResponder(self)
    }
    @objc private func optionPressed(_ sender: NSButton) { session?.activateHDMenuRow(sender.tag) }
    @objc private func radioPressed(_ sender: NSButton) { session?.skipMusic(sender.tag) }
    override func keyDown(with event: NSEvent) {
        if event.keyCode==8,event.modifierFlags.contains(.control),!event.modifierFlags.contains(.command) {
            if !event.isARepeat,session?.beginRaceChat()==true { return }
        }
        if event.modifierFlags.contains(.command) { super.keyDown(with: event); return }
        session?.keyDown(event.keyCode, repeating: event.isARepeat, characters: event.charactersIgnoringModifiers)
    }
    override func keyUp(with event: NSEvent) { session?.keyUp(event.keyCode) }
    override func flagsChanged(with event: NSEvent) { session?.modifierChanged(event) }
    override func resignFirstResponder() -> Bool { session?.releaseInput(); return super.resignFirstResponder() }
    func openChatEditor() {
        chatEditor.stringValue="";chatEditor.isHidden=false
        needsDisplay=true;displayIfNeeded()
        window?.makeFirstResponder(chatEditor)
    }
    func closeChatEditor() {
        chatEditor.isHidden=true;chatEditor.stringValue="";needsDisplay=true
        if window?.isKeyWindow==true { window?.makeFirstResponder(self) }
    }
    func control(_ control: NSControl,textView: NSTextView,doCommandBy selector: Selector) -> Bool {
        if selector == #selector(NSResponder.insertNewline(_:)) {
            if session?.sendRaceChat(chatEditor.stringValue) != true { NSSound.beep() }
            return true
        }
        if selector == #selector(NSResponder.cancelOperation(_:)) {
            session?.cancelRaceChat();return true
        }
        // Keep Tab inside the editor; it must not select game or toolbar controls.
        return selector == #selector(NSResponder.insertTab(_:)) || selector == #selector(NSResponder.insertBacktab(_:))
    }
    func controlTextDidChange(_ notification: Notification) {
        guard (chatEditor.currentEditor() as? NSTextView)?.hasMarkedText() != true else { return }
        var text=chatEditor.stringValue
        while text.utf8.count>LotusOnlineProtocol.chatLimit { text.removeLast() }
        if text != chatEditor.stringValue { chatEditor.stringValue=text }
    }
    private func layoutChat() {
        guard let session else { chatPanel.isHidden=true;return }
        let visible=session.online.isPlaying && session.racing
        let messages=visible ? session.raceChat.messages:[]
        let editing=visible && session.raceChat.isEditing
        chatPanel.isHidden=messages.isEmpty && !editing
        chatEditor.isHidden = !editing
        guard !chatPanel.isHidden else { return }
        let area=picture.frame,scale=area.width/320
        let font=NSFont.systemFont(ofSize:max(11,min(19,scale*3.2)),weight:.medium)
        let padding:CGFloat=6,width=min(area.width*0.57,560),textWidth=width-padding*2
        var height=padding
        for (i,label) in chatLabels.enumerated() {
            label.isHidden=i>=messages.count
            guard i<messages.count else { continue }
            let message=messages[i]
            let name=message.name.isEmpty ? "P\(message.sender+1)":message.name
            label.stringValue="\(name): \(message.text)";label.font=font
            let size=(label.stringValue as NSString).boundingRect(with:NSSize(width:textWidth-4,height:1000),
                options:[.usesLineFragmentOrigin,.usesFontLeading],attributes:[.font:font]).size
            let rowHeight=min(ceil(size.height)+4,ceil(font.ascender-font.descender+font.leading)*3+4)
            // Positions are filled from the top once the total panel height is known.
            label.frame=CGRect(x:padding,y:height,width:textWidth,height:rowHeight)
            height+=rowHeight+3
        }
        if editing {
            chatEditor.font=font
            chatEditor.frame=CGRect(x:padding,y:height,width:textWidth,height:ceil(font.pointSize*1.8))
            height+=chatEditor.frame.height+3
        }
        height+=padding-3
        for label in chatLabels where !label.isHidden { label.frame.origin.y=height-label.frame.maxY }
        if editing { chatEditor.frame.origin.y=height-chatEditor.frame.maxY }
        // Native playfield coordinates: the progress bar ends at row 8.
        chatPanel.frame=CGRect(x:area.minX+4*scale,y:area.maxY-11*scale-height,width:width,height:height)
    }
    override func layout() { super.layout(); needsDisplay = true }
    override func viewDidChangeBackingProperties() { super.viewDidChangeBackingProperties(); needsDisplay = true }
    override func updateLayer() {
        // Submit the original small bitmap once. Core Animation scales it without
        // repainting a window-sized CPU bitmap on every frame (especially at 4K).
        CATransaction.begin(); CATransaction.setDisableActions(true)
        // Preserve the bitmap's proportions; forcing 4:3 stretches the 208 rows.
        let image = session?.image
        // Downsample high-resolution typography without aliasing. The original
        // low-resolution bitmap still uses its exact nearest-neighbour pixels.
        picture.minificationFilter = (image?.width ?? 320)>320 ? .linear:.nearest
        let width = CGFloat(image?.width ?? 320), height = CGFloat(image?.height ?? 208)
        let scale = min(bounds.width/width, bounds.height/height)
        picture.frame = CGRect(x: floor((bounds.width-width*scale)/2), y: floor((bounds.height-height*scale)/2),
                               width: width*scale, height: height*scale)
        picture.contents = image
        let menuVisible = session?.hdOptionsVisible == true && session?.paused != true && session?.showControls != true
        let state = menuVisible ? session?.machine.map { LotusHDOptionsMenu.State($0) }:nil
        for (row,button) in optionButtons.enumerated() {
            if button.isHidden == menuVisible { button.isHidden = !menuVisible }
            guard menuVisible else { continue }
            button.isEnabled = menuVisible && session?.machine?.word(0x1b762) == 8
            let rect = LotusHDOptionsMenu.rows[row],area = picture.frame
            button.frame = CGRect(x:area.minX+rect.minX/320*area.width,
                y:area.minY+(208-rect.maxY)/208*area.height,
                width:rect.width/320*area.width,height:rect.height/208*area.height)
            let title=state?.accessibilityTitle(row) ?? ""
            if button.title != title { button.title=title;button.setAccessibilityLabel(title) }
        }
        let radioVisible=session?.onlineRadioVisible==true
        for button in radioButtons {
            button.isHidden = !radioVisible
            guard radioVisible else { continue }
            button.isEnabled=session?.onlineRadioInteractive==true
            let hd=session?.hdGraphicsEnabled==true
            let x:CGFloat=button.tag<0 ? (hd ? 171.625:168):(hd ? 193.625:192)
            let area=picture.frame,rect=CGRect(x:x,y:hd ? 131.875:131,width:hd ? 20:24,height:13)
            button.frame=CGRect(x:area.minX+rect.minX/320*area.width,
                y:area.minY+(208-rect.maxY)/208*area.height,
                width:rect.width/320*area.width,height:rect.height/208*area.height)
        }
        pauseShade.frame = bounds
        pauseShade.isHidden = session?.showingPause != true || session?.showControls == true
        pauseText.string = L10n.text("PAUSED")
        pauseText.contentsScale = window?.backingScaleFactor ?? 1
        pauseText.frame = CGRect(x: 0, y: floor((bounds.height-38)/2), width: bounds.width, height: 38)
        layoutChat()
        CATransaction.commit()
    }
}
