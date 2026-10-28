// Generated 68000 game labels $015200–$0152FF.
extension LotusMachine {
    func page152() {
        switch pc {
        case 0x15206: pc = 86536; pc = (86536 + Int(sign(byte(86535), 1)))
        case 0x15208: pc = 86544; let e0 = resolve(.immediate(word(86538)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(86540)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15210: pc = 86546; if condition(6) { pc = (86546 + Int(sign(byte(86545), 1))) }
        case 0x15212: pc = 86554; let e0 = resolve(.immediate(word(86548)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(86550)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1521a: pc = 86560; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(86556)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15220: pc = 86566; let e0 = resolve(.memory(Int(long(86562)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15226: pc = 86568; let e0 = resolve(.reg(0), 2); logic(get(e0, 2), 2)
        case 0x15228: pc = 86570; if condition(7) { pc = (86570 + Int(sign(byte(86569), 1))) }
        case 0x1522a: pc = 86574; let e0 = resolve(.immediate(word(86572)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1522e: pc = 86576; if condition(7) { pc = (86576 + Int(sign(byte(86575), 1))) }
        case 0x15230: pc = 86582; let e0 = resolve(.memory(Int(long(86578)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x15236: pc = 86584; pc = (86584 + Int(sign(byte(86583), 1)))
        case 0x15238: pc = 86590; let e0 = resolve(.memory(Int(long(86586)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1523e: pc = 86592; pc = (86592 + Int(sign(byte(86591), 1)))
        case 0x15240: pc = 86598; let e0 = resolve(.memory(Int(long(86594)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x15246: pc = 86604; let e0 = resolve(.memory(Int(long(86600)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1524c: pc = 86610; let e0 = resolve(.memory(Int(long(86606)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15252: pc = 86612; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15254: pc = 86616; let e0 = resolve(.indexed(9, 0, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15258: pc = 86622; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(86618)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1525e: pc = 86628; let e0 = resolve(.memory(Int(long(86624)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15264: pc = 86630; if condition(11) { pc = (86630 + Int(sign(byte(86629), 1))) }
        case 0x15266: pc = 86634; let e0 = resolve(.reg(8), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(86632), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x1526a: pc = 86640; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(86636)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15270: pc = 86648; let e0 = resolve(.immediate(word(86642)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(86644)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x15278: pc = 86654; let e0 = resolve(.memory(Int(long(86650)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1527e: pc = 86656; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15280: pc = 86660; let e0 = resolve(.immediate(word(86658)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15284: pc = 86662; if condition(6) { pc = (86662 + Int(sign(byte(86661), 1))) }
        case 0x15286: pc = 86664; r[0] = UInt32(bitPattern: sign(byte(86663), 1)); logic(r[0], 4)
        case 0x15288: pc = 86670; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(86666)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1528e: pc = 86674; push(86674); pc = (86672 + Int(sign(word(86672), 2)))
        case 0x15292: pc = 86680; let e0 = resolve(.memory(Int(long(86676)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x15298: pc = 86682; if condition(10) { pc = (86682 + Int(sign(byte(86681), 1))) }
        case 0x1529a: pc = 86686; push(86686); pc = (86684 + Int(sign(word(86684), 2)))
        case 0x1529e: pc = 86692; let e0 = resolve(.memory(Int(long(86688)) & 0xffffff), 4); r[12] = UInt32(truncatingIfNeeded: e0.address)
        case 0x152a4: pc = 86696; push(86696); pc = (86694 + Int(sign(word(86694), 2)))
        case 0x152a8: pc = 86702; let e0 = resolve(.memory(Int(long(86698)) & 0xffffff), 4); r[12] = UInt32(truncatingIfNeeded: e0.address)
        case 0x152ae: pc = 86706; push(86706); pc = (86704 + Int(sign(word(86704), 2)))
        case 0x152b2: pc = 86710; pc = (86708 + Int(sign(word(86708), 2)))
        case 0x152b6: pc = 86716; let e0 = resolve(.memory(Int(long(86712)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x152bc: pc = 86718; if condition(7) { pc = (86718 + Int(sign(byte(86717), 1))) }
        case 0x152be: pc = 86726; let e0 = resolve(.immediate(word(86720)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(86722)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x152c6: pc = 86728; if condition(7) { pc = (86728 + Int(sign(byte(86727), 1))) }
        case 0x152c8: pc = 86734; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(86730)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x152ce: pc = 86742; let e0 = resolve(.immediate(word(86736)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(86738)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x152d6: pc = 86744; if condition(6) { pc = (86744 + Int(sign(byte(86743), 1))) }
        case 0x152d8: pc = 86752; let e0 = resolve(.immediate(word(86746)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(86748)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination ^ source; put(e1, value, 2); logic(value, 2)
        case 0x152e0: pc = 86758; let e0 = resolve(.memory(Int(long(86754)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x152e6: pc = 86762; if condition(6) { pc = (86760 + Int(sign(word(86760), 2))) }
        case 0x152ea: pc = 86766; push(86766); pc = (86764 + Int(sign(word(86764), 2)))
        case 0x152ee: pc = 86774; let e0 = resolve(.immediate(word(86768)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(86770)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x152f6: pc = 86776; if condition(7) { pc = (86776 + Int(sign(byte(86775), 1))) }
        case 0x152f8: pc = 86780; push(86780); pc = (86778 + Int(sign(word(86778), 2)))
        case 0x152fc: pc = 86784; push(86784); pc = (86782 + Int(sign(word(86782), 2)))
        default: fail("Untranslated game address")
        }
    }
}
