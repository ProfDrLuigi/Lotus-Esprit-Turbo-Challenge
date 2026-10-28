import Foundation

// Select painted forearm/hand poses from the actual original animation.
// Body pixels never undergo a displacement, resampling or independent clock.
final class LotusHDGarage {
    struct Pose {
        let hand: Int
        let phase: Int
        let rect: [Int]
        let pixels: [UInt32]
    }
    private struct Hand { let sample: [Int];let reference: (Double,Double) }
    private let pixels: [UInt32]
    private let hands: [Hand]
    private let poses: [Pose]
    private var cache = [[Int]:[UInt32]]()

    init(pixels:[UInt32],reference:[UInt32],poses:[Pose]) {
        self.pixels = pixels;self.poses = poses
        hands = [[18,44,23,14],[188,25,20,18],[207,25,20,18]].compactMap { rect in
            guard let point = Self.handPosition(reference,viewport:0,rect:rect) else { return nil }
            return Hand(sample:rect,reference:point)
        }
    }

    func frame(source:[UInt32],viewport:Int) -> (pixels:[UInt32],offsets:[Double]) {
        guard pixels.count == 1280*384,hands.count == 3 else { return (pixels,[]) }
        var offsets = [Double](),key = [Int]()
        for (i,hand) in hands.enumerated() {
            let point = Self.handPosition(source,viewport:viewport,rect:hand.sample) ?? hand.reference
            let dx = Double(Int((max(-4,min(4,point.0-hand.reference.0))*4).rounded()))/4
            let dy = Double(Int((max(-4,min(4,point.1-hand.reference.1))*4).rounded()))/4
            offsets += [dx,dy]
            key.append(i == 0 ? (abs(dy)>2.5 ? 2:(abs(dy)>0.5 ? 1:0)):(hypot(dx,dy)>0.5 ? 1:0))
        }
        if key.allSatisfy({$0 == 0}) { return (pixels,offsets) }
        if let cached = cache[key] { return (cached,offsets) }
        var result = pixels
        for pose in poses where key[pose.hand] == pose.phase {
            let rect = pose.rect,width = rect[2]*4,height = rect[3]*4
            for y in 0..<height { for x in 0..<width {
                let pixel = pose.pixels[y*width+x]
                // Patch edges are composited against the unchanged master at
                // packaging time. Transparent pixels include chest, wall and
                // the exact car contour; no source bitmap gets rubber-warped.
                if pixel>>24 != 0 { result[(rect[1]*4+y)*1280+rect[0]*4+x] = pixel }
            } }
        }
        cache[key] = result
        return (result,offsets)
    }

    private static func handPosition(_ source:[UInt32],viewport:Int,rect:[Int]) -> (Double,Double)? {
        guard source.count>=(viewport+rect[1]+rect[3])*320 else { return nil }
        var count = 0,sx = 0,sy = 0
        for y in rect[1]..<rect[1]+rect[3] { for x in rect[0]..<rect[0]+rect[2] {
            let value = source[(viewport+y)*320+x]
            let r = Int(value&255),g = Int((value>>8)&255),b = Int((value>>16)&255)
            if r>g+20,g>b+12,g>50,r<220 { count += 1;sx += x;sy += y }
        } }
        guard count>=5 else { return nil }
        return (Double(sx)/Double(count),Double(sy)/Double(count))
    }
}
