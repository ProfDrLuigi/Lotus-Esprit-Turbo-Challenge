// Generated 68000 game labels $017A00–$017AFF.
extension LotusMachine {
    func page17a() {
        switch pc {
        case 0x17a02: pc = 96774; let e0 = resolve(.post(13), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(96772), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x17a06: pc = 96778; let e0 = resolve(.post(13), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(96776), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x17a0a: pc = 96786; let e0 = resolve(.immediate(long(96780)), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(UInt32(bitPattern: sign(word(96784), 2))) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x17a12: pc = 96792; let e0 = resolve(.immediate(word(96788)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(96790), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x17a18: pc = 96796; let e0 = resolve(.post(13), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(96794), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x17a1c: pc = 96798; returnInterrupt()
        case 0x17a1e: pc = 96804; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(96800)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x17a24: pc = 96812; let e0 = resolve(.immediate(word(96806)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(96808)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x17a2c: pc = 96816; if condition(6) { pc = (96814 + Int(sign(word(96814), 2))) }
        case 0x17a30: pc = 96824; let e0 = resolve(.immediate(word(96818)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(96820)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x17a38: pc = 96830; let e0 = resolve(.immediate(word(96826)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(96828), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x17a3e: pc = 96832; returnInterrupt()
        case 0x17a40: pc = 96838; let e0 = resolve(.memory(Int(long(96834)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x17a46: pc = 96844; let e0 = resolve(.memory(Int(long(96840)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x17a4c: pc = 96846; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x17a4e: pc = 96852; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(96848)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x17a54: pc = 96858; let e0 = resolve(.memory(Int(long(96854)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x17a5a: pc = 96864; let e0 = resolve(.memory(Int(long(96860)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x17a60: pc = 96866; if condition(7) { pc = (96866 + Int(sign(byte(96865), 1))) }
        case 0x17a62: pc = 96872; let e0 = resolve(.memory(Int(long(96868)) & 0xffffff), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x17a68: pc = 96874; if condition(4) { pc = (96874 + Int(sign(byte(96873), 1))) }
        case 0x17a6a: pc = 96880; let e0 = resolve(.memory(Int(long(96876)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x17a70: pc = 96886; let e0 = resolve(.memory(Int(long(96882)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x17a76: pc = 96892; let e0 = resolve(.immediate(long(96888)), 4); let value = get(e0, 4); let e1 = resolve(.reg(6), 4); put(e1, value, 4); logic(value, 4)
        case 0x17a7c: pc = 96898; let e0 = resolve(.memory(Int(long(96894)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x17a82: pc = 96900; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x17a84: pc = 96902; let e0 = resolve(.indirect(8), 4); let value = get(e0, 4); let e1 = resolve(.reg(3), 4); put(e1, value, 4); logic(value, 4)
        case 0x17a86: pc = 96906; let e0 = resolve(.offset(8, Int(sign(word(96904), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x17a8a: pc = 96910; let e0 = resolve(.offset(8, Int(sign(word(96908), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(5), 2); put(e1, value, 2); logic(value, 2)
        case 0x17a8e: pc = 96914; let e0 = resolve(.offset(8, Int(sign(word(96912), 2))), 4); let value = get(e0, 4); let e1 = resolve(.reg(2), 4); put(e1, value, 4); logic(value, 4)
        case 0x17a92: pc = 96916; let e0 = resolve(.reg(2), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x17a94: pc = 96918; r[1] = (r[1] << 16) | (r[1] >> 16); logic(r[1], 4)
        case 0x17a96: pc = 96922; let e0 = resolve(.memory(110384), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x17a9a: pc = 96924; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x17a9c: pc = 96926; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x17a9e: pc = 96928; let e0 = resolve(.immediate(7), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x17aa0: pc = 96930; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x17aa2: pc = 96932; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(5), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x17aa4: pc = 96934; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x17aa6: pc = 96936; if condition(4) { pc = (96936 + Int(sign(byte(96935), 1))) }
        case 0x17aa8: pc = 96938; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(5), 2); put(e1, value, 2); logic(value, 2)
        case 0x17aaa: pc = 96940; let e0 = resolve(.reg(3), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x17aac: pc = 96942; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x17aae: pc = 96944; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x17ab0: pc = 96950; let e0 = resolve(.memory(Int(long(96946)) & 0xffffff), 2); let source = get(e0, 2); divide(0, source, signed: false)
        case 0x17ab6: pc = 96952; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x17ab8: pc = 96954; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x17aba: pc = 96958; let e0 = resolve(.indexed(9, 0, false, 15), 1); let value = get(e0, 1); let e1 = resolve(.reg(1), 1); put(e1, value, 1); logic(value, 1)
        case 0x17abe: pc = 96962; let e0 = resolve(.indexed(9, 0, false, 14), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x17ac2: pc = 96964; setRegister(1, UInt32(bitPattern: sign(r[1], 1)), 2); logic(r[1], 2)
        case 0x17ac4: pc = 96966; setRegister(0, UInt32(bitPattern: sign(r[0], 1)), 2); logic(r[0], 2)
        case 0x17ac6: pc = 96968; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(1), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x17ac8: pc = 96970; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x17aca: pc = 96972; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x17acc: pc = 96974; if condition(10) { pc = (96974 + Int(sign(byte(96973), 1))) }
        case 0x17ace: pc = 96976; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x17ad0: pc = 96978; if condition(11) { pc = (96978 + Int(sign(byte(96977), 1))) }
        case 0x17ad2: pc = 96980; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x17ad4: pc = 96982; pc = (96982 + Int(sign(byte(96981), 1)))
        case 0x17ad6: pc = 96984; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x17ad8: pc = 96986; let e0 = resolve(.reg(2), 2); logic(get(e0, 2), 2)
        case 0x17ada: pc = 96988; if condition(10) { pc = (96988 + Int(sign(byte(96987), 1))) }
        case 0x17adc: pc = 96990; let e0 = resolve(.reg(2), 2); let value = subtract(0, get(e0, 2), 2, extend: false); put(e0, value, 2)
        case 0x17ade: pc = 96992; pc = (96992 + Int(sign(byte(96991), 1)))
        case 0x17ae0: pc = 96994; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x17ae2: pc = 96996; let e0 = resolve(.reg(2), 2); logic(get(e0, 2), 2)
        case 0x17ae4: pc = 96998; if condition(11) { pc = (96998 + Int(sign(byte(96997), 1))) }
        case 0x17ae6: pc = 97000; let e0 = resolve(.reg(2), 2); let value = subtract(0, get(e0, 2), 2, extend: false); put(e0, value, 2)
        case 0x17ae8: pc = 97002; let e0 = resolve(.reg(5), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x17aea: pc = 97004; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x17aec: pc = 97006; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(3), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x17aee: pc = 97010; let e0 = resolve(.immediate(word(97008)), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x17af0: pc = 97012; let e0 = resolve(.immediate(word(97010)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x17af2: pc = 97012; if condition(7) { pc = (97012 + Int(sign(byte(97011), 1))) }
        case 0x17af4: pc = 97016; let e0 = resolve(.offset(8, Int(sign(word(97014), 2))), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x17af8: pc = 97018; let e0 = resolve(.reg(6), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4); put(e1, value, 4)
        case 0x17afa: pc = 97020; let e0 = resolve(.reg(3), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x17afc: pc = 97022; if condition(4) { pc = (97022 + Int(sign(byte(97021), 1))) }
        case 0x17afe: pc = 97024; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.reg(3), 4); put(e1, value, 4); logic(value, 4)
        default: fail("Untranslated game address")
        }
    }
}
