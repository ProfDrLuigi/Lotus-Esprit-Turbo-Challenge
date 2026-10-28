// Generated 68000 game labels $016000–$0160FF.
extension LotusMachine {
    func page160() {
        switch pc {
        case 0x16004: pc = 90126; let e0 = resolve(.immediate(long(90118)), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(90122)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x1600e: pc = 90128; pc = (90128 + Int(sign(byte(90127), 1)))
        case 0x16010: pc = 90138; let e0 = resolve(.immediate(long(90130)), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(90134)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x1601a: pc = 90148; let e0 = resolve(.immediate(long(90140)), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(90144)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x16024: pc = 90154; let e0 = resolve(.memory(Int(long(90150)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1602a: pc = 90160; let e0 = resolve(.memory(Int(long(90156)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x16030: pc = 90162; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x16032: pc = 90166; let e0 = resolve(.immediate(word(90164)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x16036: pc = 90168; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16038: pc = 90172; let e0 = resolve(.indexed(9, 1, false, 0), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1603c: pc = 90178; let e0 = resolve(.memory(Int(long(90174)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x16042: pc = 90180; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16044: pc = 90184; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.indexed(9, 1, false, 0), 2); put(e1, value, 2); logic(value, 2)
        case 0x16048: pc = 90190; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(90186)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1604e: pc = 90198; let e0 = resolve(.immediate(word(90192)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(90194)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x16056: pc = 90204; let e0 = resolve(.memory(Int(long(90200)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x1605c: pc = 90210; let e0 = resolve(.memory(Int(long(90206)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x16062: pc = 90220; let e0 = resolve(.memory(Int(long(90212)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(90216)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x1606c: pc = 90226; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(90222)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x16072: pc = 90232; let e0 = resolve(.memory(Int(long(90228)) & 0xffffff), 4); r[12] = UInt32(truncatingIfNeeded: e0.address)
        case 0x16078: pc = 90238; let e0 = resolve(.offset(12, Int(sign(word(90234), 2))), 4); let value = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(90236), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x1607e: pc = 90244; let e0 = resolve(.offset(12, Int(sign(word(90240), 2))), 4); let value = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(90242), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x16084: pc = 90250; let e0 = resolve(.offset(12, Int(sign(word(90246), 2))), 4); let value = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(90248), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x1608a: pc = 90256; let e0 = resolve(.offset(12, Int(sign(word(90252), 2))), 4); let value = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(90254), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x16090: pc = 90262; let e0 = resolve(.offset(12, Int(sign(word(90258), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(90260), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x16096: pc = 90268; let e0 = resolve(.memory(Int(long(90264)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1609c: pc = 90270; if condition(11) { pc = (90270 + Int(sign(byte(90269), 1))) }
        case 0x1609e: pc = 90274; let e0 = resolve(.offset(12, Int(sign(word(90272), 2))), 2); logic(get(e0, 2), 2)
        case 0x160a2: pc = 90276; if condition(7) { pc = (90276 + Int(sign(byte(90275), 1))) }
        case 0x160a4: pc = 90280; let e0 = resolve(.offset(12, Int(sign(word(90278), 2))), 4); logic(get(e0, 4), 4)
        case 0x160a8: pc = 90282; if condition(7) { pc = (90282 + Int(sign(byte(90281), 1))) }
        case 0x160aa: pc = 90288; let e0 = resolve(.immediate(word(90284)), 2); let source = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(90286), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x160b0: pc = 90290; if condition(4) { pc = (90290 + Int(sign(byte(90289), 1))) }
        case 0x160b2: pc = 90296; let e0 = resolve(.offset(12, Int(sign(word(90292), 2))), 4); let value = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(90294), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x160b4: pc = 90296; let e0 = resolve(.immediate(word(90294)), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination | source; put(e1, value, 2); logic(value, 2)
        case 0x160b8: pc = 90302; let e0 = resolve(.offset(12, Int(sign(word(90298), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(90300), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x160be: pc = 90308; let e0 = resolve(.offset(12, Int(sign(word(90304), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(90306), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x160c4: pc = 90314; let e0 = resolve(.offset(12, Int(sign(word(90310), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(90312), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x160ca: pc = 90320; let e0 = resolve(.offset(12, Int(sign(word(90316), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(90318), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x160d0: pc = 90326; let e0 = resolve(.offset(12, Int(sign(word(90322), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(90324), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x160d2: pc = 90326; let e0 = resolve(.immediate(word(90324)), 1); let source = get(e0, 1); let e1 = resolve(.indirect(14), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x160d6: pc = 90332; let e0 = resolve(.offset(12, Int(sign(word(90328), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(90330), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x160dc: pc = 90338; let e0 = resolve(.memory(Int(long(90334)) & 0xffffff), 4); r[12] = UInt32(truncatingIfNeeded: e0.address)
        case 0x160e2: pc = 90344; let e0 = resolve(.offset(12, Int(sign(word(90340), 2))), 4); let value = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(90342), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x160e8: pc = 90350; let e0 = resolve(.offset(12, Int(sign(word(90346), 2))), 4); let value = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(90348), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x160ee: pc = 90356; let e0 = resolve(.offset(12, Int(sign(word(90352), 2))), 4); let value = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(90354), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x160f4: pc = 90362; let e0 = resolve(.offset(12, Int(sign(word(90358), 2))), 4); let value = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(90360), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x160fa: pc = 90368; let e0 = resolve(.offset(12, Int(sign(word(90364), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(90366), 2))), 2); put(e1, value, 2); logic(value, 2)
        default: fail("Untranslated game address")
        }
    }
}
