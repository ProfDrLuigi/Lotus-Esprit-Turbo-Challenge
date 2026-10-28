// Generated 68000 game labels $010400–$0104FF.
extension LotusMachine {
    func page104() {
        switch pc {
        case 0x10402: pc = 66564; if condition(6) { pc = (66564 + Int(sign(byte(66563), 1))) }
        case 0x10404: pc = 66566; pc = Int(pop())
        case 0x10406: pc = 66570; let e0 = resolve(.memory(66966), 4); r[11] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1040a: pc = 66574; let e0 = resolve(.memory(67708), 4); r[14] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1040e: pc = 66576; let e0 = resolve(.indirect(11), 4); push(66576); pc = e0.address
        case 0x10410: pc = 66580; let e0 = resolve(.memory(67750), 4); r[14] = UInt32(truncatingIfNeeded: e0.address)
        case 0x10414: pc = 66582; let e0 = resolve(.indirect(11), 4); push(66582); pc = e0.address
        case 0x10416: pc = 66586; let e0 = resolve(.memory(67792), 4); r[14] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1041a: pc = 66588; let e0 = resolve(.indirect(11), 4); push(66588); pc = e0.address
        case 0x1041c: pc = 66592; let e0 = resolve(.memory(67834), 4); r[14] = UInt32(truncatingIfNeeded: e0.address)
        case 0x10420: pc = 66594; let e0 = resolve(.indirect(11), 4); push(66594); pc = e0.address
        case 0x10422: pc = 66598; pc = (66596 + Int(sign(word(66596), 2)))
        case 0x10426: pc = 66604; let e0 = resolve(.immediate(word(66600)), 2); let source = get(e0, 2); let e1 = resolve(.offset(10, Int(sign(word(66602), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination | source; put(e1, value, 2); logic(value, 2)
        case 0x1042c: pc = 66612; let e0 = resolve(.offset(10, Int(sign(word(66606), 2))), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(66608)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10434: pc = 66616; let e0 = resolve(.immediate(word(66614)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x10438: pc = 66620; if !condition(1) {     setRegister(0, r[0] &- 1, 2);     if r[0] & 65535 != 65535 { pc = (66618 + Int(sign(word(66618), 2))) } }
        case 0x1043c: pc = 66624; let e0 = resolve(.memory(67708), 4); r[14] = UInt32(truncatingIfNeeded: e0.address)
        case 0x10440: pc = 66632; let e0 = resolve(.offset(14, Int(sign(word(66626), 2))), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(66628)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x10448: pc = 66640; let e0 = resolve(.offset(14, Int(sign(word(66634), 2))), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(66636)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10450: pc = 66648; let e0 = resolve(.offset(14, Int(sign(word(66642), 2))), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(66644)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x10458: pc = 66656; let e0 = resolve(.offset(14, Int(sign(word(66650), 2))), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(66652)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10460: pc = 66664; let e0 = resolve(.offset(14, Int(sign(word(66658), 2))), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(66660)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x10468: pc = 66672; let e0 = resolve(.offset(14, Int(sign(word(66666), 2))), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(66668)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10470: pc = 66680; let e0 = resolve(.offset(14, Int(sign(word(66674), 2))), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(66676)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x10478: pc = 66688; let e0 = resolve(.offset(14, Int(sign(word(66682), 2))), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(66684)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10480: pc = 66692; pc = (66690 + Int(sign(word(66690), 2)))
        case 0x10484: pc = 66696; let e0 = resolve(.offset(14, Int(sign(word(66694), 2))), 4); r[12] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x10488: pc = 66700; let e0 = resolve(.offset(10, Int(sign(word(66698), 2))), 2); r[8] = UInt32(bitPattern: sign(get(e0, 2), 2))
        case 0x1048c: pc = 66704; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.offset(10, Int(sign(word(66702), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x10490: pc = 66708; let e0 = resolve(.offset(10, Int(sign(word(66706), 2))), 4); let source = get(e0, 4); let e1 = resolve(.reg(8), 4); let destination = get(e1, 4); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x10494: pc = 66712; let e0 = resolve(.offset(14, Int(sign(word(66710), 2))), 2); logic(get(e0, 2), 2)
        case 0x10498: pc = 66716; if condition(7) { pc = (66714 + Int(sign(word(66714), 2))) }
        case 0x1049c: pc = 66720; let e0 = resolve(.offset(14, Int(sign(word(66718), 2))), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x104a0: pc = 66722; let e0 = resolve(.indirect(8), 4); logic(get(e0, 4), 4)
        case 0x104a2: pc = 66724; if condition(6) { pc = (66724 + Int(sign(byte(66723), 1))) }
        case 0x104a4: pc = 66728; let e0 = resolve(.offset(14, Int(sign(word(66726), 2))), 2); put(e0, 0, 2); logic(0, 2)
        case 0x104a8: pc = 66732; let e0 = resolve(.offset(14, Int(sign(word(66730), 2))), 2); put(e0, 0, 2); logic(0, 2)
        case 0x104ac: pc = 66736; pc = (66734 + Int(sign(word(66734), 2)))
        case 0x104b0: pc = 66738; let e0 = resolve(.indirect(8), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x104b2: pc = 66742; let e0 = resolve(.offset(8, Int(sign(word(66740), 2))), 1); let value = get(e0, 1); let e1 = resolve(.reg(1), 1); put(e1, value, 1); logic(value, 1)
        case 0x104b6: pc = 66744; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(1), 1); let value = shift(get(e1, 1), count, 1, 2); put(e1, value, 1)
        case 0x104b8: pc = 66748; let e0 = resolve(.immediate(word(66746)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination & source; put(e1, value, 1); logic(value, 1)
        case 0x104bc: pc = 66752; let e0 = resolve(.immediate(word(66750)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination & source; put(e1, value, 1); logic(value, 1)
        case 0x104c0: pc = 66754; let e0 = resolve(.reg(1), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x104c2: pc = 66758; let e0 = resolve(.indirect(8), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(66756), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x104c6: pc = 66764; let e0 = resolve(.immediate(word(66760)), 2); let source = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(66762), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x104cc: pc = 66770; let e0 = resolve(.offset(8, Int(sign(word(66766), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(66768), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x104d2: pc = 66776; let e0 = resolve(.immediate(word(66772)), 2); let source = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(66774), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x104d8: pc = 66780; let e0 = resolve(.immediate(word(66778)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x104dc: pc = 66782; if condition(7) { pc = (66782 + Int(sign(byte(66781), 1))) }
        case 0x104de: pc = 66786; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(66784), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x104e2: pc = 66790; let e0 = resolve(.offset(14, Int(sign(word(66788), 2))), 4); put(e0, 0, 4); logic(0, 4)
        case 0x104e6: pc = 66794; let e0 = resolve(.memory(67934), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x104ea: pc = 66796; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x104ec: pc = 66802; let e0 = resolve(.immediate(long(66798)), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination & source; put(e1, value, 4); logic(value, 4)
        case 0x104f2: pc = 66804; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x104f4: pc = 66806; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(8), 4); let destination = get(e1, 4); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x104f6: pc = 66810; let e0 = resolve(.indirect(8), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(66808), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x104fa: pc = 66816; let e0 = resolve(.offset(8, Int(sign(word(66812), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(66814), 2))), 2); put(e1, value, 2); logic(value, 2)
        default: fail("Untranslated game address")
        }
    }
}
