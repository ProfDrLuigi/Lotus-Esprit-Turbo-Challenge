// Generated 68000 game labels $010500–$0105FF.
extension LotusMachine {
    func page105() {
        switch pc {
        case 0x10500: pc = 66822; let e0 = resolve(.offset(8, Int(sign(word(66818), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(66820), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x10506: pc = 66828; let e0 = resolve(.offset(8, Int(sign(word(66824), 2))), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(66826), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x1050c: pc = 66834; let e0 = resolve(.offset(8, Int(sign(word(66830), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(66832), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x10512: pc = 66838; let e0 = resolve(.offset(14, Int(sign(word(66836), 2))), 4); logic(get(e0, 4), 4)
        case 0x10516: pc = 66840; if condition(7) { pc = (66840 + Int(sign(byte(66839), 1))) }
        case 0x10518: pc = 66846; let e0 = resolve(.offset(8, Int(sign(word(66842), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(66844), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1051e: pc = 66850; let e0 = resolve(.offset(14, Int(sign(word(66848), 2))), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x10522: pc = 66854; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(66852), 2))), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x10526: pc = 66858; let e0 = resolve(.offset(14, Int(sign(word(66856), 2))), 2); logic(get(e0, 2), 2)
        case 0x1052a: pc = 66860; if condition(7) { pc = (66860 + Int(sign(byte(66859), 1))) }
        case 0x1052c: pc = 66868; let e0 = resolve(.offset(14, Int(sign(word(66862), 2))), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(66864)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10534: pc = 66874; let e0 = resolve(.offset(14, Int(sign(word(66870), 2))), 4); let value = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(66872), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x1053a: pc = 66880; let e0 = resolve(.offset(14, Int(sign(word(66876), 2))), 4); let value = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(66878), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x10540: pc = 66886; let e0 = resolve(.offset(14, Int(sign(word(66882), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(66884), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x10546: pc = 66892; let e0 = resolve(.offset(14, Int(sign(word(66888), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(66890), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1054c: pc = 66896; let e0 = resolve(.offset(14, Int(sign(word(66894), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x10550: pc = 66900; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.offset(10, Int(sign(word(66898), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination | source; put(e1, value, 2); logic(value, 2)
        case 0x10554: pc = 66904; let e0 = resolve(.offset(14, Int(sign(word(66902), 2))), 4); r[12] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x10558: pc = 66908; let e0 = resolve(.offset(14, Int(sign(word(66906), 2))), 1); let value = get(e0, 1); let e1 = resolve(.reg(2), 1); put(e1, value, 1); logic(value, 1)
        case 0x1055c: pc = 66910; r[0] = UInt32(bitPattern: sign(byte(66909), 1)); logic(r[0], 4)
        case 0x1055e: pc = 66914; let e0 = resolve(.offset(14, Int(sign(word(66912), 2))), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x10562: pc = 66918; let e0 = resolve(.immediate(word(66916)), 1); let source = get(e0, 1); let e1 = resolve(.reg(2), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x10566: pc = 66920; if condition(3) { pc = (66920 + Int(sign(byte(66919), 1))) }
        case 0x10568: pc = 66924; if condition(7) { pc = (66922 + Int(sign(word(66922), 2))) }
        case 0x1056c: pc = 66928; let e0 = resolve(.immediate(word(66926)), 1); let source = get(e0, 1); let e1 = resolve(.reg(2), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x10570: pc = 66932; if condition(7) { pc = (66930 + Int(sign(word(66930), 2))) }
        case 0x10574: pc = 66936; let e0 = resolve(.immediate(word(66934)), 1); let source = get(e0, 1); let e1 = resolve(.reg(2), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x10578: pc = 66940; if condition(7) { pc = (66938 + Int(sign(word(66938), 2))) }
        case 0x1057c: pc = 66944; let e0 = resolve(.immediate(word(66942)), 1); let source = get(e0, 1); let e1 = resolve(.reg(2), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x10580: pc = 66948; if condition(7) { pc = (66946 + Int(sign(word(66946), 2))) }
        case 0x10584: pc = 66952; let e0 = resolve(.immediate(word(66950)), 1); let source = get(e0, 1); let e1 = resolve(.reg(2), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x10588: pc = 66956; if condition(7) { pc = (66954 + Int(sign(word(66954), 2))) }
        case 0x1058c: pc = 66960; let e0 = resolve(.immediate(word(66958)), 1); let source = get(e0, 1); let e1 = resolve(.reg(2), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x10590: pc = 66964; if condition(7) { pc = (66962 + Int(sign(word(66962), 2))) }
        case 0x10594: pc = 66966; pc = Int(pop())
        case 0x10596: pc = 66970; let e0 = resolve(.offset(14, Int(sign(word(66968), 2))), 4); r[12] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x1059a: pc = 66974; let e0 = resolve(.offset(14, Int(sign(word(66972), 2))), 1); let value = get(e0, 1); let e1 = resolve(.reg(2), 1); put(e1, value, 1); logic(value, 1)
        case 0x1059e: pc = 66976; r[0] = UInt32(bitPattern: sign(byte(66975), 1)); logic(r[0], 4)
        case 0x105a0: pc = 66980; let e0 = resolve(.offset(14, Int(sign(word(66978), 2))), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x105a4: pc = 66982; let e0 = resolve(.reg(2), 1); logic(get(e0, 1), 1)
        case 0x105a6: pc = 66986; if condition(7) { pc = (66984 + Int(sign(word(66984), 2))) }
        case 0x105aa: pc = 66990; let e0 = resolve(.immediate(word(66988)), 1); let source = get(e0, 1); let e1 = resolve(.reg(2), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x105ae: pc = 66994; if condition(7) { pc = (66992 + Int(sign(word(66992), 2))) }
        case 0x105b2: pc = 66996; if condition(14) { pc = (66996 + Int(sign(byte(66995), 1))) }
        case 0x105b4: pc = 67000; let e0 = resolve(.immediate(word(66998)), 1); let source = get(e0, 1); let e1 = resolve(.reg(2), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x105b8: pc = 67004; if condition(7) { pc = (67002 + Int(sign(word(67002), 2))) }
        case 0x105bc: pc = 67008; let e0 = resolve(.immediate(word(67006)), 1); let source = get(e0, 1); let e1 = resolve(.reg(2), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x105c0: pc = 67012; if condition(7) { pc = (67010 + Int(sign(word(67010), 2))) }
        case 0x105c4: pc = 67016; let e0 = resolve(.immediate(word(67014)), 1); let source = get(e0, 1); let e1 = resolve(.reg(2), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x105c8: pc = 67020; if condition(7) { pc = (67018 + Int(sign(word(67018), 2))) }
        case 0x105cc: pc = 67024; let e0 = resolve(.immediate(word(67022)), 1); let source = get(e0, 1); let e1 = resolve(.reg(2), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x105d0: pc = 67028; if condition(7) { pc = (67026 + Int(sign(word(67026), 2))) }
        case 0x105d4: pc = 67030; pc = Int(pop())
        case 0x105d6: pc = 67034; let e0 = resolve(.memory(67872), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x105da: pc = 67038; let e0 = resolve(.offset(10, Int(sign(word(67036), 2))), 1); logic(get(e0, 1), 1)
        case 0x105de: pc = 67040; if condition(7) { pc = (67040 + Int(sign(byte(67039), 1))) }
        case 0x105e0: pc = 67046; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(67042)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x105e6: pc = 67048; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x105e8: pc = 67054; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(67050)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x105ee: pc = 67060; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(67056)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x105f4: pc = 67062; r[1] = (r[1] << 16) | (r[1] >> 16); logic(r[1], 4)
        case 0x105f6: pc = 67068; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(67064)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x105fc: pc = 67070; pc = Int(pop())
        case 0x105fe: pc = 67074; let e0 = resolve(.memory(67872), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        default: fail("Untranslated game address")
        }
    }
}
