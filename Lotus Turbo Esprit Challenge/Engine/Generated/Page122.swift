// Generated 68000 game labels $012200–$0122FF.
extension LotusMachine {
    func page122() {
        switch pc {
        case 0x12204: pc = 74250; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(74246)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x1220a: pc = 74258; let e0 = resolve(.immediate(word(74252)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(74254)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x12212: pc = 74260; if condition(4) { pc = (74260 + Int(sign(byte(74259), 1))) }
        case 0x12214: pc = 74266; let e0 = resolve(.memory(Int(long(74262)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1221a: pc = 74270; let e0 = resolve(.immediate(word(74268)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x1221e: pc = 74274; let e0 = resolve(.immediate(word(74272)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x12222: pc = 74276; if condition(6) { pc = (74276 + Int(sign(byte(74275), 1))) }
        case 0x12224: pc = 74280; let e0 = resolve(.immediate(word(74278)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x12228: pc = 74286; let e0 = resolve(.memory(Int(long(74282)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1222e: pc = 74288; if condition(7) { pc = (74288 + Int(sign(byte(74287), 1))) }
        case 0x12230: pc = 74296; let e0 = resolve(.immediate(word(74290)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(74292)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x12238: pc = 74298; if condition(4) { pc = (74298 + Int(sign(byte(74297), 1))) }
        case 0x1223a: pc = 74304; let e0 = resolve(.memory(Int(long(74300)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x12240: pc = 74308; let e0 = resolve(.immediate(word(74306)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x12244: pc = 74312; let e0 = resolve(.immediate(word(74310)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x12248: pc = 74314; if condition(6) { pc = (74314 + Int(sign(byte(74313), 1))) }
        case 0x1224a: pc = 74318; let e0 = resolve(.immediate(word(74316)), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x1224e: pc = 74324; let e0 = resolve(.memory(Int(long(74320)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x12254: pc = 74326; if condition(7) { pc = (74326 + Int(sign(byte(74325), 1))) }
        case 0x12256: pc = 74332; let e0 = resolve(.memory(Int(long(74328)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x1225c: pc = 74338; let e0 = resolve(.memory(Int(long(74334)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x12262: pc = 74340; if condition(7) { pc = (74340 + Int(sign(byte(74339), 1))) }
        case 0x12264: pc = 74346; let e0 = resolve(.memory(Int(long(74342)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x1226a: pc = 74352; let e0 = resolve(.memory(Int(long(74348)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x12270: pc = 74358; let e0 = resolve(.memory(Int(long(74354)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x12276: pc = 74364; let e0 = resolve(.memory(Int(long(74360)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1227c: pc = 74366; if condition(7) { pc = (74366 + Int(sign(byte(74365), 1))) }
        case 0x1227e: pc = 74370; let e0 = resolve(.immediate(word(74368)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x12282: pc = 74376; let e0 = resolve(.memory(Int(long(74372)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x12288: pc = 74378; if condition(7) { pc = (74378 + Int(sign(byte(74377), 1))) }
        case 0x1228a: pc = 74382; let e0 = resolve(.immediate(word(74380)), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x1228e: pc = 74390; let e0 = resolve(.immediate(word(74384)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(74386)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x12296: pc = 74392; if condition(11) { pc = (74392 + Int(sign(byte(74391), 1))) }
        case 0x12298: pc = 74398; let e0 = resolve(.memory(Int(long(74394)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1229e: pc = 74400; if condition(7) { pc = (74400 + Int(sign(byte(74399), 1))) }
        case 0x122a0: pc = 74406; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(74402)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x122a6: pc = 74412; let e0 = resolve(.memory(Int(long(74408)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x122ac: pc = 74414; if condition(11) { pc = (74414 + Int(sign(byte(74413), 1))) }
        case 0x122ae: pc = 74418; let e0 = resolve(.immediate(word(74416)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x122b2: pc = 74424; let e0 = resolve(.memory(Int(long(74420)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x122b8: pc = 74426; if condition(7) { pc = (74426 + Int(sign(byte(74425), 1))) }
        case 0x122ba: pc = 74432; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(74428)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x122c0: pc = 74438; let e0 = resolve(.memory(Int(long(74434)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x122c6: pc = 74440; if condition(11) { pc = (74440 + Int(sign(byte(74439), 1))) }
        case 0x122c8: pc = 74444; let e0 = resolve(.immediate(word(74442)), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x122cc: pc = 74450; let e0 = resolve(.memory(Int(long(74446)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x122d2: pc = 74452; let e0 = resolve(.reg(2), 2); logic(get(e0, 2), 2)
        case 0x122d4: pc = 74454; if condition(11) { pc = (74454 + Int(sign(byte(74453), 1))) }
        case 0x122d6: pc = 74462; let e0 = resolve(.indexed(8, 2, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.memory(Int(long(74458)) & 0xffffff), 1); put(e1, value, 1); logic(value, 1)
        case 0x122de: pc = 74468; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(74464)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x122e4: pc = 74470; let e0 = resolve(.reg(3), 2); logic(get(e0, 2), 2)
        case 0x122e6: pc = 74472; if condition(11) { pc = (74472 + Int(sign(byte(74471), 1))) }
        case 0x122e8: pc = 74480; let e0 = resolve(.indexed(8, 3, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.memory(Int(long(74476)) & 0xffffff), 1); put(e1, value, 1); logic(value, 1)
        case 0x122f0: pc = 74486; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(74482)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x122f6: pc = 74492; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(74488)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x122fc: pc = 74498; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(74494)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        default: fail("Untranslated game address")
        }
    }
}
