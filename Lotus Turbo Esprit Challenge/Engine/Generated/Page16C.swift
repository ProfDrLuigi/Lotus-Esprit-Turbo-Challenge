// Generated 68000 game labels $016C00–$016CFF.
extension LotusMachine {
    func page16c() {
        switch pc {
        case 0x16c00: pc = 93186; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x16c02: pc = 93188; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16c04: pc = 93190; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16c06: pc = 93192; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16c08: pc = 93196; let e0 = resolve(.immediate(word(93194)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x16c0c: pc = 93198; let e0 = resolve(.indirect(8), 1); let source = get(e0, 1); let e1 = resolve(.reg(6), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x16c0e: pc = 93200; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16c10: pc = 93202; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16c12: pc = 93204; let e0 = resolve(.post(11), 2); let source = get(e0, 2); r[6] = UInt32(bitPattern: sign(r[6], 2) &* sign(source, 2)); logic(r[6], 4)
        case 0x16c14: pc = 93206; r[6] = (r[6] << 16) | (r[6] >> 16); logic(r[6], 4)
        case 0x16c16: pc = 93208; let e0 = resolve(.post(12), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16c18: pc = 93210; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16c1a: pc = 93214; let e0 = resolve(.immediate(word(93212)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16c1e: pc = 93218; if condition(4) { pc = (93216 + Int(sign(word(93216), 2))) }
        case 0x16c22: pc = 93220; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16c24: pc = 93222; if condition(10) { pc = (93222 + Int(sign(byte(93221), 1))) }
        case 0x16c26: pc = 93224; let e0 = resolve(.reg(6), 1); let value = get(e0, 1); let e1 = resolve(.reg(7), 1); put(e1, value, 1); logic(value, 1)
        case 0x16c28: pc = 93226; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16c2a: pc = 93228; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16c2c: pc = 93230; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16c2e: pc = 93232; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x16c30: pc = 93234; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16c32: pc = 93236; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16c34: pc = 93238; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16c36: pc = 93242; let e0 = resolve(.immediate(word(93240)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x16c3a: pc = 93244; let e0 = resolve(.indirect(8), 1); let source = get(e0, 1); let e1 = resolve(.reg(6), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x16c3c: pc = 93246; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16c3e: pc = 93248; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16c40: pc = 93250; let e0 = resolve(.post(11), 2); let source = get(e0, 2); r[6] = UInt32(bitPattern: sign(r[6], 2) &* sign(source, 2)); logic(r[6], 4)
        case 0x16c42: pc = 93252; r[6] = (r[6] << 16) | (r[6] >> 16); logic(r[6], 4)
        case 0x16c44: pc = 93254; let e0 = resolve(.post(12), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16c46: pc = 93256; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16c48: pc = 93260; let e0 = resolve(.immediate(word(93258)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16c4c: pc = 93264; if condition(4) { pc = (93262 + Int(sign(word(93262), 2))) }
        case 0x16c50: pc = 93266; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16c52: pc = 93268; if condition(10) { pc = (93268 + Int(sign(byte(93267), 1))) }
        case 0x16c54: pc = 93270; let e0 = resolve(.reg(6), 1); let value = get(e0, 1); let e1 = resolve(.reg(7), 1); put(e1, value, 1); logic(value, 1)
        case 0x16c56: pc = 93272; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16c58: pc = 93274; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16c5a: pc = 93276; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16c5c: pc = 93278; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x16c5e: pc = 93280; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16c60: pc = 93282; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16c62: pc = 93284; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16c64: pc = 93288; let e0 = resolve(.immediate(word(93286)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x16c68: pc = 93290; let e0 = resolve(.indirect(8), 1); let source = get(e0, 1); let e1 = resolve(.reg(6), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x16c6a: pc = 93292; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16c6c: pc = 93294; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16c6e: pc = 93296; let e0 = resolve(.post(11), 2); let source = get(e0, 2); r[6] = UInt32(bitPattern: sign(r[6], 2) &* sign(source, 2)); logic(r[6], 4)
        case 0x16c70: pc = 93298; r[6] = (r[6] << 16) | (r[6] >> 16); logic(r[6], 4)
        case 0x16c72: pc = 93300; let e0 = resolve(.post(12), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16c74: pc = 93302; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16c76: pc = 93306; let e0 = resolve(.immediate(word(93304)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16c7a: pc = 93310; if condition(4) { pc = (93308 + Int(sign(word(93308), 2))) }
        case 0x16c7e: pc = 93312; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16c80: pc = 93314; if condition(10) { pc = (93314 + Int(sign(byte(93313), 1))) }
        case 0x16c82: pc = 93316; let e0 = resolve(.reg(6), 1); let value = get(e0, 1); let e1 = resolve(.reg(7), 1); put(e1, value, 1); logic(value, 1)
        case 0x16c84: pc = 93318; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16c86: pc = 93320; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16c88: pc = 93322; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16c8a: pc = 93324; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x16c8c: pc = 93326; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16c8e: pc = 93328; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16c90: pc = 93330; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16c92: pc = 93334; let e0 = resolve(.immediate(word(93332)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x16c96: pc = 93336; let e0 = resolve(.indirect(8), 1); let source = get(e0, 1); let e1 = resolve(.reg(6), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x16c98: pc = 93338; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16c9a: pc = 93340; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16c9c: pc = 93342; let e0 = resolve(.post(11), 2); let source = get(e0, 2); r[6] = UInt32(bitPattern: sign(r[6], 2) &* sign(source, 2)); logic(r[6], 4)
        case 0x16c9e: pc = 93344; r[6] = (r[6] << 16) | (r[6] >> 16); logic(r[6], 4)
        case 0x16ca0: pc = 93346; let e0 = resolve(.post(12), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16ca2: pc = 93348; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16ca4: pc = 93352; let e0 = resolve(.immediate(word(93350)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16ca8: pc = 93356; if condition(4) { pc = (93354 + Int(sign(word(93354), 2))) }
        case 0x16cac: pc = 93358; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16cae: pc = 93360; if condition(10) { pc = (93360 + Int(sign(byte(93359), 1))) }
        case 0x16cb0: pc = 93362; let e0 = resolve(.reg(6), 1); let value = get(e0, 1); let e1 = resolve(.reg(7), 1); put(e1, value, 1); logic(value, 1)
        case 0x16cb2: pc = 93364; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16cb4: pc = 93366; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16cb6: pc = 93368; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16cb8: pc = 93370; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x16cba: pc = 93372; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16cbc: pc = 93374; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16cbe: pc = 93376; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16cc0: pc = 93380; let e0 = resolve(.immediate(word(93378)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x16cc4: pc = 93382; let e0 = resolve(.indirect(8), 1); let source = get(e0, 1); let e1 = resolve(.reg(6), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x16cc6: pc = 93384; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16cc8: pc = 93386; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16cca: pc = 93388; let e0 = resolve(.post(11), 2); let source = get(e0, 2); r[6] = UInt32(bitPattern: sign(r[6], 2) &* sign(source, 2)); logic(r[6], 4)
        case 0x16ccc: pc = 93390; r[6] = (r[6] << 16) | (r[6] >> 16); logic(r[6], 4)
        case 0x16cce: pc = 93392; let e0 = resolve(.post(12), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16cd0: pc = 93394; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16cd2: pc = 93398; let e0 = resolve(.immediate(word(93396)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16cd6: pc = 93402; if condition(4) { pc = (93400 + Int(sign(word(93400), 2))) }
        case 0x16cda: pc = 93404; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16cdc: pc = 93406; if condition(10) { pc = (93406 + Int(sign(byte(93405), 1))) }
        case 0x16cde: pc = 93408; let e0 = resolve(.reg(6), 1); let value = get(e0, 1); let e1 = resolve(.reg(7), 1); put(e1, value, 1); logic(value, 1)
        case 0x16ce0: pc = 93410; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16ce2: pc = 93412; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16ce4: pc = 93418; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(93414)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x16cea: pc = 93422; if condition(6) { pc = (93420 + Int(sign(word(93420), 2))) }
        case 0x16cee: pc = 93426; let e0 = resolve(.immediate(word(93424)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x16cf2: pc = 93430; let e0 = resolve(.offset(8, Int(sign(word(93428), 2))), 1); let value = get(e0, 1); let e1 = resolve(.reg(4), 1); put(e1, value, 1); logic(value, 1)
        case 0x16cf6: pc = 93432; setRegister(4, UInt32(bitPattern: sign(r[4], 1)), 2); logic(r[4], 2)
        case 0x16cf8: pc = 93436; let e0 = resolve(.offset(8, Int(sign(word(93434), 2))), 1); let value = get(e0, 1); let e1 = resolve(.reg(5), 1); put(e1, value, 1); logic(value, 1)
        case 0x16cfc: pc = 93438; setRegister(5, UInt32(bitPattern: sign(r[5], 1)), 2); logic(r[5], 2)
        case 0x16cfe: pc = 93440; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(5), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        default: fail("Untranslated game address")
        }
    }
}
