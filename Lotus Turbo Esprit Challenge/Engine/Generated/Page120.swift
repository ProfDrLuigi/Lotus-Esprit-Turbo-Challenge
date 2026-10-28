// Generated 68000 game labels $012000–$0120FF.
extension LotusMachine {
    func page120() {
        switch pc {
        case 0x12000: pc = 73736; let e0 = resolve(.immediate(word(73730)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(73732)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x12008: pc = 73738; pc = (73738 + Int(sign(byte(73737), 1)))
        case 0x1200a: pc = 73744; let e0 = resolve(.memory(Int(long(73740)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x12010: pc = 73746; if condition(7) { pc = (73746 + Int(sign(byte(73745), 1))) }
        case 0x12012: pc = 73756; let e0 = resolve(.memory(Int(long(73748)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(73752)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1201c: pc = 73762; let e0 = resolve(.memory(Int(long(73758)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x12022: pc = 73768; let e0 = resolve(.memory(Int(long(73764)) & 0xffffff), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4); put(e1, value, 4)
        case 0x12028: pc = 73772; push(73772); pc = (73770 + Int(sign(word(73770), 2)))
        case 0x1202c: pc = 73778; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(73774)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x12032: pc = 73784; let e0 = resolve(.memory(Int(long(73780)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x12038: pc = 73786; if condition(7) { pc = (73786 + Int(sign(byte(73785), 1))) }
        case 0x1203a: pc = 73792; let e0 = resolve(.memory(Int(long(73788)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x12040: pc = 73794; if condition(7) { pc = (73794 + Int(sign(byte(73793), 1))) }
        case 0x12042: pc = 73804; let e0 = resolve(.memory(Int(long(73796)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(73800)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1204c: pc = 73810; let e0 = resolve(.memory(Int(long(73806)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x12052: pc = 73816; let e0 = resolve(.memory(Int(long(73812)) & 0xffffff), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4); put(e1, value, 4)
        case 0x12058: pc = 73820; push(73820); pc = (73818 + Int(sign(word(73818), 2)))
        case 0x1205c: pc = 73826; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(73822)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x12062: pc = 73832; let e0 = resolve(.memory(Int(long(73828)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x12068: pc = 73834; if condition(7) { pc = (73834 + Int(sign(byte(73833), 1))) }
        case 0x1206a: pc = 73840; let e0 = resolve(.memory(Int(long(73836)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x12070: pc = 73846; let e0 = resolve(.memory(Int(long(73842)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x12076: pc = 73850; let e0 = resolve(.immediate(word(73848)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x1207a: pc = 73854; let e0 = resolve(.immediate(word(73852)), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x1207e: pc = 73862; let e0 = resolve(.immediate(word(73856)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(73858)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x12086: pc = 73864; if condition(10) { pc = (73864 + Int(sign(byte(73863), 1))) }
        case 0x12088: pc = 73872; let e0 = resolve(.immediate(word(73866)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(73868)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x12090: pc = 73874; if condition(7) { pc = (73874 + Int(sign(byte(73873), 1))) }
        case 0x12092: pc = 73882; let e0 = resolve(.immediate(word(73876)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(73878)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1209a: pc = 73884; if condition(7) { pc = (73884 + Int(sign(byte(73883), 1))) }
        case 0x1209c: pc = 73892; let e0 = resolve(.immediate(word(73886)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(73888)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x120a4: pc = 73894; if condition(7) { pc = (73894 + Int(sign(byte(73893), 1))) }
        case 0x120a6: pc = 73902; let e0 = resolve(.immediate(word(73896)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(73898)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x120ae: pc = 73904; if condition(7) { pc = (73904 + Int(sign(byte(73903), 1))) }
        case 0x120b0: pc = 73912; let e0 = resolve(.immediate(word(73906)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(73908)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x120b8: pc = 73914; if condition(7) { pc = (73914 + Int(sign(byte(73913), 1))) }
        case 0x120ba: pc = 73922; let e0 = resolve(.immediate(word(73916)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(73918)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x120c2: pc = 73924; if condition(7) { pc = (73924 + Int(sign(byte(73923), 1))) }
        case 0x120c4: pc = 73932; let e0 = resolve(.immediate(word(73926)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(73928)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x120cc: pc = 73934; if condition(7) { pc = (73934 + Int(sign(byte(73933), 1))) }
        case 0x120ce: pc = 73942; let e0 = resolve(.immediate(word(73936)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(73938)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x120d6: pc = 73944; if condition(7) { pc = (73944 + Int(sign(byte(73943), 1))) }
        case 0x120d8: pc = 73952; let e0 = resolve(.immediate(word(73946)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(73948)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x120e0: pc = 73954; if condition(6) { pc = (73954 + Int(sign(byte(73953), 1))) }
        case 0x120e2: pc = 73958; let e0 = resolve(.immediate(word(73956)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x120e6: pc = 73960; pc = (73960 + Int(sign(byte(73959), 1)))
        case 0x120e8: pc = 73964; let e0 = resolve(.immediate(word(73962)), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x120ec: pc = 73966; pc = (73966 + Int(sign(byte(73965), 1)))
        case 0x120ee: pc = 73970; let e0 = resolve(.immediate(word(73968)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x120f2: pc = 73974; let e0 = resolve(.immediate(word(73972)), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x120f6: pc = 73976; pc = (73976 + Int(sign(byte(73975), 1)))
        case 0x120f8: pc = 73980; let e0 = resolve(.immediate(word(73978)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x120fc: pc = 73984; let e0 = resolve(.immediate(word(73982)), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        default: fail("Untranslated game address")
        }
    }
}
