// Generated 68000 game labels $015C00–$015CFF.
extension LotusMachine {
    func page15c() {
        switch pc {
        case 0x15c00: pc = 89094; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(89090)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x15c06: pc = 89096; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); r[0] = (r[0] & 65535) &* source; logic(r[0], 4)
        case 0x15c08: pc = 89098; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x15c0a: pc = 89100; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x15c0c: pc = 89102; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x15c0e: pc = 89106; let e0 = resolve(.offset(12, Int(sign(word(89104), 2))), 2); logic(get(e0, 2), 2)
        case 0x15c12: pc = 89108; if condition(6) { pc = (89108 + Int(sign(byte(89107), 1))) }
        case 0x15c14: pc = 89116; let e0 = resolve(.immediate(word(89110)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(89112)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15c1c: pc = 89118; if condition(7) { pc = (89118 + Int(sign(byte(89117), 1))) }
        case 0x15c1e: pc = 89122; let e0 = resolve(.offset(12, Int(sign(word(89120), 2))), 2); logic(get(e0, 2), 2)
        case 0x15c22: pc = 89124; if condition(6) { pc = (89124 + Int(sign(byte(89123), 1))) }
        case 0x15c24: pc = 89128; let e0 = resolve(.offset(12, Int(sign(word(89126), 2))), 2); logic(get(e0, 2), 2)
        case 0x15c28: pc = 89130; if condition(6) { pc = (89130 + Int(sign(byte(89129), 1))) }
        case 0x15c2a: pc = 89136; let e0 = resolve(.immediate(word(89132)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.offset(12, Int(sign(word(89134), 2))), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x15c30: pc = 89138; if condition(7) { pc = (89138 + Int(sign(byte(89137), 1))) }
        case 0x15c32: pc = 89144; let e0 = resolve(.immediate(word(89140)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.offset(12, Int(sign(word(89142), 2))), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x15c38: pc = 89146; if condition(7) { pc = (89146 + Int(sign(byte(89145), 1))) }
        case 0x15c3a: pc = 89148; pc = (89148 + Int(sign(byte(89147), 1)))
        case 0x15c3c: pc = 89154; let e0 = resolve(.immediate(word(89150)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.offset(12, Int(sign(word(89152), 2))), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x15c42: pc = 89156; if condition(7) { pc = (89156 + Int(sign(byte(89155), 1))) }
        case 0x15c44: pc = 89160; let e0 = resolve(.immediate(word(89158)), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15c48: pc = 89162; if condition(7) { pc = (89162 + Int(sign(byte(89161), 1))) }
        case 0x15c4a: pc = 89164; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15c4c: pc = 89166; pc = (89166 + Int(sign(byte(89165), 1)))
        case 0x15c4e: pc = 89170; let e0 = resolve(.offset(12, Int(sign(word(89168), 2))), 2); logic(get(e0, 2), 2)
        case 0x15c52: pc = 89172; if condition(6) { pc = (89172 + Int(sign(byte(89171), 1))) }
        case 0x15c54: pc = 89178; let e0 = resolve(.immediate(word(89174)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.offset(12, Int(sign(word(89176), 2))), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x15c5a: pc = 89180; if condition(7) { pc = (89180 + Int(sign(byte(89179), 1))) }
        case 0x15c5c: pc = 89186; let e0 = resolve(.immediate(word(89182)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.offset(12, Int(sign(word(89184), 2))), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x15c62: pc = 89188; if condition(7) { pc = (89188 + Int(sign(byte(89187), 1))) }
        case 0x15c64: pc = 89190; pc = (89190 + Int(sign(byte(89189), 1)))
        case 0x15c66: pc = 89196; let e0 = resolve(.immediate(word(89192)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.offset(12, Int(sign(word(89194), 2))), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x15c6c: pc = 89198; if condition(7) { pc = (89198 + Int(sign(byte(89197), 1))) }
        case 0x15c6e: pc = 89200; let e0 = resolve(.reg(3), 2); logic(get(e0, 2), 2)
        case 0x15c70: pc = 89202; if condition(7) { pc = (89202 + Int(sign(byte(89201), 1))) }
        case 0x15c72: pc = 89204; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x15c74: pc = 89206; pc = (89206 + Int(sign(byte(89205), 1)))
        case 0x15c76: pc = 89208; pc = (89208 + Int(sign(byte(89207), 1)))
        case 0x15c78: pc = 89214; let e0 = resolve(.memory(Int(long(89210)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15c7e: pc = 89218; let e0 = resolve(.offset(12, Int(sign(word(89216), 2))), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15c82: pc = 89220; if condition(7) { pc = (89220 + Int(sign(byte(89219), 1))) }
        case 0x15c84: pc = 89222; if condition(4) { pc = (89222 + Int(sign(byte(89221), 1))) }
        case 0x15c86: pc = 89226; let e0 = resolve(.immediate(word(89224)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15c8a: pc = 89228; if condition(4) { pc = (89228 + Int(sign(byte(89227), 1))) }
        case 0x15c8c: pc = 89230; let e0 = resolve(.reg(1), 2); logic(get(e0, 2), 2)
        case 0x15c8e: pc = 89232; if condition(7) { pc = (89232 + Int(sign(byte(89231), 1))) }
        case 0x15c90: pc = 89234; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x15c92: pc = 89236; pc = (89236 + Int(sign(byte(89235), 1)))
        case 0x15c94: pc = 89240; let e0 = resolve(.immediate(word(89238)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15c98: pc = 89242; if condition(5) { pc = (89242 + Int(sign(byte(89241), 1))) }
        case 0x15c9a: pc = 89246; let e0 = resolve(.immediate(word(89244)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15c9e: pc = 89248; if condition(7) { pc = (89248 + Int(sign(byte(89247), 1))) }
        case 0x15ca0: pc = 89250; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15ca2: pc = 89252; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15ca4: pc = 89254; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x15ca6: pc = 89256; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x15ca8: pc = 89258; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x15caa: pc = 89264; let e0 = resolve(.memory(Int(long(89260)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x15cb0: pc = 89266; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15cb2: pc = 89270; let e0 = resolve(.indexed(8, 2, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x15cb6: pc = 89272; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); divide(0, source, signed: false)
        case 0x15cb8: pc = 89276; let e0 = resolve(.immediate(word(89274)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15cbc: pc = 89278; if condition(5) { pc = (89278 + Int(sign(byte(89277), 1))) }
        case 0x15cbe: pc = 89282; let e0 = resolve(.immediate(word(89280)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15cc2: pc = 89284; if condition(4) { pc = (89284 + Int(sign(byte(89283), 1))) }
        case 0x15cc4: pc = 89290; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(89286)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x15cca: pc = 89292; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); r[0] = (r[0] & 65535) &* source; logic(r[0], 4)
        case 0x15ccc: pc = 89294; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x15cce: pc = 89296; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x15cd0: pc = 89298; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x15cd2: pc = 89302; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(89300), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15cd6: pc = 89306; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(89304), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15cda: pc = 89310; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(89308), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15cde: pc = 89318; let e0 = resolve(.memory(Int(long(89312)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(89316), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15ce6: pc = 89320; pc = Int(pop())
        case 0x15ce8: pc = 89324; let e0 = resolve(.offset(12, Int(sign(word(89322), 2))), 4); let value = get(e0, 4); let e1 = resolve(.reg(4), 4); put(e1, value, 4); logic(value, 4)
        case 0x15cec: pc = 89328; let e0 = resolve(.offset(12, Int(sign(word(89326), 2))), 4); let value = get(e0, 4); let e1 = resolve(.reg(7), 4); put(e1, value, 4); logic(value, 4)
        case 0x15cf0: pc = 89332; let e0 = resolve(.offset(12, Int(sign(word(89330), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15cf4: pc = 89334; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x15cf6: pc = 89336; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(7), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x15cf8: pc = 89340; let e0 = resolve(.reg(7), 4); let value = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(89338), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x15cfc: pc = 89344; let e0 = resolve(.offset(12, Int(sign(word(89342), 2))), 2); logic(get(e0, 2), 2)
        default: fail("Untranslated game address")
        }
    }
}
