// Generated 68000 game labels $011E00–$011EFF.
extension LotusMachine {
    func page11e() {
        switch pc {
        case 0x11e04: pc = 73222; if condition(6) { pc = (73222 + Int(sign(byte(73221), 1))) }
        case 0x11e06: pc = 73230; let e0 = resolve(.immediate(word(73224)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(73226)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11e0e: pc = 73236; let e0 = resolve(.memory(Int(long(73232)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x11e14: pc = 73238; if condition(6) { pc = (73238 + Int(sign(byte(73237), 1))) }
        case 0x11e16: pc = 73246; let e0 = resolve(.immediate(word(73240)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(73242)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11e1e: pc = 73248; pc = (73248 + Int(sign(byte(73247), 1)))
        case 0x11e20: pc = 73254; let e0 = resolve(.memory(Int(long(73250)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x11e26: pc = 73256; if condition(7) { pc = (73256 + Int(sign(byte(73255), 1))) }
        case 0x11e28: pc = 73258; if condition(10) { pc = (73258 + Int(sign(byte(73257), 1))) }
        case 0x11e2a: pc = 73264; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(73260)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x11e30: pc = 73266; if condition(10) { pc = (73266 + Int(sign(byte(73265), 1))) }
        case 0x11e32: pc = 73272; let e0 = resolve(.memory(Int(long(73268)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11e38: pc = 73278; let e0 = resolve(.memory(Int(long(73274)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11e3e: pc = 73280; pc = (73280 + Int(sign(byte(73279), 1)))
        case 0x11e40: pc = 73286; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(73282)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x11e46: pc = 73294; let e0 = resolve(.immediate(word(73288)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(73290)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x11e4e: pc = 73296; if condition(5) { pc = (73296 + Int(sign(byte(73295), 1))) }
        case 0x11e50: pc = 73304; let e0 = resolve(.immediate(word(73298)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(73300)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11e58: pc = 73310; let e0 = resolve(.memory(Int(long(73306)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11e5e: pc = 73314; push(73314); pc = (73312 + Int(sign(word(73312), 2)))
        case 0x11e62: pc = 73320; let e0 = resolve(.memory(Int(long(73316)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x11e68: pc = 73322; if condition(11) { pc = (73322 + Int(sign(byte(73321), 1))) }
        case 0x11e6a: pc = 73324; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x11e6c: pc = 73326; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x11e6e: pc = 73332; let e0 = resolve(.memory(Int(long(73328)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x11e74: pc = 73336; let e0 = resolve(.indexed(8, 0, false, 0), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x11e78: pc = 73338; let e0 = resolve(.indirect(8), 4); push(73338); pc = e0.address
        case 0x11e7a: pc = 73342; push(73342); pc = (73340 + Int(sign(word(73340), 2)))
        case 0x11e7e: pc = 73352; let e0 = resolve(.memory(Int(long(73344)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(73348)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x11e88: pc = 73356; moveMultiple(32767, Int(r[15]), 4, load: true, addressRegister: 15, predecrement: false, postincrement: true)
        case 0x11e8c: pc = 73362; let e0 = resolve(.memory(Int(long(73358)) & 0xffffff), 4); pc = e0.address
        case 0x11e8e: pc = 73360; let e0 = resolve(.reg(0), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x11e90: pc = 73364; let e0 = resolve(.immediate(word(73362)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x11e94: pc = 73366; let e0 = resolve(.reg(0), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x11e96: pc = 73370; let e0 = resolve(.immediate(word(73368)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x11e98: pc = 73374; let e0 = resolve(.memory(Int(long(73370)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x11e9a: pc = 73374; let e0 = resolve(.immediate(word(73372)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x11e9e: pc = 73376; if condition(6) { pc = (73376 + Int(sign(byte(73375), 1))) }
        case 0x11ea0: pc = 73380; push(73380); pc = (73378 + Int(sign(word(73378), 2)))
        case 0x11ea4: pc = 73384; push(73384); pc = (73382 + Int(sign(word(73382), 2)))
        case 0x11ea8: pc = 73392; let e0 = resolve(.immediate(word(73386)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(73388)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11eb0: pc = 73394; pc = Int(pop())
        case 0x11eb2: pc = 73402; let e0 = resolve(.immediate(word(73396)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(73398)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11eba: pc = 73410; let e0 = resolve(.immediate(word(73404)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(73406)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11ec2: pc = 73414; push(73414); pc = (73412 + Int(sign(word(73412), 2)))
        case 0x11ec6: pc = 73420; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(73416)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11ecc: pc = 73424; push(73424); pc = (73422 + Int(sign(word(73422), 2)))
        case 0x11ed0: pc = 73430; let e0 = resolve(.memory(Int(long(73426)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x11ed6: pc = 73436; let e0 = resolve(.memory(Int(long(73432)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x11edc: pc = 73440; push(73440); pc = (73438 + Int(sign(word(73438), 2)))
        case 0x11ee0: pc = 73444; push(73444); pc = (73442 + Int(sign(word(73442), 2)))
        case 0x11ee4: pc = 73446; pc = Int(pop())
        case 0x11ee6: pc = 73450; push(73450); pc = (73448 + Int(sign(word(73448), 2)))
        case 0x11eea: pc = 73458; let e0 = resolve(.immediate(word(73452)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(73454)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11ef2: pc = 73460; pc = Int(pop())
        case 0x11ef4: pc = 73466; let e0 = resolve(.memory(Int(long(73462)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11efa: pc = 73468; if condition(6) { pc = (73468 + Int(sign(byte(73467), 1))) }
        case 0x11efc: pc = 73474; let e0 = resolve(.memory(Int(long(73470)) & 0xffffff), 2); logic(get(e0, 2), 2)
        default: fail("Untranslated game address")
        }
    }
}
