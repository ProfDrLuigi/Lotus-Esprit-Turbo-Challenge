// Generated 68000 game labels $014B00–$014BFF.
extension LotusMachine {
    func page14b() {
        switch pc {
        case 0x14b00: pc = 84738; if condition(4) { pc = (84738 + Int(sign(byte(84737), 1))) }
        case 0x14b02: pc = 84740; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.reg(5), 1); put(e1, value, 1); logic(value, 1)
        case 0x14b04: pc = 84742; let e0 = resolve(.immediate(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x14b06: pc = 84744; if condition(10) { pc = (84744 + Int(sign(byte(84743), 1))) }
        case 0x14b08: pc = 84746; let e0 = resolve(.immediate(8), 1); let source = get(e0, 1); let e1 = resolve(.reg(4), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = add(destination, source, 1); put(e1, value, 1)
        case 0x14b0a: pc = 84748; let e0 = resolve(.immediate(8), 1); let source = get(e0, 1); let e1 = resolve(.reg(5), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1); put(e1, value, 1)
        case 0x14b0c: pc = 84752; let e0 = resolve(.reg(4), 1); let value = get(e0, 1); let e1 = resolve(.offset(8, Int(sign(word(84750), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x14b10: pc = 84756; let e0 = resolve(.reg(5), 1); let value = get(e0, 1); let e1 = resolve(.offset(8, Int(sign(word(84754), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x14b14: pc = 84760; let e0 = resolve(.immediate(word(84758)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x14b18: pc = 84764; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (84762 + Int(sign(word(84762), 2))) } }
        case 0x14b1c: pc = 84770; let e0 = resolve(.memory(Int(long(84766)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x14b22: pc = 84776; let e0 = resolve(.memory(Int(long(84772)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x14b28: pc = 84778; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x14b2a: pc = 84780; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x14b2c: pc = 84782; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x14b2e: pc = 84784; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x14b30: pc = 84788; let e0 = resolve(.immediate(word(84786)), 1); let value = get(e0, 1); let e1 = resolve(.reg(4), 1); put(e1, value, 1); logic(value, 1)
        case 0x14b34: pc = 84792; let e0 = resolve(.immediate(word(84790)), 1); let value = get(e0, 1); let e1 = resolve(.reg(5), 1); put(e1, value, 1); logic(value, 1)
        case 0x14b38: pc = 84796; let e0 = resolve(.offset(8, Int(sign(word(84794), 2))), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x14b3c: pc = 84798; let e0 = resolve(.reg(4), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x14b3e: pc = 84800; if condition(7) { pc = (84800 + Int(sign(byte(84799), 1))) }
        case 0x14b40: pc = 84802; if condition(10) { pc = (84802 + Int(sign(byte(84801), 1))) }
        case 0x14b42: pc = 84804; let e0 = resolve(.immediate(1), 1); let source = get(e0, 1); let e1 = resolve(.reg(4), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1); put(e1, value, 1)
        case 0x14b44: pc = 84806; pc = (84806 + Int(sign(byte(84805), 1)))
        case 0x14b46: pc = 84808; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.reg(4), 1); put(e1, value, 1); logic(value, 1)
        case 0x14b48: pc = 84812; let e0 = resolve(.reg(4), 1); let value = get(e0, 1); let e1 = resolve(.offset(8, Int(sign(word(84810), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x14b4c: pc = 84816; let e0 = resolve(.offset(8, Int(sign(word(84814), 2))), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x14b50: pc = 84818; let e0 = resolve(.reg(5), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x14b52: pc = 84820; if condition(7) { pc = (84820 + Int(sign(byte(84819), 1))) }
        case 0x14b54: pc = 84822; if condition(11) { pc = (84822 + Int(sign(byte(84821), 1))) }
        case 0x14b56: pc = 84824; let e0 = resolve(.immediate(1), 1); let source = get(e0, 1); let e1 = resolve(.reg(5), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = add(destination, source, 1); put(e1, value, 1)
        case 0x14b58: pc = 84826; pc = (84826 + Int(sign(byte(84825), 1)))
        case 0x14b5a: pc = 84828; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.reg(5), 1); put(e1, value, 1); logic(value, 1)
        case 0x14b5c: pc = 84832; let e0 = resolve(.reg(5), 1); let value = get(e0, 1); let e1 = resolve(.offset(8, Int(sign(word(84830), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x14b60: pc = 84836; let e0 = resolve(.immediate(word(84834)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &- UInt32(bitPattern: sign(source, 2))
        case 0x14b64: pc = 84840; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (84838 + Int(sign(word(84838), 2))) } }
        case 0x14b68: pc = 84846; let e0 = resolve(.memory(Int(long(84842)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x14b6e: pc = 84850; if condition(7) { pc = (84848 + Int(sign(word(84848), 2))) }
        case 0x14b72: pc = 84856; let e0 = resolve(.memory(Int(long(84852)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x14b78: pc = 84862; let e0 = resolve(.memory(Int(long(84858)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x14b7e: pc = 84864; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x14b80: pc = 84870; let e0 = resolve(.memory(Int(long(84866)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x14b86: pc = 84874; let e0 = resolve(.offset(8, Int(sign(word(84872), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x14b8a: pc = 84878; push(84878); pc = (84876 + Int(sign(word(84876), 2)))
        case 0x14b8e: pc = 84882; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(84880), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x14b92: pc = 84886; let e0 = resolve(.offset(8, Int(sign(word(84884), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x14b96: pc = 84890; push(84890); pc = (84888 + Int(sign(word(84888), 2)))
        case 0x14b9a: pc = 84894; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(84892), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x14b9e: pc = 84898; let e0 = resolve(.offset(8, Int(sign(word(84896), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x14ba2: pc = 84902; push(84902); pc = (84900 + Int(sign(word(84900), 2)))
        case 0x14ba6: pc = 84906; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(84904), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x14baa: pc = 84910; let e0 = resolve(.offset(8, Int(sign(word(84908), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x14bae: pc = 84914; push(84914); pc = (84912 + Int(sign(word(84912), 2)))
        case 0x14bb2: pc = 84918; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(84916), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x14bb6: pc = 84922; let e0 = resolve(.immediate(word(84920)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x14bba: pc = 84926; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (84924 + Int(sign(word(84924), 2))) } }
        case 0x14bbe: pc = 84934; let e0 = resolve(.immediate(word(84928)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(84930)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x14bc6: pc = 84936; if condition(6) { pc = (84936 + Int(sign(byte(84935), 1))) }
        case 0x14bc8: pc = 84938; r[1] = UInt32(bitPattern: sign(byte(84937), 1)); logic(r[1], 4)
        case 0x14bca: pc = 84940; r[2] = UInt32(bitPattern: sign(byte(84939), 1)); logic(r[2], 4)
        case 0x14bcc: pc = 84942; pc = (84942 + Int(sign(byte(84941), 1)))
        case 0x14bce: pc = 84948; let e0 = resolve(.memory(Int(long(84944)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x14bd4: pc = 84950; if condition(7) { pc = (84950 + Int(sign(byte(84949), 1))) }
        case 0x14bd6: pc = 84956; let e0 = resolve(.memory(Int(long(84952)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x14bdc: pc = 84958; if condition(6) { pc = (84958 + Int(sign(byte(84957), 1))) }
        case 0x14bde: pc = 84960; r[1] = UInt32(bitPattern: sign(byte(84959), 1)); logic(r[1], 4)
        case 0x14be0: pc = 84966; let e0 = resolve(.memory(Int(long(84962)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x14be6: pc = 84968; r[2] = UInt32(bitPattern: sign(byte(84967), 1)); logic(r[2], 4)
        case 0x14be8: pc = 84974; let e0 = resolve(.memory(Int(long(84970)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x14bee: pc = 84976; pc = (84976 + Int(sign(byte(84975), 1)))
        case 0x14bf0: pc = 84978; r[1] = UInt32(bitPattern: sign(byte(84977), 1)); logic(r[1], 4)
        case 0x14bf2: pc = 84980; r[2] = UInt32(bitPattern: sign(byte(84979), 1)); logic(r[2], 4)
        case 0x14bf4: pc = 84986; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(84982)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x14bfa: pc = 84992; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(84988)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        default: fail("Untranslated game address")
        }
    }
}
