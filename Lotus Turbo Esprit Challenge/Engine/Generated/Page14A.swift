// Generated 68000 game labels $014A00–$014AFF.
extension LotusMachine {
    func page14a() {
        switch pc {
        case 0x14a02: pc = 84486; let e0 = resolve(.reg(4), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(84484), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x14a06: pc = 84490; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(84488), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x14a0a: pc = 84494; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(84492), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x14a0e: pc = 84496; let e0 = resolve(.immediate(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x14a10: pc = 84500; let e0 = resolve(.reg(5), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(84498), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x14a14: pc = 84504; let e0 = resolve(.reg(5), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(84502), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x14a18: pc = 84508; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(84506), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x14a1c: pc = 84512; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(84510), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x14a20: pc = 84516; let e0 = resolve(.reg(4), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(84514), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x14a24: pc = 84520; let e0 = resolve(.reg(4), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(84518), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x14a28: pc = 84524; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(84522), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x14a2c: pc = 84528; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(84526), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x14a30: pc = 84530; let e0 = resolve(.immediate(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x14a32: pc = 84534; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (84532 + Int(sign(word(84532), 2))) } }
        case 0x14a36: pc = 84538; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(84536), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x14a3a: pc = 84542; let e0 = resolve(.reg(4), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(84540), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x14a3e: pc = 84546; let e0 = resolve(.reg(4), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(84544), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x14a42: pc = 84550; let e0 = resolve(.reg(4), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(84548), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x14a46: pc = 84554; let e0 = resolve(.reg(4), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(84552), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x14a4a: pc = 84558; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(84556), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x14a4e: pc = 84564; let e0 = resolve(.memory(Int(long(84560)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x14a54: pc = 84566; r[0] = UInt32(bitPattern: sign(byte(84565), 1)); logic(r[0], 4)
        case 0x14a56: pc = 84568; let e0 = resolve(.post(8), 2); put(e0, 0, 2); logic(0, 2)
        case 0x14a58: pc = 84572; if !condition(1) {     setRegister(0, r[0] &- 1, 2);     if r[0] & 65535 != 65535 { pc = (84570 + Int(sign(word(84570), 2))) } }
        case 0x14a5c: pc = 84578; let e0 = resolve(.memory(Int(long(84574)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x14a62: pc = 84584; let e0 = resolve(.memory(Int(long(84580)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x14a68: pc = 84590; let e0 = resolve(.memory(Int(long(84586)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x14a6e: pc = 84596; let e0 = resolve(.memory(Int(long(84592)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x14a74: pc = 84602; let e0 = resolve(.memory(Int(long(84598)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x14a7a: pc = 84608; let e0 = resolve(.memory(Int(long(84604)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x14a80: pc = 84614; let e0 = resolve(.memory(Int(long(84610)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x14a86: pc = 84620; let e0 = resolve(.memory(Int(long(84616)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x14a8c: pc = 84626; let e0 = resolve(.memory(Int(long(84622)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x14a92: pc = 84632; let e0 = resolve(.memory(Int(long(84628)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x14a98: pc = 84638; let e0 = resolve(.memory(Int(long(84634)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x14a9e: pc = 84640; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x14aa0: pc = 84644; let e0 = resolve(.immediate(word(84642)), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x14aa4: pc = 84648; let e0 = resolve(.immediate(word(84646)), 1); let value = get(e0, 1); let e1 = resolve(.reg(1), 1); put(e1, value, 1); logic(value, 1)
        case 0x14aa8: pc = 84650; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.reg(2), 1); put(e1, value, 1); logic(value, 1)
        case 0x14aaa: pc = 84652; setRegister(2, UInt32(bitPattern: sign(r[2], 1)), 2); logic(r[2], 2)
        case 0x14aac: pc = 84656; let e0 = resolve(.reg(2), 1); let value = get(e0, 1); let e1 = resolve(.offset(8, Int(sign(word(84654), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x14ab0: pc = 84658; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.reg(2), 1); put(e1, value, 1); logic(value, 1)
        case 0x14ab2: pc = 84660; setRegister(2, UInt32(bitPattern: sign(r[2], 1)), 2); logic(r[2], 2)
        case 0x14ab4: pc = 84664; let e0 = resolve(.reg(2), 1); let value = get(e0, 1); let e1 = resolve(.offset(8, Int(sign(word(84662), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x14ab8: pc = 84666; let e0 = resolve(.indirect(8), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = add(destination, source, 1); put(e1, value, 1)
        case 0x14aba: pc = 84670; let e0 = resolve(.offset(8, Int(sign(word(84668), 2))), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = add(destination, source, 1); put(e1, value, 1)
        case 0x14abe: pc = 84674; let e0 = resolve(.immediate(word(84672)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x14ac2: pc = 84678; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (84676 + Int(sign(word(84676), 2))) } }
        case 0x14ac6: pc = 84684; let e0 = resolve(.memory(Int(long(84680)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x14acc: pc = 84690; let e0 = resolve(.memory(Int(long(84686)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x14ad2: pc = 84692; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x14ad4: pc = 84696; let e0 = resolve(.immediate(word(84694)), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x14ad8: pc = 84700; let e0 = resolve(.immediate(word(84698)), 2); let value = get(e0, 2); let e1 = resolve(.reg(5), 2); put(e1, value, 2); logic(value, 2)
        case 0x14adc: pc = 84704; let e0 = resolve(.immediate(word(84702)), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x14ae0: pc = 84708; let e0 = resolve(.indexed(8, 6, false, 2), 1); logic(get(e0, 1), 1)
        case 0x14ae4: pc = 84710; if condition(7) { pc = (84710 + Int(sign(byte(84709), 1))) }
        case 0x14ae6: pc = 84716; let e0 = resolve(.immediate(word(84712)), 1); let source = get(e0, 1); let e1 = resolve(.indexed(8, 6, false, 2), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x14aec: pc = 84718; if condition(7) { pc = (84718 + Int(sign(byte(84717), 1))) }
        case 0x14aee: pc = 84722; let e0 = resolve(.indexed(8, 6, false, 3), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x14af2: pc = 84724; let e0 = resolve(.reg(0), 1); logic(get(e0, 1), 1)
        case 0x14af4: pc = 84726; if condition(10) { pc = (84726 + Int(sign(byte(84725), 1))) }
        case 0x14af6: pc = 84728; let e0 = resolve(.reg(4), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x14af8: pc = 84730; if condition(5) { pc = (84730 + Int(sign(byte(84729), 1))) }
        case 0x14afa: pc = 84732; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.reg(4), 1); put(e1, value, 1); logic(value, 1)
        case 0x14afc: pc = 84734; pc = (84734 + Int(sign(byte(84733), 1)))
        case 0x14afe: pc = 84736; let e0 = resolve(.reg(5), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        default: fail("Untranslated game address")
        }
    }
}
