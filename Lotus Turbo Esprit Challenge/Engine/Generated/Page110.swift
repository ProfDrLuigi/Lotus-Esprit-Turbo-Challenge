// Generated 68000 game labels $011000–$0110FF.
extension LotusMachine {
    func page110() {
        switch pc {
        case 0x11002: pc = 69640; let e0 = resolve(.memory(Int(long(69636)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x11008: pc = 69642; r[0] = UInt32(bitPattern: sign(byte(69641), 1)); logic(r[0], 4)
        case 0x1100a: pc = 69646; push(69646); pc = (69644 + Int(sign(word(69644), 2)))
        case 0x1100e: pc = 69650; push(69650); pc = (69648 + Int(sign(word(69648), 2)))
        case 0x11012: pc = 69658; let e0 = resolve(.immediate(word(69652)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69654)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1101a: pc = 69666; let e0 = resolve(.immediate(word(69660)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69662)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11022: pc = 69674; let e0 = resolve(.immediate(word(69668)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69670)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1102a: pc = 69682; let e0 = resolve(.immediate(word(69676)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69678)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11032: pc = 69688; let e0 = resolve(.memory(Int(long(69684)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11038: pc = 69694; let e0 = resolve(.memory(Int(long(69690)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x1103e: pc = 69698; push(69698); pc = (69696 + Int(sign(word(69696), 2)))
        case 0x11042: pc = 69704; let e0 = resolve(.memory(Int(long(69700)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11048: pc = 69708; if condition(6) { pc = (69706 + Int(sign(word(69706), 2))) }
        case 0x1104c: pc = 69714; let e0 = resolve(.memory(Int(long(69710)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11052: pc = 69716; if condition(7) { pc = (69716 + Int(sign(byte(69715), 1))) }
        case 0x11054: pc = 69722; let e0 = resolve(.memory(Int(long(69718)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1105a: pc = 69726; push(69726); pc = (69724 + Int(sign(word(69724), 2)))
        case 0x1105e: pc = 69730; push(69730); pc = (69728 + Int(sign(word(69728), 2)))
        case 0x11062: pc = 69736; let e0 = resolve(.memory(Int(long(69732)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x11068: pc = 69738; r[0] = UInt32(bitPattern: sign(byte(69737), 1)); logic(r[0], 4)
        case 0x1106a: pc = 69742; push(69742); pc = (69740 + Int(sign(word(69740), 2)))
        case 0x1106e: pc = 69746; push(69746); pc = (69744 + Int(sign(word(69744), 2)))
        case 0x11072: pc = 69754; let e0 = resolve(.immediate(word(69748)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69750)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1107a: pc = 69762; let e0 = resolve(.immediate(word(69756)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69758)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11082: pc = 69770; let e0 = resolve(.immediate(word(69764)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69766)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1108a: pc = 69778; let e0 = resolve(.immediate(word(69772)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69774)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11092: pc = 69784; let e0 = resolve(.memory(Int(long(69780)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11098: pc = 69790; let e0 = resolve(.memory(Int(long(69786)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x1109e: pc = 69794; push(69794); pc = (69792 + Int(sign(word(69792), 2)))
        case 0x110a2: pc = 69800; let e0 = resolve(.memory(Int(long(69796)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x110a8: pc = 69804; if condition(6) { pc = (69802 + Int(sign(word(69802), 2))) }
        case 0x110ac: pc = 69810; let e0 = resolve(.memory(Int(long(69806)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x110b2: pc = 69812; if condition(7) { pc = (69812 + Int(sign(byte(69811), 1))) }
        case 0x110b4: pc = 69818; let e0 = resolve(.memory(Int(long(69814)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x110ba: pc = 69822; push(69822); pc = (69820 + Int(sign(word(69820), 2)))
        case 0x110be: pc = 69826; push(69826); pc = (69824 + Int(sign(word(69824), 2)))
        case 0x110c2: pc = 69832; let e0 = resolve(.memory(Int(long(69828)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x110c8: pc = 69834; r[0] = UInt32(bitPattern: sign(byte(69833), 1)); logic(r[0], 4)
        case 0x110ca: pc = 69838; push(69838); pc = (69836 + Int(sign(word(69836), 2)))
        case 0x110ce: pc = 69842; push(69842); pc = (69840 + Int(sign(word(69840), 2)))
        case 0x110d2: pc = 69850; let e0 = resolve(.immediate(word(69844)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69846)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x110da: pc = 69858; let e0 = resolve(.immediate(word(69852)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69854)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x110e2: pc = 69866; let e0 = resolve(.immediate(word(69860)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69862)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x110ea: pc = 69874; let e0 = resolve(.immediate(word(69868)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69870)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x110f2: pc = 69880; let e0 = resolve(.memory(Int(long(69876)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x110f8: pc = 69886; let e0 = resolve(.memory(Int(long(69882)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x110fe: pc = 69890; push(69890); pc = (69888 + Int(sign(word(69888), 2)))
        default: fail("Untranslated game address")
        }
    }
}
