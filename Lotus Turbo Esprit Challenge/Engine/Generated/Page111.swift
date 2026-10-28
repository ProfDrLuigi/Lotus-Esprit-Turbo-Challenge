// Generated 68000 game labels $011100–$0111FF.
extension LotusMachine {
    func page111() {
        switch pc {
        case 0x11102: pc = 69896; let e0 = resolve(.memory(Int(long(69892)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11108: pc = 69900; if condition(6) { pc = (69898 + Int(sign(word(69898), 2))) }
        case 0x1110c: pc = 69906; let e0 = resolve(.memory(Int(long(69902)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11112: pc = 69910; push(69910); pc = (69908 + Int(sign(word(69908), 2)))
        case 0x11116: pc = 69916; let e0 = resolve(.memory(Int(long(69912)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1111c: pc = 69920; if condition(6) { pc = (69918 + Int(sign(word(69918), 2))) }
        case 0x11120: pc = 69926; let e0 = resolve(.memory(Int(long(69922)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11126: pc = 69928; if condition(7) { pc = (69928 + Int(sign(byte(69927), 1))) }
        case 0x11128: pc = 69934; let e0 = resolve(.memory(Int(long(69930)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1112e: pc = 69938; push(69938); pc = (69936 + Int(sign(word(69936), 2)))
        case 0x11132: pc = 69942; push(69942); pc = (69940 + Int(sign(word(69940), 2)))
        case 0x11136: pc = 69948; let e0 = resolve(.memory(Int(long(69944)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x1113c: pc = 69950; r[0] = UInt32(bitPattern: sign(byte(69949), 1)); logic(r[0], 4)
        case 0x1113e: pc = 69954; push(69954); pc = (69952 + Int(sign(word(69952), 2)))
        case 0x11142: pc = 69958; push(69958); pc = (69956 + Int(sign(word(69956), 2)))
        case 0x11146: pc = 69966; let e0 = resolve(.immediate(word(69960)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69962)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1114e: pc = 69974; let e0 = resolve(.immediate(word(69968)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69970)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11156: pc = 69982; let e0 = resolve(.immediate(word(69976)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69978)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1115e: pc = 69990; let e0 = resolve(.immediate(word(69984)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69986)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11166: pc = 69996; let e0 = resolve(.memory(Int(long(69992)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x1116c: pc = 70002; let e0 = resolve(.memory(Int(long(69998)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11172: pc = 70006; push(70006); pc = (70004 + Int(sign(word(70004), 2)))
        case 0x11176: pc = 70012; let e0 = resolve(.memory(Int(long(70008)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1117c: pc = 70016; if condition(6) { pc = (70014 + Int(sign(word(70014), 2))) }
        case 0x11180: pc = 70022; let e0 = resolve(.memory(Int(long(70018)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11186: pc = 70024; if condition(7) { pc = (70024 + Int(sign(byte(70023), 1))) }
        case 0x11188: pc = 70030; let e0 = resolve(.memory(Int(long(70026)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1118e: pc = 70034; push(70034); pc = (70032 + Int(sign(word(70032), 2)))
        case 0x11192: pc = 70038; push(70038); pc = (70036 + Int(sign(word(70036), 2)))
        case 0x11196: pc = 70044; let e0 = resolve(.memory(Int(long(70040)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x1119c: pc = 70046; r[0] = UInt32(bitPattern: sign(byte(70045), 1)); logic(r[0], 4)
        case 0x1119e: pc = 70050; push(70050); pc = (70048 + Int(sign(word(70048), 2)))
        case 0x111a2: pc = 70054; push(70054); pc = (70052 + Int(sign(word(70052), 2)))
        case 0x111a6: pc = 70062; let e0 = resolve(.immediate(word(70056)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70058)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x111ae: pc = 70070; let e0 = resolve(.immediate(word(70064)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70066)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x111b6: pc = 70078; let e0 = resolve(.immediate(word(70072)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70074)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x111be: pc = 70086; let e0 = resolve(.immediate(word(70080)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70082)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x111c6: pc = 70092; let e0 = resolve(.memory(Int(long(70088)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x111cc: pc = 70098; let e0 = resolve(.memory(Int(long(70094)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x111d2: pc = 70102; push(70102); pc = (70100 + Int(sign(word(70100), 2)))
        case 0x111d6: pc = 70108; let e0 = resolve(.memory(Int(long(70104)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x111dc: pc = 70112; if condition(6) { pc = (70110 + Int(sign(word(70110), 2))) }
        case 0x111e0: pc = 70118; let e0 = resolve(.memory(Int(long(70114)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x111e6: pc = 70120; if condition(7) { pc = (70120 + Int(sign(byte(70119), 1))) }
        case 0x111e8: pc = 70126; let e0 = resolve(.memory(Int(long(70122)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x111ee: pc = 70130; push(70130); pc = (70128 + Int(sign(word(70128), 2)))
        case 0x111f2: pc = 70134; push(70134); pc = (70132 + Int(sign(word(70132), 2)))
        case 0x111f6: pc = 70140; let e0 = resolve(.memory(Int(long(70136)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x111fc: pc = 70142; r[0] = UInt32(bitPattern: sign(byte(70141), 1)); logic(r[0], 4)
        case 0x111fe: pc = 70146; push(70146); pc = (70144 + Int(sign(word(70144), 2)))
        default: fail("Untranslated game address")
        }
    }
}
