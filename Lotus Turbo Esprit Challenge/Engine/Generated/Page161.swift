// Generated 68000 game labels $016100–$0161FF.
extension LotusMachine {
    func page161() {
        switch pc {
        case 0x16100: pc = 90374; let e0 = resolve(.memory(Int(long(90370)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x16106: pc = 90376; if condition(11) { pc = (90376 + Int(sign(byte(90375), 1))) }
        case 0x16108: pc = 90380; let e0 = resolve(.offset(12, Int(sign(word(90378), 2))), 2); logic(get(e0, 2), 2)
        case 0x1610c: pc = 90382; if condition(7) { pc = (90382 + Int(sign(byte(90381), 1))) }
        case 0x1610e: pc = 90386; let e0 = resolve(.offset(12, Int(sign(word(90384), 2))), 4); logic(get(e0, 4), 4)
        case 0x16112: pc = 90388; if condition(7) { pc = (90388 + Int(sign(byte(90387), 1))) }
        case 0x16114: pc = 90394; let e0 = resolve(.immediate(word(90390)), 2); let source = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(90392), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1611a: pc = 90396; if condition(4) { pc = (90396 + Int(sign(byte(90395), 1))) }
        case 0x1611c: pc = 90402; let e0 = resolve(.offset(12, Int(sign(word(90398), 2))), 4); let value = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(90400), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x16122: pc = 90408; let e0 = resolve(.offset(12, Int(sign(word(90404), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(90406), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x16128: pc = 90414; let e0 = resolve(.offset(12, Int(sign(word(90410), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(90412), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1612e: pc = 90420; let e0 = resolve(.offset(12, Int(sign(word(90416), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(90418), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x16134: pc = 90426; let e0 = resolve(.offset(12, Int(sign(word(90422), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(90424), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1613a: pc = 90432; let e0 = resolve(.offset(12, Int(sign(word(90428), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(90430), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x16140: pc = 90438; let e0 = resolve(.offset(12, Int(sign(word(90434), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(90436), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x16146: pc = 90444; let e0 = resolve(.memory(Int(long(90440)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1614c: pc = 90450; let e0 = resolve(.memory(Int(long(90446)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x16152: pc = 90452; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.post(9), 4); put(e1, value, 4); logic(value, 4)
        case 0x16154: pc = 90454; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x16156: pc = 90456; let e0 = resolve(.immediate(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x16158: pc = 90458; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.post(9), 4); put(e1, value, 4); logic(value, 4)
        case 0x1615a: pc = 90460; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x1615c: pc = 90462; let e0 = resolve(.immediate(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x1615e: pc = 90464; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.post(9), 4); put(e1, value, 4); logic(value, 4)
        case 0x16160: pc = 90466; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x16162: pc = 90468; let e0 = resolve(.immediate(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x16164: pc = 90470; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.post(9), 4); put(e1, value, 4); logic(value, 4)
        case 0x16166: pc = 90472; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x16168: pc = 90474; let e0 = resolve(.immediate(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x1616a: pc = 90476; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.post(9), 4); put(e1, value, 4); logic(value, 4)
        case 0x1616c: pc = 90478; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x1616e: pc = 90480; let e0 = resolve(.immediate(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x16170: pc = 90482; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.post(9), 4); put(e1, value, 4); logic(value, 4)
        case 0x16172: pc = 90484; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x16174: pc = 90486; let e0 = resolve(.immediate(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x16176: pc = 90488; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.post(9), 4); put(e1, value, 4); logic(value, 4)
        case 0x16178: pc = 90490; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x1617a: pc = 90492; let e0 = resolve(.immediate(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x1617c: pc = 90494; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.post(9), 4); put(e1, value, 4); logic(value, 4)
        case 0x1617e: pc = 90496; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x16180: pc = 90498; let e0 = resolve(.immediate(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x16182: pc = 90500; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.post(9), 4); put(e1, value, 4); logic(value, 4)
        case 0x16184: pc = 90502; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x16186: pc = 90504; let e0 = resolve(.immediate(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x16188: pc = 90506; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.post(9), 4); put(e1, value, 4); logic(value, 4)
        case 0x1618a: pc = 90508; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x1618c: pc = 90510; let e0 = resolve(.immediate(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x1618e: pc = 90512; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.post(9), 4); put(e1, value, 4); logic(value, 4)
        case 0x16190: pc = 90514; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x16192: pc = 90516; let e0 = resolve(.immediate(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x16194: pc = 90518; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.post(9), 4); put(e1, value, 4); logic(value, 4)
        case 0x16196: pc = 90520; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x16198: pc = 90522; let e0 = resolve(.immediate(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x1619a: pc = 90524; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.post(9), 4); put(e1, value, 4); logic(value, 4)
        case 0x1619c: pc = 90526; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x1619e: pc = 90528; let e0 = resolve(.immediate(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x161a0: pc = 90530; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.post(9), 4); put(e1, value, 4); logic(value, 4)
        case 0x161a2: pc = 90532; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x161a4: pc = 90534; let e0 = resolve(.immediate(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x161a6: pc = 90536; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.post(9), 4); put(e1, value, 4); logic(value, 4)
        case 0x161a8: pc = 90538; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x161aa: pc = 90540; let e0 = resolve(.immediate(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x161ac: pc = 90542; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.post(9), 4); put(e1, value, 4); logic(value, 4)
        case 0x161ae: pc = 90544; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x161b0: pc = 90546; let e0 = resolve(.immediate(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x161b2: pc = 90548; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.post(9), 4); put(e1, value, 4); logic(value, 4)
        case 0x161b4: pc = 90550; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x161b6: pc = 90552; let e0 = resolve(.immediate(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x161b8: pc = 90554; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.post(9), 4); put(e1, value, 4); logic(value, 4)
        case 0x161ba: pc = 90556; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x161bc: pc = 90558; let e0 = resolve(.immediate(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x161be: pc = 90560; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.post(9), 4); put(e1, value, 4); logic(value, 4)
        case 0x161c0: pc = 90562; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x161c2: pc = 90568; let e0 = resolve(.immediate(word(90564)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(90566), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x161c8: pc = 90574; let e0 = resolve(.memory(Int(long(90570)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x161ce: pc = 90576; if condition(7) { pc = (90576 + Int(sign(byte(90575), 1))) }
        case 0x161d0: pc = 90584; let e0 = resolve(.immediate(long(90578)), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(90582), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x161d8: pc = 90590; let e0 = resolve(.memory(Int(long(90586)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x161de: pc = 90592; if condition(6) { pc = (90592 + Int(sign(byte(90591), 1))) }
        case 0x161e0: pc = 90596; push(90596); pc = (90594 + Int(sign(word(90594), 2)))
        case 0x161e4: pc = 90600; let e0 = resolve(.immediate(word(90598)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x161e8: pc = 90604; if !condition(1) {     setRegister(0, r[0] &- 1, 2);     if r[0] & 65535 != 65535 { pc = (90602 + Int(sign(word(90602), 2))) } }
        case 0x161ec: pc = 90610; let e0 = resolve(.memory(Int(long(90606)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x161f2: pc = 90612; if condition(7) { pc = (90612 + Int(sign(byte(90611), 1))) }
        case 0x161f4: pc = 90618; let e0 = resolve(.memory(Int(long(90614)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x161fa: pc = 90620; if condition(6) { pc = (90620 + Int(sign(byte(90619), 1))) }
        case 0x161fc: pc = 90624; push(90624); pc = (90622 + Int(sign(word(90622), 2)))
        default: fail("Untranslated game address")
        }
    }
}
