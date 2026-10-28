// Generated 68000 game labels $010B00–$010BFF.
extension LotusMachine {
    func page10b() {
        switch pc {
        case 0x10b5e: pc = 68450; let e0 = resolve(.immediate(word(68448)), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x10b62: pc = 68456; let e0 = resolve(.memory(Int(long(68452)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x10b68: pc = 68462; let e0 = resolve(.memory(Int(long(68458)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x10b6e: pc = 68466; let e0 = resolve(.reg(9), 4); let value = get(e0, 4); let e1 = resolve(.offset(8, Int(sign(word(68464), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x10b72: pc = 68468; let e0 = resolve(.indirect(9), 4); put(e0, 0, 4); logic(0, 4)
        case 0x10b74: pc = 68472; let e0 = resolve(.offset(8, Int(sign(word(68470), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x10b78: pc = 68474; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x10b7a: pc = 68476; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x10b7c: pc = 68480; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.offset(8, Int(sign(word(68478), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x10b80: pc = 68484; let e0 = resolve(.offset(8, Int(sign(word(68482), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x10b84: pc = 68486; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x10b86: pc = 68488; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x10b88: pc = 68490; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(9), 4); let destination = get(e1, 4); _ = source; _ = destination; r[9] = r[9] &+ source
        case 0x10b8a: pc = 68494; let e0 = resolve(.immediate(word(68492)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x10b8e: pc = 68498; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (68496 + Int(sign(word(68496), 2))) } }
        case 0x10b92: pc = 68500; pc = Int(pop())
        case 0x10b94: pc = 68502; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.pre(15), 2); put(e1, value, 2); logic(value, 2)
        case 0x10b96: pc = 68504; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.pre(15), 2); put(e1, value, 2); logic(value, 2)
        case 0x10b98: pc = 68506; let e0 = resolve(.reg(14), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x10b9a: pc = 68512; let e0 = resolve(.memory(Int(long(68508)) & 0xffffff), 4); r[14] = UInt32(truncatingIfNeeded: e0.address)
        case 0x10ba0: pc = 68518; let e0 = resolve(.memory(Int(long(68514)) & 0xffffff), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x10ba6: pc = 68522; let e0 = resolve(.immediate(word(68520)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(0), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x10baa: pc = 68524; if condition(7) { pc = (68524 + Int(sign(byte(68523), 1))) }
        case 0x10bac: pc = 68530; let e0 = resolve(.memory(Int(long(68526)) & 0xffffff), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x10bb2: pc = 68532; let e0 = resolve(.reg(0), 1); let value = ~get(e0, 1); put(e0, value, 1); logic(value, 1)
        case 0x10bb4: pc = 68534; let e0 = resolve(.immediate(1), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 1); let value = shift(get(e1, 1), count, 1, 6); put(e1, value, 1)
        case 0x10bb6: pc = 68540; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.memory(Int(long(68536)) & 0xffffff), 1); put(e1, value, 1); logic(value, 1)
        case 0x10bbc: pc = 68548; let e0 = resolve(.immediate(word(68542)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(68544)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x10bc4: pc = 68550; if condition(6) { pc = (68550 + Int(sign(byte(68549), 1))) }
        case 0x10bc6: pc = 68556; let e0 = resolve(.memory(Int(long(68552)) & 0xffffff), 1); let value = get(e0, 1); let e1 = resolve(.reg(1), 1); put(e1, value, 1); logic(value, 1)
        case 0x10bcc: pc = 68560; let e0 = resolve(.immediate(word(68558)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x10bd0: pc = 68562; if condition(7) { pc = (68562 + Int(sign(byte(68561), 1))) }
        case 0x10bd2: pc = 68566; let e0 = resolve(.immediate(word(68564)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x10bd6: pc = 68568; if condition(7) { pc = (68568 + Int(sign(byte(68567), 1))) }
        case 0x10bd8: pc = 68572; let e0 = resolve(.immediate(word(68570)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x10bdc: pc = 68574; if condition(7) { pc = (68574 + Int(sign(byte(68573), 1))) }
        case 0x10bde: pc = 68578; let e0 = resolve(.immediate(word(68576)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x10be2: pc = 68580; if condition(7) { pc = (68580 + Int(sign(byte(68579), 1))) }
        case 0x10be4: pc = 68584; let e0 = resolve(.immediate(word(68582)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x10be8: pc = 68586; if condition(7) { pc = (68586 + Int(sign(byte(68585), 1))) }
        case 0x10bea: pc = 68590; let e0 = resolve(.immediate(word(68588)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x10bee: pc = 68592; if condition(7) { pc = (68592 + Int(sign(byte(68591), 1))) }
        case 0x10bf0: pc = 68596; let e0 = resolve(.immediate(word(68594)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x10bf4: pc = 68598; if condition(7) { pc = (68598 + Int(sign(byte(68597), 1))) }
        case 0x10bf6: pc = 68602; let e0 = resolve(.immediate(word(68600)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x10bfa: pc = 68604; if condition(7) { pc = (68604 + Int(sign(byte(68603), 1))) }
        case 0x10bfc: pc = 68608; let e0 = resolve(.immediate(word(68606)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        default: fail("Untranslated game address")
        }
    }
}
