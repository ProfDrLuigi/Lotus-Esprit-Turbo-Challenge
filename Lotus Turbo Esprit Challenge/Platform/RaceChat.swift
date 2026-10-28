import Foundation

/// Local presentation only: chat never enters the deterministic game state.
@MainActor final class LotusRaceChat {
    struct Message {
        let sender: Int
        let text: String
        let name: String
        let expires: TimeInterval
    }
    static let lifetime: TimeInterval = 10
    private(set) var messages = [Message]()
    private(set) var isEditing = false
    var onChange: (() -> Void)?
    private let now: () -> TimeInterval
    private var expiration: Timer?

    init(now: @escaping () -> TimeInterval = { ProcessInfo.processInfo.systemUptime }) { self.now=now }
    func beginEditing() { isEditing=true;onChange?() }
    func endEditing() { isEditing=false;onChange?() }
    func receive(sender: Int,text: String,name: String = "") {
        guard (0...1).contains(sender),LotusOnlineProtocol.validChat(text) else { return }
        expire()
        messages.append(.init(sender:sender,text:text,name:name,expires:now()+Self.lifetime))
        if messages.count>3 { messages.removeFirst(messages.count-3) }
        scheduleExpiration();onChange?()
    }
    func expire() {
        let count=messages.count,time=now()
        messages.removeAll{$0.expires<=time}
        scheduleExpiration()
        if count != messages.count { onChange?() }
    }
    func clear() {
        expiration?.invalidate();expiration=nil
        messages.removeAll();isEditing=false;onChange?()
    }
    private func scheduleExpiration() {
        expiration?.invalidate();expiration=nil
        guard let first=messages.first else { return }
        let timer=Timer(timeInterval:max(0.001,first.expires-now()),repeats:false) { [weak self] _ in
            MainActor.assumeIsolated { self?.expire() }
        }
        expiration=timer;RunLoop.main.add(timer,forMode:.common)
    }
}
