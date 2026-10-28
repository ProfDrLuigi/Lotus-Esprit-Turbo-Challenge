import Foundation

// Draw only this Mac's radio LCD/buttons on an isolated copy. The native
// framebuffer and synchronized simulation are never edited by local music.
final class LotusOnlineRadio {
    private let replica = LotusMachine(program:Data(),disk:[:])

    func presentation(from source: LotusMachine,track: Int?,frames: Int,seek: Int) -> LotusMachine? {
        guard source.long(0x64) != 0x151b0,source.word(0x1afe0)==41,
              track.map({(1...4).contains($0)}) ?? true,
              source.long(0x1afd0)>0,source.long(0x1afd0)<0xe0000 else { return nil }
        replica.ram=source.ram;replica.custom=source.custom
        replica.r=source.r;replica.frameNumber=source.frameNumber
        replica.captureVideoObjects=source.captureVideoObjects
        replica.isAudioReplica=true;replica.fault=nil
        replica.putWord(0x1b05c,UInt32(track ?? 0))
        replica.putWord(0x13074,UInt32(track == nil ? 0:max(0,frames)%30000))
        replica.putWord(0x13028,seek<0 ? 1:0);replica.putWord(0x1302a,seek>0 ? 1:0)
        // The original display routines write only the track, time and seek
        // glyphs. Running them here also preserves the exact SD appearance.
        for address in [0x1302c,0x13076,0x130f6] {
            replica.r[15]=0xf0000;replica.push(0xeffffc);replica.pc=address
            var steps=0
            while replica.pc != 0xeffffc && replica.fault==nil && steps<20000 {
                if !replica.nativeCall() { replica.stepCompiled() }
                steps+=1
            }
            guard replica.pc==0xeffffc,replica.fault==nil else { return nil }
        }
        return replica
    }
}
