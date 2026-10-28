// Generated 68000 game labels $014700–$0147FF.
extension LotusMachine {
    func page147() {
        switch pc {
        case 0x14704: pc = 83720; if condition(6) { pc = (83718 + Int(sign(word(83718), 2))) }
        case 0x14708: pc = 83726; let e0 = resolve(.memory(Int(long(83722)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1470e: pc = 83730; if condition(6) { pc = (83728 + Int(sign(word(83728), 2))) }
        case 0x14712: pc = 83732; r[7] = UInt32(bitPattern: sign(byte(83731), 1)); logic(r[7], 4)
        case 0x14714: pc = 83734; r[5] = UInt32(bitPattern: sign(byte(83733), 1)); logic(r[5], 4)
        case 0x14716: pc = 83738; let e0 = resolve(.immediate(word(83736)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x1471a: pc = 83740; pc = (83740 + Int(sign(byte(83739), 1)))
        case 0x1471c: pc = 83742; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1471e: pc = 83744; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(5), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x14720: pc = 83746; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x14722: pc = 83748; if condition(6) { pc = (83748 + Int(sign(byte(83747), 1))) }
        case 0x14724: pc = 83750; let e0 = resolve(.pre(8), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x14726: pc = 83754; let e0 = resolve(.immediate(word(83752)), 2); let value = get(e0, 2); let e1 = resolve(.status, 2); put(e1, value, 2)
        case 0x1472a: pc = 83756; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4, extend: true); put(e1, value, 4)
        case 0x1472c: pc = 83758; if condition(4) { pc = (83758 + Int(sign(byte(83757), 1))) }
        case 0x1472e: pc = 83760; let e0 = resolve(.reg(5), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(7), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0; put(e1, value | flag, 4)
        case 0x14730: pc = 83764; let e0 = resolve(.indexed(12, 7, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.reg(6), 1); put(e1, value, 1); logic(value, 1)
        case 0x14734: pc = 83766; if condition(11) { pc = (83766 + Int(sign(byte(83765), 1))) }
        case 0x14736: pc = 83770; let e0 = resolve(.immediate(word(83768)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x1473a: pc = 83774; let e0 = resolve(.immediate(word(83772)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1473e: pc = 83776; if condition(4) { pc = (83776 + Int(sign(byte(83775), 1))) }
        case 0x14740: pc = 83778; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x14742: pc = 83780; r[7] = UInt32(bitPattern: sign(byte(83779), 1)); logic(r[7], 4)
        case 0x14744: pc = 83784; let e0 = resolve(.indexed(13, 6, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x14748: pc = 83786; if condition(7) { pc = (83786 + Int(sign(byte(83785), 1))) }
        case 0x1474a: pc = 83788; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x1474c: pc = 83790; r[7] = UInt32(bitPattern: sign(byte(83789), 1)); logic(r[7], 4)
        case 0x1474e: pc = 83792; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x14750: pc = 83794; if condition(6) { pc = (83794 + Int(sign(byte(83793), 1))) }
        case 0x14752: pc = 83796; let e0 = resolve(.pre(8), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x14754: pc = 83800; let e0 = resolve(.immediate(word(83798)), 2); let value = get(e0, 2); let e1 = resolve(.status, 2); put(e1, value, 2)
        case 0x14758: pc = 83802; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4, extend: true); put(e1, value, 4)
        case 0x1475a: pc = 83804; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2, extend: true); put(e1, value, 2)
        case 0x1475c: pc = 83808; if !condition(1) {     setRegister(1, r[1] &- 1, 2);     if r[1] & 65535 != 65535 { pc = (83806 + Int(sign(word(83806), 2))) } }
        case 0x14760: pc = 83812; let e0 = resolve(.indexed(14, 6, false, 0), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x14764: pc = 83814; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.reg(5), 2); put(e1, value, 2); logic(value, 2)
        case 0x14766: pc = 83816; r[1] = UInt32(bitPattern: sign(byte(83815), 1)); logic(r[1], 4)
        case 0x14768: pc = 83820; let e0 = resolve(.immediate(word(83818)), 2); let source = get(e0, 2); let e1 = resolve(.reg(5), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1476c: pc = 83822; if condition(4) { pc = (83822 + Int(sign(byte(83821), 1))) }
        case 0x1476e: pc = 83824; let e0 = resolve(.reg(5), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x14770: pc = 83826; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x14772: pc = 83828; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x14774: pc = 83834; let e0 = resolve(.memory(Int(long(83830)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1477a: pc = 83836; if condition(5) { pc = (83836 + Int(sign(byte(83835), 1))) }
        case 0x1477c: pc = 83842; let e0 = resolve(.memory(Int(long(83838)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x14782: pc = 83844; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x14784: pc = 83846; r[7] = UInt32(bitPattern: sign(byte(83845), 1)); logic(r[7], 4)
        case 0x14786: pc = 83848; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x14788: pc = 83850; if condition(6) { pc = (83850 + Int(sign(byte(83849), 1))) }
        case 0x1478a: pc = 83852; let e0 = resolve(.pre(8), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x1478c: pc = 83856; let e0 = resolve(.immediate(word(83854)), 2); let value = get(e0, 2); let e1 = resolve(.status, 2); put(e1, value, 2)
        case 0x14790: pc = 83858; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4, extend: true); put(e1, value, 4)
        case 0x14792: pc = 83860; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2, extend: true); put(e1, value, 2)
        case 0x14794: pc = 83864; if !condition(1) {     setRegister(1, r[1] &- 1, 2);     if r[1] & 65535 != 65535 { pc = (83862 + Int(sign(word(83862), 2))) } }
        case 0x14798: pc = 83866; setRegister(5, UInt32(bitPattern: sign(r[5], 2)), 4); logic(r[5], 4)
        case 0x1479a: pc = 83872; let e0 = resolve(.reg(5), 4); let source = get(e0, 4); let e1 = resolve(.memory(Int(long(83868)) & 0xffffff), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x147a0: pc = 83876; let e0 = resolve(.indexed(11, 7, false, 0), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x147a4: pc = 83878; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(5), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x147a6: pc = 83880; let e0 = resolve(.pre(10), 1); let value = get(e0, 1); let e1 = resolve(.pre(11), 1); put(e1, value, 1); logic(value, 1)
        case 0x147a8: pc = 83884; if !condition(1) {     setRegister(5, r[5] &- 1, 2);     if r[5] & 65535 != 65535 { pc = (83882 + Int(sign(word(83882), 2))) } }
        case 0x147ac: pc = 83886; pc = (83886 + Int(sign(byte(83885), 1)))
        case 0x147ae: pc = 83888; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x147b0: pc = 83890; r[7] = UInt32(bitPattern: sign(byte(83889), 1)); logic(r[7], 4)
        case 0x147b2: pc = 83894; let e0 = resolve(.indexed(13, 6, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x147b6: pc = 83896; if condition(7) { pc = (83896 + Int(sign(byte(83895), 1))) }
        case 0x147b8: pc = 83898; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x147ba: pc = 83900; r[7] = UInt32(bitPattern: sign(byte(83899), 1)); logic(r[7], 4)
        case 0x147bc: pc = 83902; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x147be: pc = 83904; if condition(6) { pc = (83904 + Int(sign(byte(83903), 1))) }
        case 0x147c0: pc = 83906; let e0 = resolve(.pre(8), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x147c2: pc = 83910; let e0 = resolve(.immediate(word(83908)), 2); let value = get(e0, 2); let e1 = resolve(.status, 2); put(e1, value, 2)
        case 0x147c6: pc = 83912; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4, extend: true); put(e1, value, 4)
        case 0x147c8: pc = 83914; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2, extend: true); put(e1, value, 2)
        case 0x147ca: pc = 83918; if !condition(1) {     setRegister(1, r[1] &- 1, 2);     if r[1] & 65535 != 65535 { pc = (83916 + Int(sign(word(83916), 2))) } }
        case 0x147ce: pc = 83922; let e0 = resolve(.indexed(14, 6, false, 0), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x147d2: pc = 83924; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.reg(5), 2); put(e1, value, 2); logic(value, 2)
        case 0x147d4: pc = 83926; setRegister(5, UInt32(bitPattern: sign(r[5], 2)), 4); logic(r[5], 4)
        case 0x147d6: pc = 83932; let e0 = resolve(.reg(5), 4); let source = get(e0, 4); let e1 = resolve(.memory(Int(long(83928)) & 0xffffff), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x147dc: pc = 83934; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(5), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x147de: pc = 83936; let e0 = resolve(.pre(9), 1); let value = get(e0, 1); let e1 = resolve(.pre(11), 1); put(e1, value, 1); logic(value, 1)
        case 0x147e0: pc = 83940; if !condition(1) {     setRegister(5, r[5] &- 1, 2);     if r[5] & 65535 != 65535 { pc = (83938 + Int(sign(word(83938), 2))) } }
        case 0x147e4: pc = 83948; let e0 = resolve(.immediate(word(83942)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(83944)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x147ec: pc = 83950; if condition(7) { pc = (83950 + Int(sign(byte(83949), 1))) }
        case 0x147ee: pc = 83956; let e0 = resolve(.memory(Int(long(83952)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x147f4: pc = 83962; let e0 = resolve(.memory(Int(long(83958)) & 0xffffff), 4); let source = get(e0, 4); let e1 = resolve(.reg(1), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x147fa: pc = 83964; if condition(7) { pc = (83964 + Int(sign(byte(83963), 1))) }
        case 0x147fc: pc = 83966; if condition(4) { pc = (83966 + Int(sign(byte(83965), 1))) }
        case 0x147fe: pc = 83968; let e0 = resolve(.reg(1), 4); let source = get(e0, 4); let e1 = resolve(.reg(1), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        default: fail("Untranslated game address")
        }
    }
}
