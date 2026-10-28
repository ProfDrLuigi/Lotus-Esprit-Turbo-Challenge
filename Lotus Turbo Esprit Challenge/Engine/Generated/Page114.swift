// Generated 68000 game labels $011400–$0114FF.
extension LotusMachine {
    func page114() {
        switch pc {
        case 0x11402: pc = 70662; if condition(6) { pc = (70660 + Int(sign(word(70660), 2))) }
        case 0x11406: pc = 70668; let e0 = resolve(.memory(Int(long(70664)) & 0xffffff), 4); push(70668); pc = e0.address
        case 0x1140c: pc = 70674; let e0 = resolve(.memory(Int(long(70670)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11412: pc = 70678; if condition(6) { pc = (70676 + Int(sign(word(70676), 2))) }
        case 0x11416: pc = 70684; let e0 = resolve(.memory(Int(long(70680)) & 0xffffff), 4); push(70684); pc = e0.address
        case 0x1141c: pc = 70690; let e0 = resolve(.memory(Int(long(70686)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11422: pc = 70694; if condition(6) { pc = (70692 + Int(sign(word(70692), 2))) }
        case 0x11426: pc = 70702; let e0 = resolve(.immediate(word(70696)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70698)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1142e: pc = 70706; push(70706); pc = (70704 + Int(sign(word(70704), 2)))
        case 0x11432: pc = 70712; let e0 = resolve(.memory(Int(long(70708)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11438: pc = 70716; if condition(6) { pc = (70714 + Int(sign(word(70714), 2))) }
        case 0x1143c: pc = 70720; push(70720); pc = (70718 + Int(sign(word(70718), 2)))
        case 0x11440: pc = 70726; let e0 = resolve(.memory(Int(long(70722)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11446: pc = 70730; if condition(6) { pc = (70728 + Int(sign(word(70728), 2))) }
        case 0x1144a: pc = 70734; push(70734); pc = (70732 + Int(sign(word(70732), 2)))
        case 0x1144e: pc = 70740; let e0 = resolve(.memory(Int(long(70736)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11454: pc = 70744; if condition(6) { pc = (70742 + Int(sign(word(70742), 2))) }
        case 0x11458: pc = 70752; let e0 = resolve(.immediate(word(70746)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70748)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11460: pc = 70758; let e0 = resolve(.memory(Int(long(70754)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11466: pc = 70760; if condition(6) { pc = (70760 + Int(sign(byte(70759), 1))) }
        case 0x11468: pc = 70764; push(70764); pc = (70762 + Int(sign(word(70762), 2)))
        case 0x1146c: pc = 70770; let e0 = resolve(.memory(Int(long(70766)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11472: pc = 70776; let e0 = resolve(.immediate(word(70772)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(70774), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x11478: pc = 70782; let e0 = resolve(.immediate(word(70778)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(70780), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1147e: pc = 70790; let e0 = resolve(.immediate(long(70784)), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(UInt32(bitPattern: sign(word(70788), 2))) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x11486: pc = 70796; let e0 = resolve(.immediate(word(70792)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(70794), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1148c: pc = 70804; let e0 = resolve(.immediate(long(70798)), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(70802), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x11494: pc = 70810; let e0 = resolve(.immediate(word(70806)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(70808), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1149a: pc = 70814; push(70814); pc = (70812 + Int(sign(word(70812), 2)))
        case 0x1149e: pc = 70820; let e0 = resolve(.memory(Int(long(70816)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x114a4: pc = 70826; let e0 = resolve(.immediate(word(70822)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(70824), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x114aa: pc = 70832; let e0 = resolve(.immediate(word(70828)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(70830), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x114b0: pc = 70840; let e0 = resolve(.memory(Int(long(70834)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(UInt32(bitPattern: sign(word(70838), 2))) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x114b8: pc = 70848; let e0 = resolve(.immediate(long(70842)), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(UInt32(bitPattern: sign(word(70846), 2))) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x114c0: pc = 70856; let e0 = resolve(.memory(Int(long(70850)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(70854), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x114c8: pc = 70862; let e0 = resolve(.memory(Int(long(70858)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x114ce: pc = 70868; let e0 = resolve(.memory(Int(long(70864)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x114d4: pc = 70874; let e0 = resolve(.memory(Int(long(70870)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x114da: pc = 70878; push(70878); pc = (70876 + Int(sign(word(70876), 2)))
        case 0x114de: pc = 70882; push(70882); pc = (70880 + Int(sign(word(70880), 2)))
        case 0x114e2: pc = 70888; let e0 = resolve(.memory(Int(long(70884)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x114e8: pc = 70890; r[0] = UInt32(bitPattern: sign(byte(70889), 1)); logic(r[0], 4)
        case 0x114ea: pc = 70894; push(70894); pc = (70892 + Int(sign(word(70892), 2)))
        case 0x114ee: pc = 70898; push(70898); pc = (70896 + Int(sign(word(70896), 2)))
        case 0x114f2: pc = 70904; let e0 = resolve(.memory(Int(long(70900)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x114f8: pc = 70908; let e0 = resolve(.reg(8), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(70906), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x114fc: pc = 70914; let e0 = resolve(.memory(Int(long(70910)) & 0xffffff), 2); logic(get(e0, 2), 2)
        default: fail("Untranslated game address")
        }
    }
}
