// Generated 68000 game labels $017C00–$017CFF.
extension LotusMachine {
    func page17c() {
        switch pc {
        case 0x17c04: pc = 97292; let e0 = resolve(.immediate(word(97286)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(97288)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x17c0c: pc = 97294; if condition(6) { pc = (97294 + Int(sign(byte(97293), 1))) }
        case 0x17c0e: pc = 97300; let e0 = resolve(.memory(Int(long(97296)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x17c14: pc = 97304; push(97304); pc = (97302 + Int(sign(word(97302), 2)))
        case 0x17c18: pc = 97308; push(97308); pc = (97306 + Int(sign(word(97306), 2)))
        case 0x17c1c: pc = 97312; push(97312); pc = (97310 + Int(sign(word(97310), 2)))
        case 0x17c20: pc = 97318; let e0 = resolve(.memory(Int(long(97314)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x17c26: pc = 97320; if condition(7) { pc = (97320 + Int(sign(byte(97319), 1))) }
        case 0x17c28: pc = 97324; push(97324); pc = (97322 + Int(sign(word(97322), 2)))
        case 0x17c2c: pc = 97326; pc = (97326 + Int(sign(byte(97325), 1)))
        case 0x17c2e: pc = 97334; let e0 = resolve(.immediate(word(97328)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(97330)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x17c36: pc = 97338; let e0 = resolve(.memory(103454), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x17c3a: pc = 97342; let e0 = resolve(.memory(103456), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x17c3e: pc = 97346; let e0 = resolve(.memory(109048), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x17c42: pc = 97350; let e0 = resolve(.memory(109230), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x17c46: pc = 97352; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x17c48: pc = 97354; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x17c4a: pc = 97356; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x17c4c: pc = 97358; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x17c4e: pc = 97360; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x17c50: pc = 97362; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination | source; put(e1, value, 2); logic(value, 2)
        case 0x17c52: pc = 97364; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination | source; put(e1, value, 2); logic(value, 2)
        case 0x17c54: pc = 97366; let e0 = resolve(.reg(3), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination | source; put(e1, value, 2); logic(value, 2)
        case 0x17c56: pc = 97368; if condition(7) { pc = (97368 + Int(sign(byte(97367), 1))) }
        case 0x17c58: pc = 97370; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x17c5a: pc = 97372; if condition(4) { pc = (97372 + Int(sign(byte(97371), 1))) }
        case 0x17c5c: pc = 97374; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x17c5e: pc = 97376; if condition(4) { pc = (97376 + Int(sign(byte(97375), 1))) }
        case 0x17c60: pc = 97378; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x17c62: pc = 97380; if condition(4) { pc = (97380 + Int(sign(byte(97379), 1))) }
        case 0x17c64: pc = 97382; if condition(5) { pc = (97382 + Int(sign(byte(97381), 1))) }
        case 0x17c66: pc = 97384; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x17c68: pc = 97386; if condition(4) { pc = (97386 + Int(sign(byte(97385), 1))) }
        case 0x17c6a: pc = 97388; if condition(5) { pc = (97388 + Int(sign(byte(97387), 1))) }
        case 0x17c6c: pc = 97390; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x17c6e: pc = 97392; if condition(4) { pc = (97392 + Int(sign(byte(97391), 1))) }
        case 0x17c70: pc = 97394; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x17c72: pc = 97396; if condition(4) { pc = (97396 + Int(sign(byte(97395), 1))) }
        case 0x17c74: pc = 97398; if condition(5) { pc = (97398 + Int(sign(byte(97397), 1))) }
        case 0x17c76: pc = 97400; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x17c78: pc = 97402; if condition(4) { pc = (97402 + Int(sign(byte(97401), 1))) }
        case 0x17c7a: pc = 97404; if condition(5) { pc = (97404 + Int(sign(byte(97403), 1))) }
        case 0x17c7c: pc = 97406; let e0 = resolve(.reg(8), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x17c7e: pc = 97408; let e0 = resolve(.reg(10), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x17c80: pc = 97412; push(97412); pc = (97410 + Int(sign(word(97410), 2)))
        case 0x17c84: pc = 97414; let e0 = resolve(.post(15), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x17c86: pc = 97416; let e0 = resolve(.post(15), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x17c88: pc = 97420; push(97420); pc = (97418 + Int(sign(word(97418), 2)))
        case 0x17c8c: pc = 97422; pc = (97422 + Int(sign(byte(97421), 1)))
        case 0x17c8e: pc = 97424; let e0 = resolve(.reg(8), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x17c90: pc = 97426; let e0 = resolve(.reg(10), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x17c92: pc = 97430; push(97430); pc = (97428 + Int(sign(word(97428), 2)))
        case 0x17c96: pc = 97432; let e0 = resolve(.post(15), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x17c98: pc = 97434; let e0 = resolve(.post(15), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x17c9a: pc = 97438; push(97438); pc = (97436 + Int(sign(word(97436), 2)))
        case 0x17c9e: pc = 97440; pc = (97440 + Int(sign(byte(97439), 1)))
        case 0x17ca0: pc = 97442; let e0 = resolve(.reg(8), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x17ca2: pc = 97444; let e0 = resolve(.reg(10), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x17ca4: pc = 97448; push(97448); pc = (97446 + Int(sign(word(97446), 2)))
        case 0x17ca8: pc = 97450; let e0 = resolve(.post(15), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x17caa: pc = 97452; let e0 = resolve(.post(15), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x17cac: pc = 97460; let e0 = resolve(.immediate(word(97454)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(97456)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x17cb4: pc = 97464; pc = (97462 + Int(sign(word(97462), 2)))
        case 0x17cb8: pc = 97466; let e0 = resolve(.reg(8), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x17cba: pc = 97468; let e0 = resolve(.reg(10), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x17cbc: pc = 97472; push(97472); pc = (97470 + Int(sign(word(97470), 2)))
        case 0x17cc0: pc = 97474; let e0 = resolve(.post(15), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x17cc2: pc = 97476; let e0 = resolve(.post(15), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x17cc4: pc = 97484; let e0 = resolve(.immediate(word(97478)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(97480)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x17ccc: pc = 97488; pc = (97486 + Int(sign(word(97486), 2)))
        case 0x17cd0: pc = 97494; let e0 = resolve(.immediate(long(97490)), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x17cd6: pc = 97500; let e0 = resolve(.memory(Int(long(97496)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(2), 4); put(e1, value, 4); logic(value, 4)
        case 0x17cdc: pc = 97506; let e0 = resolve(.memory(Int(long(97502)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x17ce2: pc = 97512; let e0 = resolve(.memory(Int(long(97508)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x17ce8: pc = 97518; let e0 = resolve(.memory(Int(long(97514)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(5), 2); put(e1, value, 2); logic(value, 2)
        case 0x17cee: pc = 97520; push(97520); pc = (97520 + Int(sign(byte(97519), 1)))
        case 0x17cf0: pc = 97526; let e0 = resolve(.memory(Int(long(97522)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x17cf6: pc = 97532; let e0 = resolve(.immediate(long(97528)), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x17cfc: pc = 97540; let e0 = resolve(.immediate(word(97534)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(97536)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        default: fail("Untranslated game address")
        }
    }
}
