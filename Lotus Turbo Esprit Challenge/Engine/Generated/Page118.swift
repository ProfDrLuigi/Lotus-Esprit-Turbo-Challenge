// Generated 68000 game labels $011800–$0118FF.
extension LotusMachine {
    func page118() {
        switch pc {
        case 0x11800: pc = 71684; push(71684); pc = (71682 + Int(sign(word(71682), 2)))
        case 0x11804: pc = 71690; let e0 = resolve(.immediate(word(71686)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(71688), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1180a: pc = 71696; let e0 = resolve(.immediate(word(71692)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(71694), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x11810: pc = 71704; let e0 = resolve(.memory(Int(long(71698)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(UInt32(bitPattern: sign(word(71702), 2))) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x11818: pc = 71712; let e0 = resolve(.immediate(long(71706)), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(UInt32(bitPattern: sign(word(71710), 2))) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x11820: pc = 71720; let e0 = resolve(.memory(Int(long(71714)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(71718), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x11828: pc = 71724; push(71724); pc = (71722 + Int(sign(word(71722), 2)))
        case 0x1182c: pc = 71730; let e0 = resolve(.memory(Int(long(71726)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11832: pc = 71736; let e0 = resolve(.memory(Int(long(71732)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11838: pc = 71742; let e0 = resolve(.memory(Int(long(71738)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1183e: pc = 71746; push(71746); pc = (71744 + Int(sign(word(71744), 2)))
        case 0x11842: pc = 71750; push(71750); pc = (71748 + Int(sign(word(71748), 2)))
        case 0x11846: pc = 71756; let e0 = resolve(.memory(Int(long(71752)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x1184c: pc = 71758; r[0] = UInt32(bitPattern: sign(byte(71757), 1)); logic(r[0], 4)
        case 0x1184e: pc = 71762; push(71762); pc = (71760 + Int(sign(word(71760), 2)))
        case 0x11852: pc = 71766; push(71766); pc = (71764 + Int(sign(word(71764), 2)))
        case 0x11856: pc = 71772; let e0 = resolve(.memory(Int(long(71768)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1185c: pc = 71776; let e0 = resolve(.reg(8), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(71774), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x11860: pc = 71782; let e0 = resolve(.memory(Int(long(71778)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11866: pc = 71786; if condition(6) { pc = (71784 + Int(sign(word(71784), 2))) }
        case 0x1186a: pc = 71794; let e0 = resolve(.immediate(word(71788)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71790)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11872: pc = 71802; let e0 = resolve(.immediate(word(71796)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71798)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1187a: pc = 71810; let e0 = resolve(.immediate(word(71804)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71806)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11882: pc = 71818; let e0 = resolve(.immediate(word(71812)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71814)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1188a: pc = 71824; let e0 = resolve(.memory(Int(long(71820)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11890: pc = 71830; let e0 = resolve(.memory(Int(long(71826)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11896: pc = 71834; push(71834); pc = (71832 + Int(sign(word(71832), 2)))
        case 0x1189a: pc = 71840; let e0 = resolve(.memory(Int(long(71836)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x118a0: pc = 71844; if condition(6) { pc = (71842 + Int(sign(word(71842), 2))) }
        case 0x118a4: pc = 71852; let e0 = resolve(.immediate(word(71846)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71848)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x118ac: pc = 71856; push(71856); pc = (71854 + Int(sign(word(71854), 2)))
        case 0x118b0: pc = 71862; let e0 = resolve(.memory(Int(long(71858)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x118b6: pc = 71866; if condition(6) { pc = (71864 + Int(sign(word(71864), 2))) }
        case 0x118ba: pc = 71876; let e0 = resolve(.immediate(long(71868)), 4); let source = get(e0, 4); let e1 = resolve(.memory(Int(long(71872)) & 0xffffff), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x118c4: pc = 71878; if condition(6) { pc = (71878 + Int(sign(byte(71877), 1))) }
        case 0x118c6: pc = 71886; let e0 = resolve(.immediate(word(71880)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71882)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x118ce: pc = 71896; let e0 = resolve(.immediate(long(71888)), 4); let source = get(e0, 4); let e1 = resolve(.memory(Int(long(71892)) & 0xffffff), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x118d8: pc = 71898; if condition(6) { pc = (71898 + Int(sign(byte(71897), 1))) }
        case 0x118da: pc = 71906; let e0 = resolve(.immediate(word(71900)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71902)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x118e2: pc = 71908; pc = (71908 + Int(sign(byte(71907), 1)))
        case 0x118e4: pc = 71918; let e0 = resolve(.immediate(long(71910)), 4); let source = get(e0, 4); let e1 = resolve(.memory(Int(long(71914)) & 0xffffff), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x118ee: pc = 71920; if condition(6) { pc = (71920 + Int(sign(byte(71919), 1))) }
        case 0x118f0: pc = 71928; let e0 = resolve(.immediate(word(71922)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71924)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x118f8: pc = 71932; push(71932); pc = (71930 + Int(sign(word(71930), 2)))
        case 0x118fc: pc = 71936; push(71936); pc = (71934 + Int(sign(word(71934), 2)))
        default: fail("Untranslated game address")
        }
    }
}
