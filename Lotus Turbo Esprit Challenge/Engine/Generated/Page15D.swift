// Generated 68000 game labels $015D00–$015DFF.
extension LotusMachine {
    func page15d() {
        switch pc {
        case 0x15d00: pc = 89346; if condition(6) { pc = (89346 + Int(sign(byte(89345), 1))) }
        case 0x15d02: pc = 89350; let e0 = resolve(.offset(12, Int(sign(word(89348), 2))), 2); logic(get(e0, 2), 2)
        case 0x15d06: pc = 89352; if condition(7) { pc = (89352 + Int(sign(byte(89351), 1))) }
        case 0x15d08: pc = 89356; let e0 = resolve(.immediate(word(89354)), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x15d0c: pc = 89358; pc = (89358 + Int(sign(byte(89357), 1)))
        case 0x15d0e: pc = 89362; let e0 = resolve(.immediate(word(89360)), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x15d12: pc = 89364; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15d14: pc = 89366; if condition(5) { pc = (89366 + Int(sign(byte(89365), 1))) }
        case 0x15d16: pc = 89368; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x15d18: pc = 89370; let e0 = resolve(.immediate(1), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x15d1a: pc = 89372; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15d1c: pc = 89376; let e0 = resolve(.immediate(word(89374)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15d20: pc = 89378; if condition(4) { pc = (89378 + Int(sign(byte(89377), 1))) }
        case 0x15d22: pc = 89382; let e0 = resolve(.immediate(word(89380)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15d26: pc = 89384; let e0 = resolve(.immediate(1), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x15d28: pc = 89388; let e0 = resolve(.offset(12, Int(sign(word(89386), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x15d2c: pc = 89390; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x15d2e: pc = 89392; if condition(11) { pc = (89392 + Int(sign(byte(89391), 1))) }
        case 0x15d30: pc = 89396; let e0 = resolve(.offset(12, Int(sign(word(89394), 2))), 2); let source = get(e0, 2); r[1] = UInt32(bitPattern: sign(r[1], 2) &* sign(source, 2)); logic(r[1], 4)
        case 0x15d34: pc = 89398; if condition(10) { pc = (89398 + Int(sign(byte(89397), 1))) }
        case 0x15d36: pc = 89400; let e0 = resolve(.reg(1), 2); let value = subtract(0, get(e0, 2), 2, extend: false); put(e0, value, 2)
        case 0x15d38: pc = 89402; let e0 = resolve(.immediate(5), 4); let count = get(e0, 4); let e1 = resolve(.reg(1), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x15d3a: pc = 89408; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(89404)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x15d40: pc = 89412; let e0 = resolve(.offset(12, Int(sign(word(89410), 2))), 2); let source = get(e0, 2); r[0] = UInt32(bitPattern: sign(r[0], 2) &* sign(source, 2)); logic(r[0], 4)
        case 0x15d44: pc = 89414; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(4), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x15d46: pc = 89416; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(4), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x15d48: pc = 89418; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(4), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x15d4a: pc = 89420; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(4), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x15d4c: pc = 89422; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(4), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x15d4e: pc = 89426; let e0 = resolve(.offset(12, Int(sign(word(89424), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15d52: pc = 89428; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x15d54: pc = 89430; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15d56: pc = 89432; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15d58: pc = 89434; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15d5a: pc = 89436; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15d5c: pc = 89440; let e0 = resolve(.offset(12, Int(sign(word(89438), 2))), 2); let source = get(e0, 2); r[0] = UInt32(bitPattern: sign(r[0], 2) &* sign(source, 2)); logic(r[0], 4)
        case 0x15d60: pc = 89442; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(4), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x15d62: pc = 89446; let e0 = resolve(.offset(12, Int(sign(word(89444), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15d66: pc = 89448; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x15d68: pc = 89450; let e0 = resolve(.reg(0), 2); put(e0, 0, 2); logic(0, 2)
        case 0x15d6a: pc = 89452; let e0 = resolve(.immediate(1), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 4); let value = shift(get(e1, 4), count, 4, 0); put(e1, value, 4)
        case 0x15d6c: pc = 89454; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(4), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x15d6e: pc = 89456; r[4] = (r[4] << 16) | (r[4] >> 16); logic(r[4], 4)
        case 0x15d70: pc = 89460; let e0 = resolve(.immediate(word(89458)), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15d74: pc = 89462; if condition(10) { pc = (89462 + Int(sign(byte(89461), 1))) }
        case 0x15d76: pc = 89468; let e0 = resolve(.immediate(long(89464)), 4); let value = get(e0, 4); let e1 = resolve(.reg(4), 4); put(e1, value, 4); logic(value, 4)
        case 0x15d7c: pc = 89472; let e0 = resolve(.immediate(word(89470)), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15d80: pc = 89474; if condition(11) { pc = (89474 + Int(sign(byte(89473), 1))) }
        case 0x15d82: pc = 89480; let e0 = resolve(.immediate(long(89476)), 4); let value = get(e0, 4); let e1 = resolve(.reg(4), 4); put(e1, value, 4); logic(value, 4)
        case 0x15d88: pc = 89482; r[4] = (r[4] << 16) | (r[4] >> 16); logic(r[4], 4)
        case 0x15d8a: pc = 89486; let e0 = resolve(.reg(4), 4); let value = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(89484), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x15d8e: pc = 89488; pc = Int(pop())
        case 0x15d90: pc = 89492; let e0 = resolve(.immediate(word(89490)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x15d92: pc = 89494; let e0 = resolve(.immediate(word(89492)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x15d94: pc = 89496; let e0 = resolve(.immediate(word(89494)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x15d96: pc = 89502; let e0 = resolve(.immediate(word(89496)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(89498)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15d98: pc = 89500; let e0 = resolve(.immediate(word(89498)), 1); let source = get(e0, 1); let e1 = resolve(.reg(2), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x15d9c: pc = 89502; let e0 = resolve(.immediate(5), 1); let source = get(e0, 1); let e1 = resolve(.pre(12), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = add(destination, source, 1); put(e1, value, 1)
        case 0x15d9e: pc = 89504; if condition(6) { pc = (89504 + Int(sign(byte(89503), 1))) }
        case 0x15da0: pc = 89510; let e0 = resolve(.memory(Int(long(89506)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x15da6: pc = 89512; pc = (89512 + Int(sign(byte(89511), 1)))
        case 0x15da8: pc = 89516; let e0 = resolve(.offset(12, Int(sign(word(89514), 2))), 2); logic(get(e0, 2), 2)
        case 0x15dac: pc = 89518; if condition(6) { pc = (89518 + Int(sign(byte(89517), 1))) }
        case 0x15dae: pc = 89524; let e0 = resolve(.immediate(word(89520)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.offset(12, Int(sign(word(89522), 2))), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x15db4: pc = 89526; pc = (89526 + Int(sign(byte(89525), 1)))
        case 0x15db6: pc = 89532; let e0 = resolve(.immediate(word(89528)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.offset(12, Int(sign(word(89530), 2))), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x15dbc: pc = 89534; if condition(7) { pc = (89534 + Int(sign(byte(89533), 1))) }
        case 0x15dbe: pc = 89538; let e0 = resolve(.offset(12, Int(sign(word(89536), 2))), 2); logic(get(e0, 2), 2)
        case 0x15dc2: pc = 89540; if condition(6) { pc = (89540 + Int(sign(byte(89539), 1))) }
        case 0x15dc4: pc = 89544; let e0 = resolve(.offset(12, Int(sign(word(89542), 2))), 2); put(e0, 0, 2); logic(0, 2)
        case 0x15dc8: pc = 89550; let e0 = resolve(.immediate(word(89546)), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(89548), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15dce: pc = 89554; let e0 = resolve(.offset(12, Int(sign(word(89552), 2))), 4); logic(get(e0, 4), 4)
        case 0x15dd2: pc = 89556; if condition(6) { pc = (89556 + Int(sign(byte(89555), 1))) }
        case 0x15dd4: pc = 89560; let e0 = resolve(.offset(12, Int(sign(word(89558), 2))), 2); put(e0, 0, 2); logic(0, 2)
        case 0x15dd8: pc = 89566; let e0 = resolve(.immediate(word(89562)), 2); let source = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(89564), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15dde: pc = 89568; if condition(4) { pc = (89568 + Int(sign(byte(89567), 1))) }
        case 0x15de0: pc = 89576; let e0 = resolve(.immediate(long(89570)), 4); let value = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(89574), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x15de8: pc = 89578; pc = Int(pop())
        case 0x15dea: pc = 89582; let e0 = resolve(.offset(12, Int(sign(word(89580), 2))), 4); logic(get(e0, 4), 4)
        case 0x15dee: pc = 89584; if condition(7) { pc = (89584 + Int(sign(byte(89583), 1))) }
        case 0x15df0: pc = 89588; let e0 = resolve(.offset(12, Int(sign(word(89586), 2))), 2); logic(get(e0, 2), 2)
        case 0x15df4: pc = 89590; if condition(6) { pc = (89590 + Int(sign(byte(89589), 1))) }
        case 0x15df6: pc = 89594; let e0 = resolve(.offset(12, Int(sign(word(89592), 2))), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x15dfa: pc = 89596; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x15dfc: pc = 89598; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x15dfe: pc = 89604; let e0 = resolve(.memory(Int(long(89600)) & 0xffffff), 2); let source = get(e0, 2); divide(0, source, signed: false)
        default: fail("Untranslated game address")
        }
    }
}
