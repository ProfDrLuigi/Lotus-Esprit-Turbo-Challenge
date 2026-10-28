// Generated 68000 game labels $015400–$0154FF.
extension LotusMachine {
    func page154() {
        switch pc {
        case 0x15400: pc = 87046; let e0 = resolve(.memory(Int(long(87042)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15406: pc = 87052; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(87048)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1540c: pc = 87056; let e0 = resolve(.immediate(word(87054)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15410: pc = 87062; let e0 = resolve(.memory(Int(long(87058)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x15416: pc = 87066; push(87066); pc = (87064 + Int(sign(word(87064), 2)))
        case 0x1541a: pc = 87074; let e0 = resolve(.immediate(word(87068)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(87070)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15422: pc = 87076; if condition(7) { pc = (87076 + Int(sign(byte(87075), 1))) }
        case 0x15424: pc = 87080; push(87080); pc = (87078 + Int(sign(word(87078), 2)))
        case 0x15428: pc = 87084; let e0 = resolve(.immediate(word(87082)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1542c: pc = 87090; let e0 = resolve(.memory(Int(long(87086)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x15432: pc = 87094; push(87094); pc = (87092 + Int(sign(word(87092), 2)))
        case 0x15436: pc = 87098; push(87098); pc = (87096 + Int(sign(word(87096), 2)))
        case 0x1543a: pc = 87102; let e0 = resolve(.immediate(word(87100)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1543e: pc = 87108; let e0 = resolve(.memory(Int(long(87104)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x15444: pc = 87112; push(87112); pc = (87110 + Int(sign(word(87110), 2)))
        case 0x15448: pc = 87116; push(87116); pc = (87114 + Int(sign(word(87114), 2)))
        case 0x1544c: pc = 87120; push(87120); pc = (87118 + Int(sign(word(87118), 2)))
        case 0x15450: pc = 87122; pc = (87122 + Int(sign(byte(87121), 1)))
        case 0x15452: pc = 87126; push(87126); pc = (87124 + Int(sign(word(87124), 2)))
        case 0x15456: pc = 87130; push(87130); pc = (87128 + Int(sign(word(87128), 2)))
        case 0x1545a: pc = 87136; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(87132)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15460: pc = 87138; push(87138); pc = (87138 + Int(sign(byte(87137), 1)))
        case 0x15462: pc = 87142; push(87142); pc = (87140 + Int(sign(word(87140), 2)))
        case 0x15466: pc = 87146; push(87146); pc = (87144 + Int(sign(word(87144), 2)))
        case 0x1546a: pc = 87150; push(87150); pc = (87148 + Int(sign(word(87148), 2)))
        case 0x1546e: pc = 87152; if condition(7) { pc = (87152 + Int(sign(byte(87151), 1))) }
        case 0x15470: pc = 87160; let e0 = resolve(.immediate(word(87154)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(87156)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x15478: pc = 87166; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(87162)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1547e: pc = 87174; let e0 = resolve(.immediate(word(87168)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(87170)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15486: pc = 87176; if condition(6) { pc = (87176 + Int(sign(byte(87175), 1))) }
        case 0x15488: pc = 87184; let e0 = resolve(.immediate(word(87178)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(87180)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x15490: pc = 87190; let e0 = resolve(.immediate(word(87186)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(87188), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15496: pc = 87194; push(87194); pc = (87192 + Int(sign(word(87192), 2)))
        case 0x1549a: pc = 87200; let e0 = resolve(.immediate(word(87196)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(87198), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x154a0: pc = 87204; moveMultiple(24575, Int(r[15]), 4, load: true, addressRegister: 15, predecrement: false, postincrement: true)
        case 0x154a4: pc = 87212; let e0 = resolve(.immediate(word(87206)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(87208)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x154ac: pc = 87214; returnInterrupt()
        case 0x154ae: pc = 87220; let e0 = resolve(.memory(Int(long(87216)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x154b4: pc = 87222; if condition(7) { pc = (87222 + Int(sign(byte(87221), 1))) }
        case 0x154b6: pc = 87224; if condition(11) { pc = (87224 + Int(sign(byte(87223), 1))) }
        case 0x154b8: pc = 87230; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(87226)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x154be: pc = 87236; let e0 = resolve(.memory(Int(long(87232)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x154c4: pc = 87238; if condition(7) { pc = (87238 + Int(sign(byte(87237), 1))) }
        case 0x154c6: pc = 87240; if condition(11) { pc = (87240 + Int(sign(byte(87239), 1))) }
        case 0x154c8: pc = 87246; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(87242)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x154ce: pc = 87248; pc = Int(pop())
        case 0x154d0: pc = 87250; r[1] = UInt32(bitPattern: sign(byte(87249), 1)); logic(r[1], 4)
        case 0x154d2: pc = 87256; let e0 = resolve(.memory(Int(long(87252)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x154d8: pc = 87260; let e0 = resolve(.immediate(word(87258)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x154dc: pc = 87262; if condition(11) { pc = (87262 + Int(sign(byte(87261), 1))) }
        case 0x154de: pc = 87266; let e0 = resolve(.immediate(word(87264)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(1), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0; put(e1, value | flag, 4)
        case 0x154e2: pc = 87270; let e0 = resolve(.immediate(word(87268)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x154e6: pc = 87272; if condition(10) { pc = (87272 + Int(sign(byte(87271), 1))) }
        case 0x154e8: pc = 87276; let e0 = resolve(.immediate(word(87274)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(1), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0; put(e1, value | flag, 4)
        case 0x154ec: pc = 87280; let e0 = resolve(.immediate(word(87278)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(1), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0; put(e1, value | flag, 4)
        case 0x154f0: pc = 87286; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.memory(Int(long(87282)) & 0xffffff), 1); put(e1, value, 1); logic(value, 1)
        case 0x154f6: pc = 87288; r[1] = UInt32(bitPattern: sign(byte(87287), 1)); logic(r[1], 4)
        case 0x154f8: pc = 87294; let e0 = resolve(.memory(Int(long(87290)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x154fe: pc = 87298; let e0 = resolve(.immediate(word(87296)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        default: fail("Untranslated game address")
        }
    }
}
