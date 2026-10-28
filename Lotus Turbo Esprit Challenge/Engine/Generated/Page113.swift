// Generated 68000 game labels $011300–$0113FF.
extension LotusMachine {
    func page113() {
        switch pc {
        case 0x11300: pc = 70406; let e0 = resolve(.memory(Int(long(70402)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11306: pc = 70410; push(70410); pc = (70408 + Int(sign(word(70408), 2)))
        case 0x1130a: pc = 70416; let e0 = resolve(.memory(Int(long(70412)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11310: pc = 70420; if condition(6) { pc = (70418 + Int(sign(word(70418), 2))) }
        case 0x11314: pc = 70426; let e0 = resolve(.memory(Int(long(70422)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1131a: pc = 70428; if condition(7) { pc = (70428 + Int(sign(byte(70427), 1))) }
        case 0x1131c: pc = 70434; let e0 = resolve(.memory(Int(long(70430)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x11322: pc = 70438; push(70438); pc = (70436 + Int(sign(word(70436), 2)))
        case 0x11326: pc = 70442; push(70442); pc = (70440 + Int(sign(word(70440), 2)))
        case 0x1132a: pc = 70448; let e0 = resolve(.memory(Int(long(70444)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x11330: pc = 70450; r[0] = UInt32(bitPattern: sign(byte(70449), 1)); logic(r[0], 4)
        case 0x11332: pc = 70454; push(70454); pc = (70452 + Int(sign(word(70452), 2)))
        case 0x11336: pc = 70458; push(70458); pc = (70456 + Int(sign(word(70456), 2)))
        case 0x1133a: pc = 70466; let e0 = resolve(.immediate(word(70460)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70462)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11342: pc = 70474; let e0 = resolve(.immediate(word(70468)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70470)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1134a: pc = 70482; let e0 = resolve(.immediate(word(70476)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70478)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11352: pc = 70490; let e0 = resolve(.immediate(word(70484)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70486)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11358: fail("Untranslated dc.w at 11358")
        case 0x1135a: pc = 70496; let e0 = resolve(.memory(Int(long(70492)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11360: pc = 70502; let e0 = resolve(.memory(Int(long(70498)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11366: pc = 70510; let e0 = resolve(.immediate(word(70504)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70506)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1136c: pc = 70510; let e0 = resolve(.pre(10), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1136e: pc = 70518; let e0 = resolve(.immediate(word(70512)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70514)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11376: pc = 70526; let e0 = resolve(.immediate(word(70520)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70522)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1137e: pc = 70534; let e0 = resolve(.immediate(word(70528)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70530)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11386: pc = 70542; let e0 = resolve(.immediate(word(70536)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70538)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1138e: pc = 70550; let e0 = resolve(.immediate(word(70544)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70546)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11396: pc = 70558; let e0 = resolve(.immediate(word(70552)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70554)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1139e: pc = 70564; let e0 = resolve(.memory(Int(long(70560)) & 0xffffff), 4); push(70564); pc = e0.address
        case 0x113a4: pc = 70568; let e0 = resolve(.immediate(word(70566)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x113a8: pc = 70572; let e0 = resolve(.immediate(word(70570)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x113ac: pc = 70574; if condition(4) { pc = (70574 + Int(sign(byte(70573), 1))) }
        case 0x113ae: pc = 70580; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70576)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x113b4: pc = 70588; let e0 = resolve(.immediate(word(70582)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70584)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x113bc: pc = 70592; push(70592); pc = (70590 + Int(sign(word(70590), 2)))
        case 0x113c0: pc = 70598; let e0 = resolve(.memory(Int(long(70594)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x113c6: pc = 70602; if condition(6) { pc = (70600 + Int(sign(word(70600), 2))) }
        case 0x113ca: pc = 70606; push(70606); pc = (70604 + Int(sign(word(70604), 2)))
        case 0x113ce: pc = 70612; let e0 = resolve(.memory(Int(long(70608)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x113d4: pc = 70616; if condition(6) { pc = (70614 + Int(sign(word(70614), 2))) }
        case 0x113d8: pc = 70622; let e0 = resolve(.memory(Int(long(70618)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x113de: pc = 70628; let e0 = resolve(.memory(Int(long(70624)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x113e4: pc = 70630; if condition(6) { pc = (70630 + Int(sign(byte(70629), 1))) }
        case 0x113e6: pc = 70636; let e0 = resolve(.memory(Int(long(70632)) & 0xffffff), 4); push(70636); pc = e0.address
        case 0x113ec: pc = 70642; let e0 = resolve(.memory(Int(long(70638)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x113f2: pc = 70646; if condition(6) { pc = (70644 + Int(sign(word(70644), 2))) }
        case 0x113f6: pc = 70652; let e0 = resolve(.memory(Int(long(70648)) & 0xffffff), 4); push(70652); pc = e0.address
        case 0x113fc: pc = 70658; let e0 = resolve(.memory(Int(long(70654)) & 0xffffff), 2); logic(get(e0, 2), 2)
        default: fail("Untranslated game address")
        }
    }
}
