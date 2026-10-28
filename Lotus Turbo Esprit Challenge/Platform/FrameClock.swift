import Foundation

/// Keep the original PAL simulation and Paula audio at 50 Hz in either display mode.
struct FrameClock {
    static let step = 1.0/50.0
    private var previousTime: TimeInterval?
    private var remainder: TimeInterval = 0
    struct Update { let steps: Int }

    mutating func reset(at time: TimeInterval? = nil) { previousTime = time; remainder = 0 }
    mutating func advance(to time: TimeInterval) -> Update {
        guard time.isFinite else { reset(); return Update(steps: 0) }
        guard let previousTime else { self.previousTime = time; return Update(steps: 0) }
        self.previousTime = time
        let elapsed = time-previousTime
        guard elapsed >= 0 && elapsed <= 0.25 else { remainder = 0; return Update(steps: 0) }
        remainder += min(elapsed, Self.step*5)
        let steps = min(5, Int(floor((remainder+1e-10)/Self.step)))
        remainder = max(0, remainder-Double(steps)*Self.step)
        return Update(steps: steps)
    }
}

/// Give simulation/input/audio priority when presentation cannot fit at 50 fps.
/// Only image production is reduced; no native or relayed frames are dropped.
struct FramePresentation {
    private var logic = 0.0,render = 0.0
    private var last: TimeInterval?
    private(set) var interval = FrameClock.step
    mutating func reset() { self=FramePresentation() }
    mutating func recordLogic(_ seconds: Double) {
        guard seconds.isFinite,seconds>=0 else { return }
        logic=logic==0 ? seconds:logic*0.875+seconds*0.125
    }
    mutating func recordRender(_ seconds: Double) {
        guard seconds.isFinite,seconds>=0 else { return }
        render=render==0 ? seconds:render*0.875+seconds*0.125
        let budget=max(0.002,FrameClock.step-logic-0.002)
        interval=FrameClock.step*min(5,max(1,ceil(render/budget)))
    }
    mutating func shouldPresent(at time: TimeInterval) -> Bool {
        guard time.isFinite else { last=nil;return false }
        if let last,time>=last,time-last+1e-9<interval { return false }
        last=time;return true
    }
}
