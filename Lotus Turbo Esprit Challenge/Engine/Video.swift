import Foundation
import CoreGraphics

extension LotusMachine {
    // Eight bitplane pixels in separate byte lanes. Combine five plane bytes
    // once per eight pixels instead of fetching every bit of every pixel.
    private static let planarByteLanes: [UInt64] = (0..<256).map { value in
        var lanes: UInt64=0
        for bit in 0..<8 { lanes |= UInt64((value>>(7-bit))&1)<<(bit*8) }
        return lanes
    }
    func blit(_ size: UInt32) {
        let control = UInt32(custom[0x40/2]), control1 = UInt32(custom[0x42/2])
        let width = Int(size & 63) == 0 ? 64 : Int(size & 63)
        let height = Int((size >> 6) & 1023) == 0 ? 1024 : Int((size >> 6) & 1023)
        guard width*height <= 65536 else { fail("Invalid blit size"); return }
        let useA = control & 0x800 != 0, useB = control & 0x400 != 0
        let useC = control & 0x200 != 0, useD = control & 0x100 != 0
        let direction = control1 & 2 == 0 ? 1 : -1
        let shiftA = Int(control >> 12), shiftB = Int(control1 >> 12)
        func pointer(_ register: Int) -> Int { (Int(custom[register/2]) << 16 | Int(custom[register/2+1])) & 0x1ffffe }
        func modulo(_ register: Int) -> Int { Int(Int16(bitPattern:custom[register/2])) & ~1 }
        var a = pointer(0x50), b = pointer(0x4c), cc = pointer(0x48), d = pointer(0x54)
        let ma = modulo(0x64), mb = modulo(0x62), mc = modulo(0x60), md = modulo(0x66)
        let first = UInt32(custom[0x44/2]), last = UInt32(custom[0x46/2])
        let minterm = control & 255
        var previousA: UInt32 = 0, previousB: UInt32 = 0
        for _ in 0..<height {
            for column in 0..<width {
                var av = useA ? word(a) : UInt32(custom[0x74/2])
                let bv = useB ? word(b) : UInt32(custom[0x72/2])
                let cv = useC ? word(cc) : UInt32(custom[0x70/2])
                if column == 0 { av &= first }; if column == width-1 { av &= last }
                let aa: UInt32, bb: UInt32
                if direction > 0 {
                    aa = ((previousA << 16) | av) >> shiftA & 65535
                    bb = ((previousB << 16) | bv) >> shiftB & 65535
                } else {
                    aa = shiftA == 0 ? av : ((av << 16) | previousA) >> (16-shiftA) & 65535
                    bb = shiftB == 0 ? bv : ((bv << 16) | previousB) >> (16-shiftB) & 65535
                }
                previousA = av; previousB = bv
                var out: UInt32 = 0
                switch minterm {
                case 0xf0: out = aa
                case 0xca: out = (aa & bb) | (~aa & cv)
                case 0xc0: out = aa & bb
                case 0xaa: out = cv
                case 0x00: out = 0
                case 0xff: out = 65535
                case 0x3c: out = aa ^ bb
                default:
                    for bit in 0..<8 where minterm & (1 << bit) != 0 {
                        out |= (bit & 4 != 0 ? aa : ~aa) & (bit & 2 != 0 ? bb : ~bb) & (bit & 1 != 0 ? cv : ~cv)
                    }
                }
                if useD { putWord(d,out & 65535) }
                if useA { a += direction*2 }; if useB { b += direction*2 }
                if useC { cc += direction*2 }; if useD { d += direction*2 }
            }
            a += direction*ma; b += direction*mb; cc += direction*mc; d += direction*md
        }
        for (register,value) in [(0x50,a),(0x4c,b),(0x48,cc),(0x54,d)] {
            custom[register/2] = UInt16(truncatingIfNeeded:value >> 16)
            custom[register/2+1] = UInt16(truncatingIfNeeded:value)
        }
    }

    // Original Copper lists supply the title screens and both race viewports.
    // COP2 jumps are used for road scanlines and per-viewport palettes.
    func renderPixels() -> [UInt8] { renderVideo(backgroundOnly:false).pixels }

    // Even an unpresented PAL frame must latch the Copper's final BPLCON0.
    // Otherwise clients with different presentation rates can diverge in RAM
    // rendering on the next frame. No pixel buffers or sprites are needed.
    func latchVideoState() { _ = renderVideo(backgroundOnly:false,stateOnly:true) }

    func renderBackground() -> (pixels: [UInt8],indices: [UInt8])? {
        guard videoBackgrounds[displayedVideoBuffer] != nil else { return nil }
        return renderVideo(backgroundOnly:true)
    }

