// Generated 68000 game labels $018A00–$018AFF.
extension LotusMachine {
    func page18a() {
        switch pc {
        case 0x18a00: pc = 100866; let e0 = resolve(.reg(9), 4); let source = get(e0, 4); let e1 = resolve(.reg(8), 4); let destination = get(e1, 4); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x18a02: pc = 100868; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x18a04: pc = 100870; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x18a06: pc = 100876; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(100872)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x18a0c: pc = 100878; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x18a0e: pc = 100880; let e0 = resolve(.reg(3), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x18a10: pc = 100882; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18a12: pc = 100884; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(5), 2); put(e1, value, 2); logic(value, 2)
        case 0x18a14: pc = 100886; let e0 = resolve(.reg(4), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x18a16: pc = 100888; let e0 = resolve(.immediate(1), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 0); put(e1, value, 2)
        case 0x18a18: pc = 100890; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x18a1a: pc = 100896; let e0 = resolve(.reg(4), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100892)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18a20: pc = 100902; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100898)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18a26: pc = 100908; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100904)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18a2c: pc = 100910; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x18a2e: pc = 100912; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(2), 2); let value = shift(get(e1, 2), count, 2, 0); put(e1, value, 2)
        case 0x18a30: pc = 100914; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18a32: pc = 100918; let e0 = resolve(.immediate(word(100916)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x18a36: pc = 100920; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(1), 2); let value = shift(get(e1, 2), count, 2, 6); put(e1, value, 2)
        case 0x18a38: pc = 100926; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100922)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18a3e: pc = 100930; let e0 = resolve(.immediate(word(100928)), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18a42: pc = 100932; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(4), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x18a44: pc = 100934; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x18a46: pc = 100936; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18a48: pc = 100938; let e0 = resolve(.reg(4), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x18a4a: pc = 100940; let e0 = resolve(.reg(2), 2); logic(get(e0, 2), 2)
        case 0x18a4c: pc = 100942; if condition(10) { pc = (100942 + Int(sign(byte(100941), 1))) }
        case 0x18a4e: pc = 100944; let e0 = resolve(.reg(6), 2); logic(get(e0, 2), 2)
        case 0x18a50: pc = 100948; if condition(11) { pc = (100946 + Int(sign(word(100946), 2))) }
        case 0x18a54: pc = 100950; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x18a56: pc = 100952; r[2] = UInt32(bitPattern: sign(byte(100951), 1)); logic(r[2], 4)
        case 0x18a58: pc = 100954; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18a5a: pc = 100956; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18a5c: pc = 100958; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &- UInt32(bitPattern: sign(source, 2))
        case 0x18a5e: pc = 100960; let e0 = resolve(.reg(5), 2); logic(get(e0, 2), 2)
        case 0x18a60: pc = 100962; if condition(10) { pc = (100962 + Int(sign(byte(100961), 1))) }
        case 0x18a62: pc = 100964; let e0 = resolve(.reg(7), 2); logic(get(e0, 2), 2)
        case 0x18a64: pc = 100968; if condition(11) { pc = (100966 + Int(sign(word(100966), 2))) }
        case 0x18a68: pc = 100970; let e0 = resolve(.reg(5), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x18a6a: pc = 100972; r[5] = UInt32(bitPattern: sign(byte(100971), 1)); logic(r[5], 4)
        case 0x18a6c: pc = 100974; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18a6e: pc = 100976; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18a70: pc = 100978; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); r[0] = UInt32(bitPattern: sign(r[0], 2) &* sign(source, 2)); logic(r[0], 4)
        case 0x18a72: pc = 100980; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &- UInt32(bitPattern: sign(source, 2))
        case 0x18a74: pc = 100984; let e0 = resolve(.immediate(word(100982)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x18a78: pc = 100986; if condition(11) { pc = (100986 + Int(sign(byte(100985), 1))) }
        case 0x18a7a: pc = 100990; let e0 = resolve(.immediate(word(100988)), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x18a7e: pc = 100994; if condition(10) { pc = (100992 + Int(sign(word(100992), 2))) }
        case 0x18a82: pc = 100996; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x18a84: pc = 101000; let e0 = resolve(.immediate(word(100998)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x18a88: pc = 101002; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x18a8a: pc = 101008; let e0 = resolve(.memory(Int(long(101004)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x18a90: pc = 101010; if condition(3) { pc = (101010 + Int(sign(byte(101009), 1))) }
        case 0x18a92: pc = 101016; let e0 = resolve(.memory(Int(long(101012)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x18a98: pc = 101018; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18a9a: pc = 101020; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x18a9c: pc = 101024; if condition(3) { pc = (101022 + Int(sign(word(101022), 2))) }
        case 0x18aa0: pc = 101028; let e0 = resolve(.memory(103476), 2); let value = get(e0, 2); let e1 = resolve(.post(12), 2); put(e1, value, 2); logic(value, 2)
        case 0x18aa4: pc = 101030; let e0 = resolve(.reg(4), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x18aa6: pc = 101032; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18aa8: pc = 101036; let e0 = resolve(.immediate(word(101034)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x18aac: pc = 101038; let e0 = resolve(.reg(6), 2); let value = subtract(0, get(e0, 2), 2, extend: false); put(e0, value, 2)
        case 0x18aae: pc = 101040; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x18ab0: pc = 101042; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x18ab2: pc = 101044; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18ab4: pc = 101046; let e0 = resolve(.immediate(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x18ab6: pc = 101050; let e0 = resolve(.immediate(word(101048)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x18ab8: pc = 101052; let e0 = resolve(.immediate(word(101050)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x18aba: pc = 101052; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x18abc: pc = 101056; let e0 = resolve(.immediate(word(101054)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination | source; put(e1, value, 2); logic(value, 2)
        case 0x18ac0: pc = 101058; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.post(12), 2); put(e1, value, 2); logic(value, 2)
        case 0x18ac2: pc = 101060; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.post(12), 2); put(e1, value, 2); logic(value, 2)
        case 0x18ac4: pc = 101064; let e0 = resolve(.immediate(word(101062)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination | source; put(e1, value, 2); logic(value, 2)
        case 0x18ac8: pc = 101066; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(12), 2); put(e1, value, 2); logic(value, 2)
        case 0x18aca: pc = 101068; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.post(12), 2); put(e1, value, 2); logic(value, 2)
        case 0x18acc: pc = 101070; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.post(12), 2); put(e1, value, 2); logic(value, 2)
        case 0x18ace: pc = 101072; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(12), 2); put(e1, value, 2); logic(value, 2)
        case 0x18ad0: pc = 101076; let e0 = resolve(.memory(103478), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x18ad4: pc = 101078; let e0 = resolve(.reg(8), 4); r[9] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x18ad6: pc = 101080; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x18ad8: pc = 101082; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x18ada: pc = 101084; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x18adc: pc = 101092; let e0 = resolve(.immediate(word(101086)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(101088)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x18ae4: pc = 101094; if condition(7) { pc = (101094 + Int(sign(byte(101093), 1))) }
        case 0x18ae6: pc = 101096; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x18ae8: pc = 101098; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18aea: pc = 101100; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(5), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18aec: pc = 101106; let e0 = resolve(.memory(Int(long(101102)) & 0xffffff), 4); r[11] = UInt32(truncatingIfNeeded: e0.address)
        case 0x18af2: pc = 101110; let e0 = resolve(.indexed(11, 5, false, 0), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18af6: pc = 101112; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(10), 2); let destination = get(e1, 2); _ = source; _ = destination; r[10] = r[10] &+ UInt32(bitPattern: sign(source, 2))
        case 0x18af8: pc = 101118; let e0 = resolve(.memory(Int(long(101114)) & 0xffffff), 4); let source = get(e0, 4); let e1 = resolve(.reg(10), 4); let destination = get(e1, 4); _ = source; _ = destination; r[10] = r[10] &+ source
        case 0x18afe: pc = 101120; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        default: fail("Untranslated game address")
        }
    }
}
