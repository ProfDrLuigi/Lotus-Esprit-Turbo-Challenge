// Generated 68000 game labels $014C00–$014CFF.
extension LotusMachine {
    func page14c() {
        switch pc {
        case 0x14c00: pc = 84998; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(84994)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x14c06: pc = 85004; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(85000)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x14c0c: pc = 85006; r[7] = UInt32(bitPattern: sign(byte(85005), 1)); logic(r[7], 4)
        case 0x14c0e: pc = 85012; let e0 = resolve(.memory(Int(long(85008)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x14c14: pc = 85018; let e0 = resolve(.memory(Int(long(85014)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x14c1a: pc = 85024; let e0 = resolve(.memory(Int(long(85020)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x14c20: pc = 85026; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x14c22: pc = 85028; if condition(7) { pc = (85028 + Int(sign(byte(85027), 1))) }
        case 0x14c24: pc = 85034; let e0 = resolve(.memory(Int(long(85030)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x14c2a: pc = 85036; if condition(7) { pc = (85036 + Int(sign(byte(85035), 1))) }
        case 0x14c2c: pc = 85038; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x14c2e: pc = 85040; if condition(7) { pc = (85040 + Int(sign(byte(85039), 1))) }
        case 0x14c30: pc = 85042; let e0 = resolve(.pre(10), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x14c32: pc = 85044; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x14c34: pc = 85050; let e0 = resolve(.memory(Int(long(85046)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x14c3a: pc = 85052; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x14c3c: pc = 85054; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.post(8), 4); put(e1, value, 4); logic(value, 4)
        case 0x14c3e: pc = 85056; let e0 = resolve(.pre(9), 2); let value = get(e0, 2); let e1 = resolve(.post(8), 2); put(e1, value, 2); logic(value, 2)
        case 0x14c40: pc = 85058; let e0 = resolve(.post(8), 2); put(e0, 0, 2); logic(0, 2)
        case 0x14c42: pc = 85062; push(85062); pc = (85060 + Int(sign(word(85060), 2)))
        case 0x14c46: pc = 85066; let e0 = resolve(.immediate(word(85064)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x14c4a: pc = 85070; let e0 = resolve(.immediate(word(85068)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x14c4e: pc = 85072; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.post(8), 2); put(e1, value, 2); logic(value, 2)
        case 0x14c50: pc = 85076; push(85076); pc = (85074 + Int(sign(word(85074), 2)))
        case 0x14c54: pc = 85080; let e0 = resolve(.immediate(word(85078)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x14c58: pc = 85084; let e0 = resolve(.immediate(word(85082)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x14c5c: pc = 85086; if condition(4) { pc = (85086 + Int(sign(byte(85085), 1))) }
        case 0x14c5e: pc = 85088; let e0 = resolve(.immediate(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x14c60: pc = 85090; if condition(7) { pc = (85090 + Int(sign(byte(85089), 1))) }
        case 0x14c62: pc = 85092; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.post(8), 2); put(e1, value, 2); logic(value, 2)
        case 0x14c64: pc = 85094; pc = (85094 + Int(sign(byte(85093), 1)))
        case 0x14c66: pc = 85096; let e0 = resolve(.pre(10), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x14c68: pc = 85098; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x14c6a: pc = 85104; let e0 = resolve(.memory(Int(long(85100)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x14c70: pc = 85106; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x14c72: pc = 85112; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(85108)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x14c78: pc = 85118; let e0 = resolve(.pre(9), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(85114)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x14c7e: pc = 85120; pc = (85120 + Int(sign(byte(85119), 1)))
        case 0x14c80: pc = 85122; let e0 = resolve(.pre(10), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x14c82: pc = 85124; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x14c84: pc = 85130; let e0 = resolve(.memory(Int(long(85126)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x14c8a: pc = 85132; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x14c8c: pc = 85138; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(85134)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x14c92: pc = 85144; let e0 = resolve(.pre(9), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(85140)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x14c98: pc = 85146; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x14c9a: pc = 85150; let e0 = resolve(.immediate(word(85148)), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x14c9e: pc = 85152; if condition(6) { pc = (85152 + Int(sign(byte(85151), 1))) }
        case 0x14ca0: pc = 85160; let e0 = resolve(.immediate(word(85154)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(85156)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x14ca8: pc = 85162; if condition(6) { pc = (85162 + Int(sign(byte(85161), 1))) }
        case 0x14caa: pc = 85172; let e0 = resolve(.immediate(long(85164)), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(85168)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x14cb4: pc = 85182; let e0 = resolve(.immediate(long(85174)), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(85178)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x14cbe: pc = 85188; let e0 = resolve(.memory(Int(long(85184)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x14cc4: pc = 85194; let e0 = resolve(.immediate(long(85190)), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination | source; put(e1, value, 4); logic(value, 4)
        case 0x14cca: pc = 85200; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(85196)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x14cd0: pc = 85206; let e0 = resolve(.memory(Int(long(85202)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x14cd6: pc = 85212; let e0 = resolve(.immediate(long(85208)), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination | source; put(e1, value, 4); logic(value, 4)
        case 0x14cdc: pc = 85218; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(85214)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x14ce2: pc = 85224; let e0 = resolve(.memory(Int(long(85220)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x14ce8: pc = 85230; let e0 = resolve(.immediate(long(85226)), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4); put(e1, value, 4)
        case 0x14cee: pc = 85236; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(85232)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x14cf4: pc = 85242; let e0 = resolve(.memory(Int(long(85238)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x14cfa: pc = 85248; let e0 = resolve(.immediate(long(85244)), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4); put(e1, value, 4)
        default: fail("Untranslated game address")
        }
    }
}
