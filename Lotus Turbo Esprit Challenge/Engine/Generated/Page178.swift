// Generated 68000 game labels $017800–$0178FF.
extension LotusMachine {
    func page178() {
        switch pc {
        case 0x17800: pc = 96260; let e0 = resolve(.post(13), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(96258), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x17804: pc = 96262; returnInterrupt()
        case 0x17806: pc = 96266; let e0 = resolve(.offset(14, Int(sign(word(96264), 2))), 2); put(e0, 0, 2); logic(0, 2)
        case 0x1780a: pc = 96270; let e0 = resolve(.offset(14, Int(sign(word(96268), 2))), 2); put(e0, 0, 2); logic(0, 2)
        case 0x1780e: pc = 96276; let e0 = resolve(.immediate(word(96272)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(96274), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x17814: pc = 96280; let e0 = resolve(.post(13), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(96278), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x17818: pc = 96282; if condition(11) { pc = (96282 + Int(sign(byte(96281), 1))) }
        case 0x1781a: pc = 96286; let e0 = resolve(.post(13), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(96284), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x1781e: pc = 96290; let e0 = resolve(.post(13), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(96288), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x17822: pc = 96298; let e0 = resolve(.immediate(long(96292)), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(UInt32(bitPattern: sign(word(96296), 2))) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x1782a: pc = 96304; let e0 = resolve(.immediate(word(96300)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(96302), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x17830: pc = 96308; let e0 = resolve(.post(13), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(96306), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x17834: pc = 96310; returnInterrupt()
        case 0x17836: pc = 96314; let e0 = resolve(.post(13), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(96312), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x1783a: pc = 96318; let e0 = resolve(.post(13), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(96316), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x1783e: pc = 96326; let e0 = resolve(.immediate(long(96320)), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(UInt32(bitPattern: sign(word(96324), 2))) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x17846: pc = 96332; let e0 = resolve(.immediate(word(96328)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(96330), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1784c: pc = 96336; let e0 = resolve(.post(13), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(96334), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x17850: pc = 96338; returnInterrupt()
        case 0x17852: pc = 96342; let e0 = resolve(.post(13), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(96340), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x17856: pc = 96346; let e0 = resolve(.post(13), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(96344), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x1785a: pc = 96354; let e0 = resolve(.immediate(long(96348)), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(UInt32(bitPattern: sign(word(96352), 2))) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x17862: pc = 96360; let e0 = resolve(.immediate(word(96356)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(96358), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x17868: pc = 96364; let e0 = resolve(.post(13), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(96362), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1786c: pc = 96366; returnInterrupt()
        case 0x1786e: pc = 96372; let e0 = resolve(.immediate(word(96368)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(96370), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x17874: pc = 96380; let e0 = resolve(.immediate(long(96374)), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(96378), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x1787c: pc = 96384; let e0 = resolve(.post(13), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(96382), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x17880: pc = 96386; if condition(11) { pc = (96386 + Int(sign(byte(96385), 1))) }
        case 0x17882: pc = 96394; let e0 = resolve(.immediate(long(96388)), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(UInt32(bitPattern: sign(word(96392), 2))) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x1788a: pc = 96400; let e0 = resolve(.immediate(word(96396)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(96398), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x17890: pc = 96404; let e0 = resolve(.post(13), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(96402), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x17894: pc = 96406; returnInterrupt()
        case 0x17896: pc = 96410; let e0 = resolve(.post(13), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(96408), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x1789a: pc = 96418; let e0 = resolve(.immediate(long(96412)), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(UInt32(bitPattern: sign(word(96416), 2))) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x178a2: pc = 96424; let e0 = resolve(.immediate(word(96420)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(96422), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x178a8: pc = 96428; let e0 = resolve(.post(13), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(96426), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x178ac: pc = 96430; returnInterrupt()
        case 0x178ae: pc = 96438; let e0 = resolve(.immediate(long(96432)), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(96436), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x178b6: pc = 96442; let e0 = resolve(.post(13), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(96440), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x178ba: pc = 96450; let e0 = resolve(.immediate(long(96444)), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(UInt32(bitPattern: sign(word(96448), 2))) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x178c2: pc = 96456; let e0 = resolve(.immediate(word(96452)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(96454), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x178c8: pc = 96460; let e0 = resolve(.post(13), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(96458), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x178cc: pc = 96462; returnInterrupt()
        case 0x178ce: pc = 96470; let e0 = resolve(.immediate(long(96464)), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(96468), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x178d6: pc = 96472; let e0 = resolve(.post(13), 2); logic(get(e0, 2), 2)
        case 0x178d8: pc = 96476; if condition(7) { pc = (96474 + Int(sign(word(96474), 2))) }
        case 0x178dc: pc = 96482; let e0 = resolve(.immediate(word(96478)), 2); let source = get(e0, 2); let e1 = resolve(.offset(13, Int(sign(word(96480), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x178e2: pc = 96486; if condition(7) { pc = (96484 + Int(sign(word(96484), 2))) }
        case 0x178e6: pc = 96490; let e0 = resolve(.post(13), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(96488), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x178ea: pc = 96494; let e0 = resolve(.post(13), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(96492), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x178ee: pc = 96498; let e0 = resolve(.post(13), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(96496), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x178f2: pc = 96502; let e0 = resolve(.post(13), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(96500), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x178f6: pc = 96506; let e0 = resolve(.post(13), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(96504), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x178fa: pc = 96510; let e0 = resolve(.post(13), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(96508), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x178fe: pc = 96514; let e0 = resolve(.post(13), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(96512), 2))), 4); put(e1, value, 4); logic(value, 4)
        default: fail("Untranslated game address")
        }
    }
}
