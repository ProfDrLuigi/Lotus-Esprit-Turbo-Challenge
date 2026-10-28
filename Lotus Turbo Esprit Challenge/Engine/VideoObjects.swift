import Foundation

// Presentation metadata only. Original instructions, RAM and draw order remain
// untouched; each rotating framebuffer owns the objects drawn into that buffer.
struct LotusVideoObject: Equatable {
    let bank: Int
    let header: Int
    let x: Int
    let y: Int
    let width: Int
    let height: Int
    let viewport: Int
    let bottom: Int
    let asset: String?
    let pixels: [UInt8]
    let frame: Int?

    var isBrakeLight: Bool { bank == 0x4959e && frame.map{(20...22).contains($0)} == true }

    // The original bank contains the same 63 distance/angle frames twice:
    // red paint uses palette indices 1–3; white paint uses indices 5–6.
    // Keep that distinction when both families share the HD angle artwork.
    var carBodyPaletteIndex: Int? {
        guard bank == 0x5ad16,let frame,(0..<126).contains(frame) else { return nil }
        return frame<63 ? 2:6
    }

    var carAngle: Int? {
        guard carBodyPaletteIndex != nil,let asset,asset.hasPrefix("car-"),
              let angle = Int(asset.dropFirst(4)),(0...8).contains(angle) else { return nil }
        return angle
    }
}

struct LotusVideoBackdrop: Equatable {
    let id: String
    let x: Double
    let y: Int
    let height: Int
    let sourceY: Int
}

struct LotusVideoBatch {
    let buffer: Int
    let distances: [UInt32]
    var objects = [LotusVideoObject]()
    var backgrounds = [Int:[UInt8]]()
    var backdrops = [Int:LotusVideoBackdrop]()
    var roads = [Int:LotusVideoRoad]()
}

extension LotusMachine {
    // Decode the original immutable scaled road atlas once, rather than fit
    // freshly rounded lane pixels in every displayed frame. The second bank
    // is the wider pit-entry cross-section, not an interchangeable five-lane
    // template. Atlas planes are separated by the original $5c6e-byte pitch.
    func captureRoadProfiles() -> [[LotusVideoRoad.Boundary]] {
        (0...1).map { variant in
            var samples = [(Double,[(Double,UInt8,UInt8)])]()
            for scale in 64..<255 {
                let pointer = Int(long(0x45a9c+(scale*2+variant)*4))
                guard pointer>=0x3a100,pointer+0x5c6e+160<ram.count else { continue }
                func category(_ x: Int) -> UInt8 {
                    let bit = 7-x%8
                    return 12 | ((ram[pointer+x/8]>>bit)&1) | (((ram[pointer+0x5c6e+x/8]>>bit)&1)<<1)
                }
                var edges = [(Double,UInt8,UInt8)]()
                for x in 330..<1100 {
                    let before = category(x-1),after = category(x)
                    if before != after {
                        edges.append((Double(x),before,after))
                        if after == 12 { break }
                    }
                }
                if edges.count == (variant == 0 ? 14:18) { samples.append((Double(scale),edges)) }
            }
            guard samples.count>=20 else { return [] }
            let count = Double(samples.count),mean = samples.reduce(0){$0+$1.0}/count
            let variance = samples.reduce(0){$0+pow($1.0-mean,2)}
            return samples[0].1.indices.map { i in
                let average = samples.reduce(0){$0+$1.1[i].0}/count
                let slope = samples.reduce(0){$0+($1.0-mean)*($1.1[i].0-average)}/variance
                return .init(origin:average-slope*mean,slope:slope,left:samples[0].1[i].1,right:samples[0].1[i].2)
            }
        }
    }

