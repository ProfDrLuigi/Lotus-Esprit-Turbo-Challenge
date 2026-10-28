// Generated 68000 game labels $016A00–$016AFF.
extension LotusMachine {
    func page16a() {
        switch pc {
        case 0x16a00: pc = 92674; setRegister(5, UInt32(bitPattern: sign(r[5], 1)), 2); logic(r[5], 2)
        case 0x16a02: pc = 92676; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(5), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16a04: pc = 92678; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16a06: pc = 92680; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x16a08: pc = 92682; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16a0a: pc = 92684; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16a0c: pc = 92686; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16a0e: pc = 92690; let e0 = resolve(.immediate(word(92688)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x16a12: pc = 92692; let e0 = resolve(.indirect(8), 1); let source = get(e0, 1); let e1 = resolve(.reg(6), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x16a14: pc = 92694; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16a16: pc = 92696; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16a18: pc = 92698; let e0 = resolve(.post(11), 2); let source = get(e0, 2); r[6] = UInt32(bitPattern: sign(r[6], 2) &* sign(source, 2)); logic(r[6], 4)
        case 0x16a1a: pc = 92700; r[6] = (r[6] << 16) | (r[6] >> 16); logic(r[6], 4)
        case 0x16a1c: pc = 92702; let e0 = resolve(.post(12), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16a1e: pc = 92704; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16a20: pc = 92708; let e0 = resolve(.immediate(word(92706)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16a24: pc = 92712; if condition(4) { pc = (92710 + Int(sign(word(92710), 2))) }
        case 0x16a28: pc = 92714; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16a2a: pc = 92716; if condition(10) { pc = (92716 + Int(sign(byte(92715), 1))) }
        case 0x16a2c: pc = 92718; let e0 = resolve(.reg(6), 1); let value = get(e0, 1); let e1 = resolve(.reg(7), 1); put(e1, value, 1); logic(value, 1)
        case 0x16a2e: pc = 92720; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16a30: pc = 92722; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16a32: pc = 92724; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16a34: pc = 92726; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x16a36: pc = 92728; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16a38: pc = 92730; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16a3a: pc = 92732; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16a3c: pc = 92736; let e0 = resolve(.immediate(word(92734)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x16a40: pc = 92738; let e0 = resolve(.indirect(8), 1); let source = get(e0, 1); let e1 = resolve(.reg(6), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x16a42: pc = 92740; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16a44: pc = 92742; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16a46: pc = 92744; let e0 = resolve(.post(11), 2); let source = get(e0, 2); r[6] = UInt32(bitPattern: sign(r[6], 2) &* sign(source, 2)); logic(r[6], 4)
        case 0x16a48: pc = 92746; r[6] = (r[6] << 16) | (r[6] >> 16); logic(r[6], 4)
        case 0x16a4a: pc = 92748; let e0 = resolve(.post(12), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16a4c: pc = 92750; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16a4e: pc = 92754; let e0 = resolve(.immediate(word(92752)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16a52: pc = 92758; if condition(4) { pc = (92756 + Int(sign(word(92756), 2))) }
        case 0x16a56: pc = 92760; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16a58: pc = 92762; if condition(10) { pc = (92762 + Int(sign(byte(92761), 1))) }
        case 0x16a5a: pc = 92764; let e0 = resolve(.reg(6), 1); let value = get(e0, 1); let e1 = resolve(.reg(7), 1); put(e1, value, 1); logic(value, 1)
        case 0x16a5c: pc = 92766; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16a5e: pc = 92768; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16a60: pc = 92770; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16a62: pc = 92772; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x16a64: pc = 92774; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16a66: pc = 92776; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16a68: pc = 92778; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16a6a: pc = 92782; let e0 = resolve(.immediate(word(92780)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x16a6e: pc = 92784; let e0 = resolve(.indirect(8), 1); let source = get(e0, 1); let e1 = resolve(.reg(6), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x16a70: pc = 92786; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16a72: pc = 92788; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16a74: pc = 92790; let e0 = resolve(.post(11), 2); let source = get(e0, 2); r[6] = UInt32(bitPattern: sign(r[6], 2) &* sign(source, 2)); logic(r[6], 4)
        case 0x16a76: pc = 92792; r[6] = (r[6] << 16) | (r[6] >> 16); logic(r[6], 4)
        case 0x16a78: pc = 92794; let e0 = resolve(.post(12), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16a7a: pc = 92796; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16a7c: pc = 92800; let e0 = resolve(.immediate(word(92798)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16a80: pc = 92804; if condition(4) { pc = (92802 + Int(sign(word(92802), 2))) }
        case 0x16a84: pc = 92806; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16a86: pc = 92808; if condition(10) { pc = (92808 + Int(sign(byte(92807), 1))) }
        case 0x16a88: pc = 92810; let e0 = resolve(.reg(6), 1); let value = get(e0, 1); let e1 = resolve(.reg(7), 1); put(e1, value, 1); logic(value, 1)
        case 0x16a8a: pc = 92812; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16a8c: pc = 92814; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16a8e: pc = 92816; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16a90: pc = 92818; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x16a92: pc = 92820; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16a94: pc = 92822; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16a96: pc = 92824; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16a98: pc = 92828; let e0 = resolve(.immediate(word(92826)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x16a9c: pc = 92830; let e0 = resolve(.indirect(8), 1); let source = get(e0, 1); let e1 = resolve(.reg(6), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x16a9e: pc = 92832; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16aa0: pc = 92834; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16aa2: pc = 92836; let e0 = resolve(.post(11), 2); let source = get(e0, 2); r[6] = UInt32(bitPattern: sign(r[6], 2) &* sign(source, 2)); logic(r[6], 4)
        case 0x16aa4: pc = 92838; r[6] = (r[6] << 16) | (r[6] >> 16); logic(r[6], 4)
        case 0x16aa6: pc = 92840; let e0 = resolve(.post(12), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16aa8: pc = 92842; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16aaa: pc = 92846; let e0 = resolve(.immediate(word(92844)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16aae: pc = 92850; if condition(4) { pc = (92848 + Int(sign(word(92848), 2))) }
        case 0x16ab2: pc = 92852; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16ab4: pc = 92854; if condition(10) { pc = (92854 + Int(sign(byte(92853), 1))) }
        case 0x16ab6: pc = 92856; let e0 = resolve(.reg(6), 1); let value = get(e0, 1); let e1 = resolve(.reg(7), 1); put(e1, value, 1); logic(value, 1)
        case 0x16ab8: pc = 92858; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16aba: pc = 92860; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16abc: pc = 92862; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16abe: pc = 92864; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x16ac0: pc = 92866; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16ac2: pc = 92868; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16ac4: pc = 92870; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16ac6: pc = 92874; let e0 = resolve(.immediate(word(92872)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x16aca: pc = 92876; let e0 = resolve(.indirect(8), 1); let source = get(e0, 1); let e1 = resolve(.reg(6), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x16acc: pc = 92878; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16ace: pc = 92880; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16ad0: pc = 92882; let e0 = resolve(.post(11), 2); let source = get(e0, 2); r[6] = UInt32(bitPattern: sign(r[6], 2) &* sign(source, 2)); logic(r[6], 4)
        case 0x16ad2: pc = 92884; r[6] = (r[6] << 16) | (r[6] >> 16); logic(r[6], 4)
        case 0x16ad4: pc = 92886; let e0 = resolve(.post(12), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16ad6: pc = 92888; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16ad8: pc = 92892; let e0 = resolve(.immediate(word(92890)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16adc: pc = 92896; if condition(4) { pc = (92894 + Int(sign(word(92894), 2))) }
        case 0x16ae0: pc = 92898; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16ae2: pc = 92900; if condition(10) { pc = (92900 + Int(sign(byte(92899), 1))) }
        case 0x16ae4: pc = 92902; let e0 = resolve(.reg(6), 1); let value = get(e0, 1); let e1 = resolve(.reg(7), 1); put(e1, value, 1); logic(value, 1)
        case 0x16ae6: pc = 92904; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16ae8: pc = 92906; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16aea: pc = 92908; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16aec: pc = 92910; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x16aee: pc = 92912; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16af0: pc = 92914; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16af2: pc = 92916; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16af4: pc = 92920; let e0 = resolve(.immediate(word(92918)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x16af8: pc = 92922; let e0 = resolve(.indirect(8), 1); let source = get(e0, 1); let e1 = resolve(.reg(6), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x16afa: pc = 92924; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16afc: pc = 92926; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16afe: pc = 92928; let e0 = resolve(.post(11), 2); let source = get(e0, 2); r[6] = UInt32(bitPattern: sign(r[6], 2) &* sign(source, 2)); logic(r[6], 4)
        default: fail("Untranslated game address")
        }
    }
}
