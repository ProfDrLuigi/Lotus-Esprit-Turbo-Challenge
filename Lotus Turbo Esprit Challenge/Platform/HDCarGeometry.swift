import Foundation

// Register the independently drawn poses by the rear face, rather than their
// different crop envelopes. The original largest sprites supply the projected
// plate widths. Average mirrored half-pixel offsets to remove bitmap rounding.
struct LotusHDCarGeometry {
    struct Rect { let x: Int;let y: Int;let width: Int;let height: Int }
    private let artworkWidth: Int
    private let plateCentre: Double
    private let widthPerHeight: Double
    private let rearOffset: Double
    private let extremeTurn: Double

    init(width: Int,height: Int,plate: LotusHDCarLights.Region,angle: Int,
         straightWidth: Int,straightHeight: Int,straightPlate: LotusHDCarLights.Region) {
        precondition((0..<9).contains(angle))
        artworkWidth = width
        plateCentre = Double(plate.x)+Double(plate.width)/2
        let projectedWidths = [19.0,20,22,24,24,24,22,20,19]
        let projectedOffsets = [9.5,6,3.5,0.5,0,-0.5,-3.5,-6,-9.5]
        let straightPlateWidth = (64.0/39.0)*Double(straightPlate.width)/Double(straightWidth)
        widthPerHeight = straightPlateWidth*projectedWidths[angle]/24*Double(width)/Double(plate.width)
        rearOffset = projectedOffsets[angle]/39
        extremeTurn = Double(max(0,abs(angle-4)-2))
    }

    func rect(x: Int,y: Int,width: Int,height: Int,player: Bool = false) -> Rect {
        let hdHeight = height*4
        // The drawn extreme poses already foreshorten the body. Ease the last
        // two yaw steps rather than squeeze the player twice at full lock.
        // Register the correction at the rear centre, not the crop envelope.
        let correction = player ? 1+extremeTurn*0.035:1
        let hdWidth = max(1,Int((Double(hdHeight)*widthPerHeight*correction).rounded()))
        // $18a16 centres with an arithmetic integer half-width. Adding half of
        // the whole envelope again introduced a two-HD-pixel hop on odd widths.
        let centre = Double((x+width/2)*4)+Double(hdHeight)*rearOffset
        let left = Int((centre-plateCentre*Double(hdWidth)/Double(artworkWidth)).rounded())
        return Rect(x:left,y:y*4,width:hdWidth,height:hdHeight)
    }
}

// The art has unequal rear-lamp heights even though yaw does not shorten a
// vertical rear face. Register its two plate rows to the straight pose, keeping
// roof and tyre contact rows fixed. Apply once at load time, to the whole pose;
// body, brake lenses and wheel shading then share the same coordinates.
struct LotusHDCarRegistration {
    let sourceTop: Double
    let sourceBottom: Double
    let targetTop: Double
    let targetBottom: Double

    init(height: Int,plate: LotusHDCarLights.Region,straightHeight: Int,straightPlate: LotusHDCarLights.Region) {
        sourceTop = Double(plate.y)/Double(height)
        sourceBottom = Double(plate.y+plate.height)/Double(height)
        targetTop = Double(straightPlate.y)/Double(straightHeight)
        targetBottom = Double(straightPlate.y+straightPlate.height)/Double(straightHeight)
    }
    func targetY(_ source: Double) -> Double {
        if source<sourceTop { return source*targetTop/sourceTop }
        if source<sourceBottom { return targetTop+(source-sourceTop)*(targetBottom-targetTop)/(sourceBottom-sourceTop) }
        return targetBottom+(source-sourceBottom)*(1-targetBottom)/(1-sourceBottom)
    }
    private func sourceY(_ target: Double) -> Double {
        if target<targetTop { return target*sourceTop/targetTop }
        if target<targetBottom { return sourceTop+(target-targetTop)*(sourceBottom-sourceTop)/(targetBottom-targetTop) }
        return sourceBottom+(target-targetBottom)*(1-sourceBottom)/(1-targetBottom)
    }
    func pixels(_ input: [UInt32],width: Int,height: Int) -> [UInt32] {
        guard sourceTop != targetTop || sourceBottom != targetBottom else { return input }
        var output = input
        for y in 0..<height {
            let sy = max(0,min(Double(height-1),sourceY((Double(y)+0.5)/Double(height))*Double(height)-0.5))
            let a = Int(sy),b = min(height-1,a+1),weight = UInt32((sy-Double(a))*256),other = 256-weight
            for x in 0..<width {
                let p = input[a*width+x],q = input[b*width+x]
                let rb = (((p&0x00ff00ff)*other+(q&0x00ff00ff)*weight)>>8)&0x00ff00ff
                let ga = (((((p>>8)&0x00ff00ff)*other+((q>>8)&0x00ff00ff)*weight)>>8)&0x00ff00ff)<<8
                output[y*width+x] = rb|ga
            }
        }
        return output
    }
    func rims(angle: Int) -> [LotusHDCarWheels.Rim] {
        LotusHDCarWheels.rims(angle:angle).map { rim in
            let top = targetY(rim.y-rim.ry),bottom = targetY(rim.y+rim.ry)
            return .init(x:rim.x,y:(top+bottom)/2,rx:rim.rx,ry:(bottom-top)/2)
        }
    }
}
