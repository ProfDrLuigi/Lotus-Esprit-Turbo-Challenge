// Generated 68000 game labels $012A00–$012AFF.
extension LotusMachine {
    func page12a() {
        switch pc {
        case 0x12a02: pc = 76292; let e0 = resolve(.post(10), 1); let value = get(e0, 1); let e1 = resolve(.post(9), 1); put(e1, value, 1); logic(value, 1)
        case 0x12a04: pc = 76296; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (76294 + Int(sign(word(76294), 2))) } }
        case 0x12a08: pc = 76298; pc = Int(pop())
        case 0x12a0a: pc = 76302; let e0 = resolve(.immediate(word(76300)), 2); let source = get(e0, 2); let e1 = resolve(.reg(10), 2); let destination = get(e1, 2); _ = source; _ = destination; r[10] = r[10] &+ UInt32(bitPattern: sign(source, 2))
        case 0x12a0e: pc = 76304; pc = (76304 + Int(sign(byte(76303), 1)))
        case 0x12a10: pc = 76312; let e0 = resolve(.immediate(word(76306)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(76308)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x12a18: pc = 76314; if condition(7) { pc = (76314 + Int(sign(byte(76313), 1))) }
        case 0x12a1a: pc = 76318; push(76318); pc = (76316 + Int(sign(word(76316), 2)))
        case 0x12a1e: pc = 76324; let e0 = resolve(.memory(Int(long(76320)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12a24: pc = 76328; push(76328); pc = (76326 + Int(sign(word(76326), 2)))
        case 0x12a28: pc = 76330; pc = Int(pop())
        case 0x12a2a: pc = 76336; let e0 = resolve(.memory(Int(long(76332)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12a30: pc = 76340; push(76340); pc = (76338 + Int(sign(word(76338), 2)))
        case 0x12a34: pc = 76342; pc = Int(pop())
        case 0x12a36: pc = 76348; let e0 = resolve(.memory(Int(long(76344)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12a3c: pc = 76352; push(76352); pc = (76350 + Int(sign(word(76350), 2)))
        case 0x12a40: pc = 76354; pc = Int(pop())
        case 0x12a42: pc = 76360; let e0 = resolve(.memory(Int(long(76356)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12a48: pc = 76364; push(76364); pc = (76362 + Int(sign(word(76362), 2)))
        case 0x12a4c: pc = 76366; pc = Int(pop())
        case 0x12a4e: pc = 76372; let e0 = resolve(.memory(Int(long(76368)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x12a54: pc = 76374; if condition(7) { pc = (76374 + Int(sign(byte(76373), 1))) }
        case 0x12a56: pc = 76382; let e0 = resolve(.immediate(word(76376)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(76378)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x12a5e: pc = 76384; if condition(7) { pc = (76384 + Int(sign(byte(76383), 1))) }
        case 0x12a60: pc = 76390; let e0 = resolve(.memory(Int(long(76386)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12a66: pc = 76392; pc = (76392 + Int(sign(byte(76391), 1)))
        case 0x12a68: pc = 76398; let e0 = resolve(.memory(Int(long(76394)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12a6e: pc = 76400; pc = (76400 + Int(sign(byte(76399), 1)))
        case 0x12a70: pc = 76406; let e0 = resolve(.memory(Int(long(76402)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12a76: pc = 76412; let e0 = resolve(.reg(9), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(76408)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x12a7c: pc = 76418; let e0 = resolve(.memory(Int(long(76414)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x12a82: pc = 76420; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x12a84: pc = 76424; let e0 = resolve(.immediate(word(76422)), 2); let source = get(e0, 2); r[0] = (r[0] & 65535) &* source; logic(r[0], 4)
        case 0x12a88: pc = 76430; let e0 = resolve(.memory(Int(long(76426)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12a8e: pc = 76436; let e0 = resolve(.indexed(8, 0, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(76434), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x12a94: pc = 76442; let e0 = resolve(.indexed(8, 0, false, 1), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(76440), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x12a9a: pc = 76448; let e0 = resolve(.indexed(8, 0, false, 2), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(76446), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x12aa0: pc = 76454; let e0 = resolve(.memory(Int(long(76450)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x12aa6: pc = 76456; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x12aa8: pc = 76460; let e0 = resolve(.immediate(word(76458)), 2); let source = get(e0, 2); r[0] = (r[0] & 65535) &* source; logic(r[0], 4)
        case 0x12aac: pc = 76466; let e0 = resolve(.memory(Int(long(76462)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12ab2: pc = 76468; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &- UInt32(bitPattern: sign(source, 2))
        case 0x12ab4: pc = 76470; r[7] = UInt32(bitPattern: sign(byte(76469), 1)); logic(r[7], 4)
        case 0x12ab6: pc = 76476; let e0 = resolve(.indexed(8, 7, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.indexed(9, 7, false, 44), 1); put(e1, value, 1); logic(value, 1)
        case 0x12abc: pc = 76480; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (76478 + Int(sign(word(76478), 2))) } }
        case 0x12ac0: pc = 76482; pc = Int(pop())
        case 0x12ac2: pc = 76488; let e0 = resolve(.memory(Int(long(76484)) & 0xffffff), 4); r[9] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x12ac8: pc = 76490; push(76490); pc = (76490 + Int(sign(byte(76489), 1)))
        case 0x12aca: pc = 76492; pc = Int(pop())
        case 0x12acc: pc = 76494; pc = Int(pop())
        case 0x12ace: pc = 76500; let e0 = resolve(.memory(Int(long(76496)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12ad4: pc = 76502; push(76502); pc = (76502 + Int(sign(byte(76501), 1)))
        case 0x12ad6: pc = 76504; pc = Int(pop())
        case 0x12ad8: pc = 76510; let e0 = resolve(.memory(Int(long(76506)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12ade: pc = 76512; push(76512); pc = (76512 + Int(sign(byte(76511), 1)))
        case 0x12ae0: pc = 76514; pc = Int(pop())
        case 0x12ae2: pc = 76520; let e0 = resolve(.memory(Int(long(76516)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12ae8: pc = 76522; push(76522); pc = (76522 + Int(sign(byte(76521), 1)))
        case 0x12aea: pc = 76524; pc = Int(pop())
        case 0x12aec: pc = 76530; let e0 = resolve(.memory(Int(long(76526)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12af2: pc = 76532; push(76532); pc = (76532 + Int(sign(byte(76531), 1)))
        case 0x12af4: pc = 76534; pc = Int(pop())
        case 0x12af6: pc = 76536; r[6] = UInt32(bitPattern: sign(byte(76535), 1)); logic(r[6], 4)
        case 0x12af8: pc = 76538; r[7] = UInt32(bitPattern: sign(byte(76537), 1)); logic(r[7], 4)
        case 0x12afa: pc = 76540; let e0 = resolve(.post(9), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x12afc: pc = 76542; if condition(7) { pc = (76542 + Int(sign(byte(76541), 1))) }
        case 0x12afe: pc = 76546; let e0 = resolve(.immediate(word(76544)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        default: fail("Untranslated game address")
        }
    }
}
