import Foundation

// Read-only copies of the original per-scanline road projection. Keep them in
// the same completed command batch as its framebuffer, objects and camera.
struct LotusVideoRoad: Equatable {
    struct Boundary: Equatable {
        let origin: Double
        let slope: Double
        let left: UInt8
        let right: UInt8
        func position(scale: Double,offset: Double) -> Double { origin+slope*(scale/16-0.5)-offset }
    }
    struct Row: Equatable {
        let scale: Int
        let depth: Int
        let sourceOffset: Double?
        let profile: Int
        init(scale: Int,depth: Int,sourceOffset: Double? = nil,profile: Int = 0) {
            self.scale = scale;self.depth = depth;self.sourceOffset = sourceOffset;self.profile = profile
        }
    }
    let distance: UInt32
    let speed: UInt16
    let rows: [Row]
    let profiles: [[Boundary]]
    init(distance: UInt32,speed: UInt16,rows: [Row],profiles: [[Boundary]] = []) {
        self.distance = distance;self.speed = speed;self.rows = rows;self.profiles = profiles
    }
}