    func videoWorldAsset(bank: Int,frame: Int?) -> String? {
        // The address table retains entries from earlier tracks. Banks are
        // reloaded into the same arena, so its first matching address can name
        // an old sign while the actual bitmap is now a bush. Only this track's
        // active package list ($1933a, filled by $1409c) owns those addresses.
        let fixed = [0x565f8:0x80,0x551fc:0x81,0x579f4:0x82,0x51d5a:0x83]
        var id = fixed[bank]
        if id == nil {
            for slot in 0..<16 {
                let candidate = Int(word(0x1933a+slot*2))
                if candidate == 0 { break }
                if (0x84...0xab).contains(candidate),Int(long(0x8b350+(candidate-0x80)*4)) == bank {
                    id = candidate;break
                }
            }
        }
        guard var id else { return nil }
        id = [0x88:0x87,0x92:0x8f,0x93:0x90,0xa6:0xa5,0xa8:0xa7][id] ?? id
        // The gantry has three distance-frame families: posts 0...16,
        // crosspieces 17...26 and the separate LOTUS lettering 27...34.
        let part = id == 0x82 ? ((frame ?? 0)>=27 ? "-banner":(frame ?? 0)>=17 ? "-right":""):""
        return String(format:"world-%02x",id)+part
    }

    func observeVideoObjects() {
        guard captureVideoObjects && !isAudioReplica else { return }
        if pc == 0x19180 {
            videoRoadProfiles = nil
        } else if pc == 0x16258 {
            // The original builds one command list while the interrupt paints
            // the preceding list. Publishing the list being built mixes two
            // different frames whenever the three buffers rotate.
            videoActiveBatch = videoPendingBatches[Int(long(0x1942a))]
            videoPendingBatches[Int(long(0x19426))] = LotusVideoBatch(buffer:Int(long(0x1a934)),distances:[long(0x1a984),long(0x1aa3a)])
        } else if pc == 0x16f26 || pc == 0x171e8 {
            // The original background copy samples a 1280x32 three-plane
            // panorama. Record its angle/crop in the command batch that owns it.
            let player = pc == 0x16f26 ? 0:1,base = player == 0 ? 0x1a980:0x1aa36
            // $16d7a/$16d94 have completed the native six-byte road rows.
            // Their third word is the longitudinal surface coordinate used by
            // the Copper stripes; retain its finer motion for the HD material.
            let list = Int(long(0x19426)),table = player == 0 ? 0x8aa30:0x8ac70
            if word(base+0x40) == 0,(player == 0 || word(0x1b062) != 0) {
                if videoRoadProfiles == nil { videoRoadProfiles = captureRoadProfiles() }
                let lateral = Int(Int16(truncatingIfNeeded:word(base+0x4c)))
                // $16304/$16334 start the road blits at $5a(a4). On a
                // downhill transition the rows above that start retain old
                // table values; they are terrain, not another distant road.
                let firstRoadRow = Int(word(base+0x5a))
                let rows = (0..<96).map { row in
                    guard row>=firstRoadRow else { return LotusVideoRoad.Row(scale:0,depth:0) }
                    let curve = Int(Int16(truncatingIfNeeded:word(table+row*6)))
                    let scale = Int(word(table+row*6+2))
                    let displacement = Int(Int16(truncatingIfNeeded:curve+lateral*8))
                    let product = Double(Int16(truncatingIfNeeded:scale*2))*Double(displacement)/65536
                    // Centre the original scale-bin and pixel-floor rounding
                    // intervals, retaining the continuous product before SWAP.
                    let offset = 197+Double(scale)/16+product
                    return LotusVideoRoad.Row(scale:scale,depth:Int(Int16(truncatingIfNeeded:word(table+row*6+4))),
                        sourceOffset:offset,profile:curve&1)
                }
                videoPendingBatches[list]?.roads[player*112] = LotusVideoRoad(distance:long(base+0x50),
                    speed:UInt16(truncatingIfNeeded:word(base+0x10)),rows:rows,profiles:videoRoadProfiles ?? [])
            }
            let y = Int(word(base+0x5c)),height = Int(word(base+0x5e)),sourceY = Int(word(base+0x60))
            guard word(base+0x40) == 0,(player == 0 || word(0x1b062) != 0),
                  height>0,height<=32,sourceY+height<=32,y>=0,y+height<=96 else { return }
            var hash: UInt64 = 14695981039346656037
            for byte in ram[0x36500..<0x3a100] { hash = (hash ^ UInt64(byte)) &* 1099511628211 }
            let backdrop = LotusVideoBackdrop(id:String(format:"%016llx",hash),
                x:Double(word(base+0x58)&4095)*15360/65536+1,y:y,height:height,sourceY:sourceY)
            videoPendingBatches[list]?.backdrops[player*112] = backdrop
        } else if pc == 0x178ce {
            // Each viewport has finished clearing/restoring its background;
            // the next command starts its masked objects. Save that clean
            // playfield before any car or sign is painted into it.
            let viewport = word(0x19336) == 0 ? 0:112
            if var batch = videoActiveBatch,batch.backgrounds[viewport] == nil,
               batch.buffer>0,batch.buffer+0x8400<=ram.count {
                batch.backgrounds[viewport] = Array(ram[batch.buffer..<batch.buffer+0x8400])
                videoActiveBatch = batch
            }
        } else if pc == 0x17a30 {
            // Both viewports' Blitter commands have now completed.
            if let batch = videoActiveBatch {
                videoObjects[batch.buffer] = batch.objects
                videoBackgrounds[batch.buffer] = batch.backgrounds
                videoDistances[batch.buffer] = batch.distances
                videoBackdrops[batch.buffer] = batch.backdrops
                videoRoads[batch.buffer] = batch.roads
            }
            videoActiveBatch = nil
        } else if pc == 0x18a2c {
            let bank = Int(r[9]), header = Int(r[8])-8
            let width = Int(r[4]&65535), height = Int(r[3]&65535)
            guard bank>0,header>0,header+8<ram.count,width>0,width<=512,height>0,height<=256 else { return }
            let viewport = r[10] == 0xfc0 ? 112:0
            let frames = Int(long(bank))/4
            var frame: Int?
            if frames>0 && frames<=256 {
                frame = (0..<frames).first { bank+Int(long(bank+$0*4)) == header }
            }
            var asset: String?
            if bank == 0x5ad16,frame != nil {
                // $19380 compresses nine view angles into 5, 3 or 1 sprite at
                // greater distances. A sprite index modulo nine is therefore
                // not its angle. $1898a retains the actual angle before that
                // lookup and before the separate red/white family is added.
                let angle = Int(word(0x189aa))
                if (0...8).contains(angle) { asset = "car-\(angle)" }
            }
            else if bank != 0x4959e {
                asset = videoWorldAsset(bank:bank,frame:frame)
            }
            let planes = Int(word(header+4)),size = Int(word(header+6)),stride = ((width+15)/16)*2,start = header+8
            guard (3...4).contains(planes),size == stride*height,start+(planes+1)*size<=ram.count else { return }
            var pixels = [UInt8](repeating:255,count:width*height)
            for y in 0..<height { for x in 0..<width {
                let offset = y*stride+x/8,bit: UInt8 = 1 << (7-x%8)
                guard ram[start+planes*size+offset]&bit != 0 else { continue }
                var index: UInt8 = 0
                for plane in 0..<planes where ram[start+plane*size+offset]&bit != 0 { index |= 1 << plane }
                pixels[y*width+x] = index
            } }
            let object = LotusVideoObject(bank:bank,header:header,x:Int(Int16(truncatingIfNeeded:r[1])),
                y:Int(Int16(truncatingIfNeeded:r[5]))+viewport,width:width,height:height,viewport:viewport,
                bottom:min(95,Int(word(0x19430)))+viewport,asset:asset,pixels:pixels,frame:frame)
            let list = Int(long(0x19426))
            if (videoPendingBatches[list]?.objects.count ?? 256)<256 { videoPendingBatches[list]?.objects.append(object) }
        }
    }
}
