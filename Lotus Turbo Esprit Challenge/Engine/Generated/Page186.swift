// Generated 68000 game labels $018600–$0186FF.
extension LotusMachine {
    func page186() {
        switch pc {
        case 0x1860a: pc = 99856; let e0 = resolve(.memory(Int(long(99852)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x18610: pc = 99862; let e0 = resolve(.memory(Int(long(99858)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x18616: pc = 99868; let e0 = resolve(.memory(Int(long(99864)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x1861c: pc = 99874; let e0 = resolve(.memory(Int(long(99870)) & 0xffffff), 4); r[11] = UInt32(truncatingIfNeeded: e0.address)
        case 0x18622: pc = 99876; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x18624: pc = 99878; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18626: pc = 99882; let e0 = resolve(.indexed(11, 6, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x1862a: pc = 99884; if condition(11) { pc = (99884 + Int(sign(byte(99883), 1))) }
        case 0x1862c: pc = 99894; let e0 = resolve(.memory(Int(long(99886)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(99890)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18636: pc = 99902; let e0 = resolve(.immediate(word(99896)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(99898)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1863e: pc = 99906; push(99906); pc = (99904 + Int(sign(word(99904), 2)))
        case 0x18642: pc = 99908; pc = Int(pop())
        case 0x18644: pc = 99914; let e0 = resolve(.memory(Int(long(99910)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1864a: pc = 99920; let e0 = resolve(.memory(Int(long(99916)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x18650: pc = 99926; let e0 = resolve(.memory(Int(long(99922)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x18656: pc = 99932; let e0 = resolve(.memory(Int(long(99928)) & 0xffffff), 4); r[11] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1865c: pc = 99934; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x1865e: pc = 99936; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18660: pc = 99940; let e0 = resolve(.indexed(11, 6, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x18664: pc = 99942; if condition(11) { pc = (99942 + Int(sign(byte(99941), 1))) }
        case 0x18666: pc = 99952; let e0 = resolve(.memory(Int(long(99944)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(99948)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18670: pc = 99960; let e0 = resolve(.immediate(word(99954)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(99956)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18678: pc = 99964; push(99964); pc = (99962 + Int(sign(word(99962), 2)))
        case 0x1867c: pc = 99966; pc = Int(pop())
        case 0x1867e: pc = 99972; let e0 = resolve(.memory(Int(long(99968)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x18684: pc = 99978; let e0 = resolve(.memory(Int(long(99974)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x1868a: pc = 99984; let e0 = resolve(.memory(Int(long(99980)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x18690: pc = 99990; let e0 = resolve(.memory(Int(long(99986)) & 0xffffff), 4); r[11] = UInt32(truncatingIfNeeded: e0.address)
        case 0x18696: pc = 99992; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x18698: pc = 99994; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1869a: pc = 99998; let e0 = resolve(.indexed(11, 6, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x1869e: pc = 100002; if condition(11) { pc = (100000 + Int(sign(word(100000), 2))) }
        case 0x186a2: pc = 100012; let e0 = resolve(.memory(Int(long(100004)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100008)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x186ac: pc = 100020; let e0 = resolve(.immediate(word(100014)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100016)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x186b4: pc = 100024; push(100024); pc = (100022 + Int(sign(word(100022), 2)))
        case 0x186b8: pc = 100034; let e0 = resolve(.memory(Int(long(100026)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100030)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x186c2: pc = 100042; let e0 = resolve(.immediate(word(100036)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(100038)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x186ca: pc = 100046; if condition(6) { pc = (100044 + Int(sign(word(100044), 2))) }
        case 0x186ce: pc = 100052; let e0 = resolve(.memory(Int(long(100048)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x186d4: pc = 100054; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x186d6: pc = 100060; let e0 = resolve(.memory(Int(long(100056)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x186dc: pc = 100068; let e0 = resolve(.indexed(8, 6, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100064)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x186e4: pc = 100076; let e0 = resolve(.indexed(8, 6, false, 18), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100072)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x186ec: pc = 100084; let e0 = resolve(.indexed(8, 6, false, 36), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100080)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x186f4: pc = 100092; let e0 = resolve(.indexed(8, 6, false, 54), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100088)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x186fc: pc = 100100; let e0 = resolve(.indexed(8, 6, false, 72), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100096)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        default: fail("Untranslated game address")
        }
    }
}