    private func renderVideo(backgroundOnly: Bool,stateOnly: Bool = false) -> (pixels: [UInt8],indices: [UInt8]) {
        let width = 320, height = 208, startY = 44
        var pixels = stateOnly ? []:[UInt8](repeating:0,count:width*height*4)
        var playfield = [Int](repeating:0,count:width)
        var indices = !stateOnly && (captureVideoObjects || backgroundOnly) ? [UInt8](repeating:0,count:width*height) : []
        var rowPalette = !stateOnly && captureVideoObjects && !backgroundOnly ? [UInt32](repeating:0,count:height*32) : []
        var backgroundBase = 0
        var backgrounds = [Int:[UInt8]]()
        var colours = [(UInt8,UInt8,UInt8)](repeating:(0,0,0),count:32)
        var registers = custom
        if stateOnly,videoModeFrame != frameNumber {
            videoModeFrame=frameNumber;videoInitialMode=custom[0x100/2]
        }
        if !backgroundOnly,videoModeFrame==frameNumber {
            // A catch-up frame may have latched already. Presentation still
            // starts with the mode that was active at that frame's first row.
            registers[0x100/2]=videoInitialMode
        }
        var copper = Int(registers[0x80/2]) << 16 | Int(registers[0x82/2])
        if copper == 0 { copper = 0x1d6fc }
        var nextWait = 0, ended = false
        func color(_ value: UInt32) -> (UInt8,UInt8,UInt8) {
            (UInt8((value >> 8) & 15)*17, UInt8((value >> 4) & 15)*17, UInt8(value & 15)*17)
        }
        func spriteLine(_ pointer: Int, _ line: Int) -> (x: Int, control: UInt32, a: UInt32, b: UInt32)? {
            var pointer = pointer
            // At VSTOP sprite DMA fetches another POS/CTL pair. Lotus reuses
            // channels for RPM, fuel and the second player's HUD in one frame.
            for _ in 0..<256 {
                guard pointer > 0, pointer+3 < ram.count else { return nil }
                let pos = word(pointer), control = word(pointer+2)
                if pos == 0 && control == 0 { return nil }
                let start = Int(pos >> 8) | (Int(control & 4) << 6)
                let stop = Int(control >> 8) | (Int(control & 2) << 7)
                guard stop > start, line >= start else { return nil }
                if line < stop {
                    let data = pointer+4+(line-start)*4
                    guard data+3 < ram.count else { return nil }
                    return (Int(pos & 255)*2+Int(control & 1)-128, control, word(data), word(data+2))
                }
                pointer += 4+(stop-start)*4
            }
            return nil
        }
        for row in 0..<height {
            let beamY = row+startY
            var moves = 0
            while !ended && nextWait <= beamY && moves < 2048 {
                moves += 1
                guard copper >= 0, copper+3 < ram.count else { ended = true; break }
                let first = word(copper), second = word(copper+2)
                if first == 0xffff && second == 0xfffe { ended = true; break }
                if first & 1 != 0 {
                    let wait = Int(first >> 8)
                    if wait > beamY { nextWait = wait; break }
                    copper += 4; nextWait = 0
                } else {
                    let register = Int(first & 0x1fe)/2
                    registers[register] = UInt16(truncatingIfNeeded:second)
                    if first == 0x8a {
                        copper = Int(registers[0x84/2]) << 16 | Int(registers[0x86/2])
                    } else if first == 0x88 {
                        copper = Int(registers[0x80/2]) << 16 | Int(registers[0x82/2])
                    } else { copper += 4 }
                }
            }
            // Bitplane pointers do not affect Copper control flow or its final
            // display mode. Skip all raster work for catch-up-only frames.
            if stateOnly { continue }
            let planes = Int((registers[0x100/2] >> 12) & 7)
            var addresses = [Int](repeating:0,count:planes)
            for plane in 0..<planes {
                addresses[plane] = Int(registers[0xe0/2+plane*2]) << 16 | Int(registers[0xe0/2+plane*2+1])
            }
            if row == 0 {
                backgroundBase = (addresses.first ?? 2)-2
                if backgroundOnly { backgrounds = videoBackgrounds[backgroundBase] ?? [:] }
                else { displayedVideoBuffer = backgroundBase }
            }
            let background = backgrounds[row>=112 ? 112:0]
            for i in 0..<32 { colours[i]=color(UInt32(registers[0x180/2+i])) }
            if !rowPalette.isEmpty {
                for i in 0..<32 {
                    let rgb = colours[i]
                    rowPalette[row*32+i] = 0xff000000 | UInt32(rgb.0) | UInt32(rgb.1)<<8 | UInt32(rgb.2)<<16
                }
            }
            let scroll = Int(registers[0x102/2] & 15)
            let displayTop = Int(registers[0x8e/2] >> 8)
            let stopLow = Int(registers[0x90/2] >> 8)
            // OCS derives VSTOP bit 8 from the inverse of bit 7.
            let displayBottom = stopLow | (stopLow & 0x80 == 0 ? 0x100 : 0)
            let displayActive = beamY >= displayTop && beamY < displayBottom
            let displayLeft = Int(registers[0x8e/2] & 255)-128
            let displayRight = Int(registers[0x90/2] & 255)+256-128
            let fetchOrigin = Int(registers[0x92/2] & 0xfc)*2+16-128
            let fetchBytes = ((Int(registers[0x94/2] & 0xfc)-Int(registers[0x92/2] & 0xfc))/8+1)*2
            var packed: UInt64=0,previousByte = -1
            for column in 0..<width {
                var index = 0
                if displayActive && planes > 0 && column >= displayLeft && column < displayRight {
                    let bitX = column-fetchOrigin-scroll
                    if bitX >= 0 {
                        let sourceByte=bitX/8
                        if sourceByte != previousByte {
                            previousByte=sourceByte;packed=0
                            for plane in 0..<planes {
                                let a = addresses[plane]+sourceByte
                                if a >= 0 && a < ram.count {
                                    let offset = a-backgroundBase
                                    let value = background != nil && offset>=0 && offset<background!.count ? background![offset]:ram[a]
                                    packed |= Self.planarByteLanes[Int(value)]<<plane
                                }
                            }
                        }
                        index=Int((packed>>((bitX&7)*8))&255)
                    }
                }
                let rgb = colours[index&31]
                playfield[column] = index
                if !indices.isEmpty { indices[row*width+column] = UInt8(index) }
                let offset = (row*width+column)*4
                pixels[offset] = rgb.0; pixels[offset+1] = rgb.1; pixels[offset+2] = rgb.2; pixels[offset+3] = 255
            }
            // Outside DIWSTRT/DIWSTOP only COLOR00 is visible. Do not fetch
            // further bitmap rows or draw sprites beyond that window.
            guard displayActive else { continue }
            for plane in 0..<planes {
                let modulo = Int(Int16(bitPattern:registers[(plane & 1 == 0 ? 0x108 : 0x10a)/2])) & ~1
                let next = addresses[plane]+max(0,fetchBytes)+modulo
                registers[0xe0/2+plane*2] = UInt16(truncatingIfNeeded:next >> 16)
                registers[0xe0/2+plane*2+1] = UInt16(truncatingIfNeeded:next)
            }
            if backgroundOnly { continue }
            // Hardware sprites are paired for 16-colour attached mode.
            for sprite in (0..<8).reversed() {
                let pointerIndex = 0x120/2+sprite*2
                let p = Int(registers[pointerIndex]) << 16 | Int(registers[pointerIndex+1])
                guard let active = spriteLine(p,beamY) else { continue }
                if sprite & 1 != 0 && active.control & 128 != 0 { continue }
                let q = sprite & 1 == 0 ? (Int(registers[pointerIndex+2]) << 16 | Int(registers[pointerIndex+3])) : 0
                let other = spriteLine(q,beamY)
                let attached = other.map { $0.control & 128 != 0 } ?? false
                let pa = active.a, pb = active.b, qa = attached ? other!.a : 0, qb = attached ? other!.b : 0
                for j in 0..<16 {
                    let bit = 15-j, x = active.x+j
                    guard x >= max(0,displayLeft) && x < min(width,displayRight) else { continue }
                    // In Lotus's single-playfield mode PF2P (BPLCON2 bits 3–5)
                    // places each sprite pair in front of or behind opaque
                    // bitmap pixels. The pit scene hides the racing HUD this way.
                    if registers[0x100/2] & 0x400 == 0 && playfield[x] != 0
                        && sprite/2 >= Int((registers[0x104/2] >> 3) & 7) { continue }
                    let c = Int((pa >> bit)&1) | Int((pb >> bit)&1)<<1 | Int((qa >> bit)&1)<<2 | Int((qb >> bit)&1)<<3
                    if c == 0 { continue }
                    let paletteIndex = attached ? c : (sprite/2)*4+c
                    let rgb = color(UInt32(registers[0x1a0/2+paletteIndex]))
                    let offset = (row*width+x)*4
                    pixels[offset] = rgb.0; pixels[offset+1] = rgb.1; pixels[offset+2] = rgb.2
                    if captureVideoObjects { indices[row*width+x] = UInt8(16+paletteIndex) }
                }
            }
        }
        // BPLCON0 is latched across frames. Lotus jumps past its first viewport
        // setup on later frames and relies on the previous Copper's final mode.
        if !backgroundOnly {
            custom[0x100/2] = registers[0x100/2]
            if !stateOnly {
                videoModeFrame = -1
                videoPixelIndices = indices
                videoRowPalette = rowPalette
            }
        }
        return (pixels,indices)
    }
    func makeImage() -> CGImage? {
        let pixels = renderPixels()
        guard let provider = CGDataProvider(data:Data(pixels) as CFData) else { return nil }
        return CGImage(width:320,height:208,bitsPerComponent:8,bitsPerPixel:32,bytesPerRow:1280,space:CGColorSpaceCreateDeviceRGB(),bitmapInfo:CGBitmapInfo(rawValue:CGImageAlphaInfo.last.rawValue),provider:provider,decode:nil,shouldInterpolate:false,intent:.defaultIntent)
    }
}
