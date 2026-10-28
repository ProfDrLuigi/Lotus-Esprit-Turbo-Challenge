// Generated 68000 game labels $015F00–$015FFF.
extension LotusMachine {
    func page15f() {
        switch pc {
        case 0x15f00: pc = 89858; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15f02: pc = 89860; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x15f04: pc = 89862; let e0 = resolve(.reg(3), 2); let source = get(e0, 2); r[2] = UInt32(bitPattern: sign(r[2], 2) &* sign(source, 2)); logic(r[2], 4)
        case 0x15f06: pc = 89864; let e0 = resolve(.immediate(8), 4); let count = get(e0, 4); let e1 = resolve(.reg(2), 4); let value = shift(get(e1, 4), count, 4, 0); put(e1, value, 4)
        case 0x15f08: pc = 89868; let e0 = resolve(.indexed(8, 7, false, 12), 1); let value = get(e0, 1); let e1 = resolve(.reg(1), 1); put(e1, value, 1); logic(value, 1)
        case 0x15f0c: pc = 89870; setRegister(1, UInt32(bitPattern: sign(r[1], 1)), 2); logic(r[1], 2)
        case 0x15f0e: pc = 89872; let e0 = resolve(.immediate(5), 4); let count = get(e0, 4); let e1 = resolve(.reg(1), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x15f10: pc = 89874; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15f12: pc = 89876; let e0 = resolve(.reg(2), 2); let value = subtract(0, get(e0, 2), 2, extend: false); put(e0, value, 2)
        case 0x15f14: pc = 89878; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x15f16: pc = 89880; let e0 = resolve(.immediate(6), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x15f18: pc = 89882; let e0 = resolve(.immediate(8), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x15f1a: pc = 89884; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15f1c: pc = 89886; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15f1e: pc = 89890; let e0 = resolve(.indexed(8, 7, false, 114), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x15f22: pc = 89892; if condition(7) { pc = (89892 + Int(sign(byte(89891), 1))) }
        case 0x15f24: pc = 89896; let e0 = resolve(.immediate(word(89894)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x15f28: pc = 89900; let e0 = resolve(.immediate(word(89898)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x15f2c: pc = 89902; let e0 = resolve(.immediate(3), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x15f2e: pc = 89908; let e0 = resolve(.memory(Int(long(89904)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x15f34: pc = 89910; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x15f36: pc = 89912; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15f38: pc = 89914; if condition(7) { pc = (89914 + Int(sign(byte(89913), 1))) }
        case 0x15f3a: pc = 89916; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.indirect(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x15f3c: pc = 89918; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15f3e: pc = 89920; if condition(7) { pc = (89920 + Int(sign(byte(89919), 1))) }
        case 0x15f40: pc = 89924; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(10, Int(sign(word(89922), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15f44: pc = 89926; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15f46: pc = 89928; if condition(7) { pc = (89928 + Int(sign(byte(89927), 1))) }
        case 0x15f48: pc = 89932; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(10, Int(sign(word(89930), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15f4c: pc = 89934; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15f4e: pc = 89936; if condition(7) { pc = (89936 + Int(sign(byte(89935), 1))) }
        case 0x15f50: pc = 89940; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(10, Int(sign(word(89938), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15f54: pc = 89942; pc = Int(pop())
        case 0x15f56: pc = 89948; let e0 = resolve(.immediate(word(89944)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(89946), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15f5c: pc = 89954; let e0 = resolve(.memory(Int(long(89950)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15f62: pc = 89960; let e0 = resolve(.memory(Int(long(89956)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x15f68: pc = 89964; let e0 = resolve(.immediate(word(89962)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15f6c: pc = 89966; if condition(4) { pc = (89966 + Int(sign(byte(89965), 1))) }
        case 0x15f6e: pc = 89972; let e0 = resolve(.immediate(word(89968)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(89970), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15f74: pc = 89974; pc = (89974 + Int(sign(byte(89973), 1)))
        case 0x15f76: pc = 89982; let e0 = resolve(.immediate(word(89976)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(89978)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15f7e: pc = 89984; if condition(7) { pc = (89984 + Int(sign(byte(89983), 1))) }
        case 0x15f80: pc = 89990; let e0 = resolve(.memory(Int(long(89986)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x15f86: pc = 89992; if condition(6) { pc = (89992 + Int(sign(byte(89991), 1))) }
        case 0x15f88: pc = 89998; let e0 = resolve(.memory(Int(long(89994)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x15f8e: pc = 90000; if condition(6) { pc = (90000 + Int(sign(byte(89999), 1))) }
        case 0x15f90: pc = 90008; let e0 = resolve(.immediate(word(90002)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(90004)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15f98: pc = 90010; if condition(6) { pc = (90010 + Int(sign(byte(90009), 1))) }
        case 0x15f9a: pc = 90018; let e0 = resolve(.immediate(word(90012)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(90014)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15fa2: pc = 90020; if condition(6) { pc = (90020 + Int(sign(byte(90019), 1))) }
        case 0x15fa4: pc = 90028; let e0 = resolve(.immediate(word(90022)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(90024)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x15fac: pc = 90030; pc = Int(pop())
        case 0x15fae: pc = 90036; let e0 = resolve(.immediate(word(90032)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(90034), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15fb4: pc = 90046; let e0 = resolve(.memory(Int(long(90038)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(90042)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x15fbe: pc = 90052; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(90048)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x15fc4: pc = 90058; let e0 = resolve(.memory(Int(long(90054)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x15fca: pc = 90060; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15fcc: pc = 90064; let e0 = resolve(.immediate(word(90062)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15fd0: pc = 90066; if condition(6) { pc = (90066 + Int(sign(byte(90065), 1))) }
        case 0x15fd2: pc = 90068; r[1] = UInt32(bitPattern: sign(byte(90067), 1)); logic(r[1], 4)
        case 0x15fd4: pc = 90074; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(90070)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x15fda: pc = 90076; let e0 = resolve(.reg(1), 2); logic(get(e0, 2), 2)
        case 0x15fdc: pc = 90078; if condition(7) { pc = (90078 + Int(sign(byte(90077), 1))) }
        case 0x15fde: pc = 90082; let e0 = resolve(.immediate(word(90080)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15fe2: pc = 90084; if condition(7) { pc = (90084 + Int(sign(byte(90083), 1))) }
        case 0x15fe4: pc = 90094; let e0 = resolve(.immediate(long(90086)), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(90090)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x15fee: pc = 90104; let e0 = resolve(.immediate(long(90096)), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(90100)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x15ff8: pc = 90106; pc = (90106 + Int(sign(byte(90105), 1)))
        case 0x15ffa: pc = 90116; let e0 = resolve(.immediate(long(90108)), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(90112)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        default: fail("Untranslated game address")
        }
    }
}
