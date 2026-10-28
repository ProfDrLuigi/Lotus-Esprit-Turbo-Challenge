// Generated 68000 game labels $012400–$0124FF.
extension LotusMachine {
    func page124() {
        switch pc {
        case 0x12400: pc = 74756; let e0 = resolve(.immediate(word(74754)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x12404: pc = 74760; let e0 = resolve(.immediate(word(74758)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x12408: pc = 74764; let e0 = resolve(.immediate(word(74762)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x1240c: pc = 74768; let e0 = resolve(.immediate(word(74766)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x12410: pc = 74772; let e0 = resolve(.immediate(word(74770)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x12414: pc = 74776; let e0 = resolve(.immediate(word(74774)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x12418: pc = 74780; let e0 = resolve(.immediate(word(74778)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x1241c: pc = 74784; let e0 = resolve(.immediate(word(74782)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x12420: pc = 74788; let e0 = resolve(.immediate(word(74786)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x12424: pc = 74792; let e0 = resolve(.immediate(word(74790)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x12428: pc = 74796; let e0 = resolve(.immediate(word(74794)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x1242c: pc = 74800; let e0 = resolve(.immediate(word(74798)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x12430: pc = 74802; pc = Int(pop())
        case 0x12432: pc = 74808; let e0 = resolve(.memory(Int(long(74804)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x12438: pc = 74810; let e0 = resolve(.immediate(2), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 0); put(e1, value, 2)
        case 0x1243a: pc = 74814; let e0 = resolve(.immediate(word(74812)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x1243e: pc = 74816; if condition(11) { pc = (74816 + Int(sign(byte(74815), 1))) }
        case 0x12440: pc = 74820; let e0 = resolve(.immediate(word(74818)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x12444: pc = 74822; if condition(4) { pc = (74822 + Int(sign(byte(74821), 1))) }
        case 0x12446: pc = 74828; let e0 = resolve(.memory(Int(long(74824)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1244c: pc = 74832; let e0 = resolve(.indexed(8, 0, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x12450: pc = 74834; if condition(11) { pc = (74834 + Int(sign(byte(74833), 1))) }
        case 0x12452: pc = 74840; let e0 = resolve(.memory(Int(long(74836)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12458: pc = 74844; let e0 = resolve(.immediate(word(74842)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1245c: pc = 74846; if condition(5) { pc = (74846 + Int(sign(byte(74845), 1))) }
        case 0x1245e: pc = 74852; let e0 = resolve(.memory(Int(long(74848)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12464: pc = 74858; let e0 = resolve(.memory(Int(long(74854)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1246a: pc = 74860; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x1246c: pc = 74862; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ UInt32(bitPattern: sign(source, 2))
        case 0x1246e: pc = 74864; r[7] = UInt32(bitPattern: sign(byte(74863), 1)); logic(r[7], 4)
        case 0x12470: pc = 74866; let e0 = resolve(.indirect(9), 2); let value = get(e0, 2); let e1 = resolve(.indirect(8), 2); put(e1, value, 2); logic(value, 2)
        case 0x12472: pc = 74872; let e0 = resolve(.offset(9, Int(sign(word(74868), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(74870), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x12478: pc = 74878; let e0 = resolve(.offset(9, Int(sign(word(74874), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(74876), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1247e: pc = 74884; let e0 = resolve(.offset(9, Int(sign(word(74880), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(74882), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x12484: pc = 74890; let e0 = resolve(.offset(9, Int(sign(word(74886), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(74888), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1248a: pc = 74894; let e0 = resolve(.immediate(word(74892)), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ UInt32(bitPattern: sign(source, 2))
        case 0x1248e: pc = 74898; let e0 = resolve(.immediate(word(74896)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x12492: pc = 74902; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (74900 + Int(sign(word(74900), 2))) } }
        case 0x12496: pc = 74910; let e0 = resolve(.immediate(word(74904)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(74906)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1249e: pc = 74912; if condition(6) { pc = (74912 + Int(sign(byte(74911), 1))) }
        case 0x124a0: pc = 74920; let e0 = resolve(.immediate(long(74914)), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(74918), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x124a8: pc = 74928; let e0 = resolve(.immediate(long(74922)), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(74926), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x124b0: pc = 74936; let e0 = resolve(.immediate(long(74930)), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(74934), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x124b8: pc = 74944; let e0 = resolve(.immediate(long(74938)), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(74942), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x124c0: pc = 74950; let e0 = resolve(.immediate(word(74946)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(74948), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x124c6: pc = 74956; let e0 = resolve(.immediate(word(74952)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(74954), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x124cc: pc = 74962; let e0 = resolve(.immediate(word(74958)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(74960), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x124d2: pc = 74968; let e0 = resolve(.immediate(word(74964)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(74966), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x124d8: pc = 74974; let e0 = resolve(.immediate(word(74970)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(74972), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x124de: pc = 74980; let e0 = resolve(.immediate(word(74976)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(74978), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x124e4: pc = 74986; let e0 = resolve(.immediate(word(74982)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(74984), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x124ea: pc = 74992; let e0 = resolve(.immediate(word(74988)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(74990), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x124f0: pc = 74998; let e0 = resolve(.immediate(word(74994)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(74996), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x124f6: pc = 75004; let e0 = resolve(.immediate(word(75000)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(75002), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x124fc: pc = 75010; let e0 = resolve(.immediate(word(75006)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(75008), 2))), 2); put(e1, value, 2); logic(value, 2)
        default: fail("Untranslated game address")
        }
    }
}
