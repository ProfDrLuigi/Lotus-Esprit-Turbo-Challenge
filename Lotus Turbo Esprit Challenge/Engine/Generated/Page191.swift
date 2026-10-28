// Generated 68000 game labels $019100–$0191FF.
extension LotusMachine {
    func page191() {
        switch pc {
        case 0x19104: pc = 102666; let e0 = resolve(.memory(Int(long(102662)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1910a: pc = 102670; push(102670); pc = (102668 + Int(sign(word(102668), 2)))
        case 0x1910e: pc = 102672; pc = Int(pop())
        case 0x19110: pc = 102676; let e0 = resolve(.immediate(word(102674)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x19114: pc = 102682; let e0 = resolve(.memory(Int(long(102678)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x1911a: pc = 102686; push(102686); pc = (102684 + Int(sign(word(102684), 2)))
        case 0x1911e: pc = 102692; let e0 = resolve(.memory(Int(long(102688)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x19124: pc = 102698; let e0 = resolve(.memory(Int(long(102694)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1912a: pc = 102704; let e0 = resolve(.memory(Int(long(102700)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x19130: pc = 102708; push(102708); pc = (102706 + Int(sign(word(102706), 2)))
        case 0x19134: pc = 102710; pc = Int(pop())
        case 0x19136: pc = 102714; let e0 = resolve(.immediate(word(102712)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1913a: pc = 102720; let e0 = resolve(.memory(Int(long(102716)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x19140: pc = 102724; push(102724); pc = (102722 + Int(sign(word(102722), 2)))
        case 0x19144: pc = 102730; let e0 = resolve(.memory(Int(long(102726)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x1914a: pc = 102736; let e0 = resolve(.memory(Int(long(102732)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x19150: pc = 102742; let e0 = resolve(.memory(Int(long(102738)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x19156: pc = 102746; push(102746); pc = (102744 + Int(sign(word(102744), 2)))
        case 0x1915a: pc = 102750; let e0 = resolve(.immediate(word(102748)), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x1915e: pc = 102756; let e0 = resolve(.memory(Int(long(102752)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x19164: pc = 102762; let e0 = resolve(.memory(Int(long(102758)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1916a: pc = 102764; let e0 = resolve(.indirect(8), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x1916c: pc = 102770; let e0 = resolve(.immediate(long(102766)), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x19172: pc = 102772; if condition(6) { pc = (102772 + Int(sign(byte(102771), 1))) }
        case 0x19174: pc = 102774; r[0] = UInt32(bitPattern: sign(byte(102773), 1)); logic(r[0], 4)
        case 0x19176: pc = 102776; pc = (102776 + Int(sign(byte(102775), 1)))
        case 0x19178: pc = 102778; let e0 = resolve(.reg(9), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x1917a: pc = 102780; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.post(8), 4); put(e1, value, 4); logic(value, 4)
        case 0x1917c: pc = 102784; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (102782 + Int(sign(word(102782), 2))) } }
        case 0x19180: pc = 102786; pc = Int(pop())
        case 0x19182: pc = 102790; let e0 = resolve(.offset(14, Int(sign(word(102788), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x19186: pc = 102792; let e0 = resolve(.reg(1), 2); put(e0, 0, 2); logic(0, 2)
        case 0x19188: pc = 102796; let e0 = resolve(.immediate(word(102794)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(0), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x1918c: pc = 102798; if condition(7) { pc = (102798 + Int(sign(byte(102797), 1))) }
        case 0x1918e: pc = 102802; let e0 = resolve(.immediate(word(102800)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(1), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0; put(e1, value | flag, 4)
        case 0x19192: pc = 102806; let e0 = resolve(.immediate(word(102804)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(0), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x19196: pc = 102808; if condition(7) { pc = (102808 + Int(sign(byte(102807), 1))) }
        case 0x19198: pc = 102812; let e0 = resolve(.immediate(word(102810)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(1), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0; put(e1, value | flag, 4)
        case 0x1919c: pc = 102814; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x1919e: pc = 102816; let e0 = resolve(.immediate(1), 4); let count = get(e0, 4); let e1 = resolve(.reg(2), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x191a0: pc = 102818; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination ^ source; put(e1, value, 2); logic(value, 2)
        case 0x191a2: pc = 102822; let e0 = resolve(.immediate(word(102820)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(0), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x191a6: pc = 102824; if condition(7) { pc = (102824 + Int(sign(byte(102823), 1))) }
        case 0x191a8: pc = 102828; let e0 = resolve(.immediate(word(102826)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(1), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0; put(e1, value | flag, 4)
        case 0x191ac: pc = 102832; let e0 = resolve(.immediate(word(102830)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(0), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x191b0: pc = 102834; if condition(7) { pc = (102834 + Int(sign(byte(102833), 1))) }
        case 0x191b2: pc = 102838; let e0 = resolve(.immediate(word(102836)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(1), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0; put(e1, value | flag, 4)
        case 0x191b6: pc = 102846; let e0 = resolve(.immediate(word(102840)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.memory(Int(long(102842)) & 0xffffff), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x191be: pc = 102848; if condition(6) { pc = (102848 + Int(sign(byte(102847), 1))) }
        case 0x191c0: pc = 102852; let e0 = resolve(.immediate(word(102850)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(1), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0; put(e1, value | flag, 4)
        case 0x191c4: pc = 102854; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(5), 2); put(e1, value, 2); logic(value, 2)
        case 0x191c6: pc = 102860; let e0 = resolve(.reg(5), 1); let value = get(e0, 1); let e1 = resolve(.memory(Int(long(102856)) & 0xffffff), 1); put(e1, value, 1); logic(value, 1)
        case 0x191cc: pc = 102866; let e0 = resolve(.memory(Int(long(102862)) & 0xffffff), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x191d2: pc = 102872; let e0 = resolve(.memory(Int(long(102868)) & 0xffffff), 1); let value = get(e0, 1); let e1 = resolve(.reg(1), 1); put(e1, value, 1); logic(value, 1)
        case 0x191d8: pc = 102874; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.reg(2), 1); put(e1, value, 1); logic(value, 1)
        case 0x191da: pc = 102876; let e0 = resolve(.reg(1), 1); let source = get(e0, 1); let e1 = resolve(.reg(2), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination ^ source; put(e1, value, 1); logic(value, 1)
        case 0x191dc: pc = 102878; let e0 = resolve(.reg(1), 1); let source = get(e0, 1); let e1 = resolve(.reg(2), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination & source; put(e1, value, 1); logic(value, 1)
        case 0x191de: pc = 102884; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.memory(Int(long(102880)) & 0xffffff), 1); put(e1, value, 1); logic(value, 1)
        case 0x191e4: pc = 102890; let e0 = resolve(.reg(2), 1); let value = get(e0, 1); let e1 = resolve(.memory(Int(long(102886)) & 0xffffff), 1); put(e1, value, 1); logic(value, 1)
        case 0x191ea: pc = 102896; let e0 = resolve(.memory(Int(long(102892)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x191f0: pc = 102898; if condition(7) { pc = (102898 + Int(sign(byte(102897), 1))) }
        case 0x191f2: pc = 102904; let e0 = resolve(.memory(Int(long(102900)) & 0xffffff), 1); let value = get(e0, 1); let e1 = resolve(.reg(5), 1); put(e1, value, 1); logic(value, 1)
        case 0x191f8: pc = 102906; pc = (102906 + Int(sign(byte(102905), 1)))
        case 0x191fa: pc = 102910; let e0 = resolve(.offset(14, Int(sign(word(102908), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x191fe: pc = 102912; let e0 = resolve(.reg(1), 2); put(e0, 0, 2); logic(0, 2)
        default: fail("Untranslated game address")
        }
    }
}
