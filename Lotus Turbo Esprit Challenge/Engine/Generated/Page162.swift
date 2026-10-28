// Generated 68000 game labels $016200–$0162FF.
extension LotusMachine {
    func page162() {
        switch pc {
        case 0x16200: pc = 90628; let e0 = resolve(.immediate(word(90626)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x16204: pc = 90632; if !condition(1) {     setRegister(0, r[0] &- 1, 2);     if r[0] & 65535 != 65535 { pc = (90630 + Int(sign(word(90630), 2))) } }
        case 0x16208: pc = 90638; let e0 = resolve(.memory(Int(long(90634)) & 0xffffff), 4); r[12] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1620e: pc = 90644; let e0 = resolve(.offset(12, Int(sign(word(90640), 2))), 4); let value = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(90642), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x16214: pc = 90650; let e0 = resolve(.offset(12, Int(sign(word(90646), 2))), 4); let value = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(90648), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x1621a: pc = 90656; let e0 = resolve(.offset(12, Int(sign(word(90652), 2))), 4); let value = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(90654), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x16220: pc = 90662; let e0 = resolve(.offset(12, Int(sign(word(90658), 2))), 4); let value = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(90660), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x16226: pc = 90668; let e0 = resolve(.offset(12, Int(sign(word(90664), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(90666), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1622c: pc = 90674; let e0 = resolve(.memory(Int(long(90670)) & 0xffffff), 4); r[12] = UInt32(truncatingIfNeeded: e0.address)
        case 0x16232: pc = 90680; let e0 = resolve(.offset(12, Int(sign(word(90676), 2))), 4); let value = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(90678), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x16238: pc = 90686; let e0 = resolve(.offset(12, Int(sign(word(90682), 2))), 4); let value = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(90684), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x1623e: pc = 90692; let e0 = resolve(.offset(12, Int(sign(word(90688), 2))), 4); let value = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(90690), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x16244: pc = 90698; let e0 = resolve(.offset(12, Int(sign(word(90694), 2))), 4); let value = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(90696), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x1624a: pc = 90704; let e0 = resolve(.offset(12, Int(sign(word(90700), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(90702), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x16250: pc = 90712; let e0 = resolve(.immediate(word(90706)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(90708)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x16258: pc = 90718; let e0 = resolve(.memory(Int(long(90714)) & 0xffffff), 4); r[13] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x1625e: pc = 90724; let e0 = resolve(.memory(Int(long(90720)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x16264: pc = 90732; let e0 = resolve(.immediate(long(90726)), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(UInt32(bitPattern: sign(word(90730), 2))) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x1626c: pc = 90738; let e0 = resolve(.immediate(word(90734)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(90736), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x16272: pc = 90744; let e0 = resolve(.immediate(word(90740)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(90742), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x16278: pc = 90750; let e0 = resolve(.immediate(word(90746)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(90748), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1627e: pc = 90756; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(90752)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16284: pc = 90762; let e0 = resolve(.memory(Int(long(90758)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1628a: pc = 90764; if condition(6) { pc = (90764 + Int(sign(byte(90763), 1))) }
        case 0x1628c: pc = 90768; push(90768); pc = (90766 + Int(sign(word(90766), 2)))
        case 0x16290: pc = 90772; push(90772); pc = (90770 + Int(sign(word(90770), 2)))
        case 0x16294: pc = 90776; push(90776); pc = (90774 + Int(sign(word(90774), 2)))
        case 0x16298: pc = 90780; push(90780); pc = (90778 + Int(sign(word(90778), 2)))
        case 0x1629c: pc = 90784; push(90784); pc = (90782 + Int(sign(word(90782), 2)))
        case 0x162a0: pc = 90790; let e0 = resolve(.memory(Int(long(90786)) & 0xffffff), 4); r[12] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x162a6: pc = 90794; push(90794); pc = (90792 + Int(sign(word(90792), 2)))
        case 0x162aa: pc = 90798; push(90798); pc = (90796 + Int(sign(word(90796), 2)))
        case 0x162ae: pc = 90800; let e0 = resolve(.post(12), 2); put(e0, 0, 2); logic(0, 2)
        case 0x162b0: pc = 90802; let e0 = resolve(.reg(12), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x162b2: pc = 90806; push(90806); pc = (90804 + Int(sign(word(90804), 2)))
        case 0x162b6: pc = 90812; let e0 = resolve(.memory(Int(long(90808)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x162bc: pc = 90814; if condition(7) { pc = (90814 + Int(sign(byte(90813), 1))) }
        case 0x162be: pc = 90820; let e0 = resolve(.memory(Int(long(90816)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x162c4: pc = 90822; if condition(6) { pc = (90822 + Int(sign(byte(90821), 1))) }
        case 0x162c6: pc = 90826; push(90826); pc = (90824 + Int(sign(word(90824), 2)))
        case 0x162ca: pc = 90830; push(90830); pc = (90828 + Int(sign(word(90828), 2)))
        case 0x162ce: pc = 90834; push(90834); pc = (90832 + Int(sign(word(90832), 2)))
        case 0x162d2: pc = 90838; push(90838); pc = (90836 + Int(sign(word(90836), 2)))
        case 0x162d6: pc = 90842; push(90842); pc = (90840 + Int(sign(word(90840), 2)))
        case 0x162da: pc = 90844; let e0 = resolve(.post(15), 4); r[12] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x162dc: pc = 90848; push(90848); pc = (90846 + Int(sign(word(90846), 2)))
        case 0x162e0: pc = 90854; let e0 = resolve(.memory(Int(long(90850)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x162e6: pc = 90856; if condition(7) { pc = (90856 + Int(sign(byte(90855), 1))) }
        case 0x162e8: pc = 90860; push(90860); pc = (90858 + Int(sign(word(90858), 2)))
        case 0x162ec: pc = 90862; let e0 = resolve(.post(12), 2); put(e0, 0, 2); logic(0, 2)
        case 0x162ee: pc = 90866; push(90866); pc = (90864 + Int(sign(word(90864), 2)))
        case 0x162f2: pc = 90872; let e0 = resolve(.memory(Int(long(90868)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x162f8: pc = 90874; if condition(7) { pc = (90874 + Int(sign(byte(90873), 1))) }
        case 0x162fa: pc = 90878; pc = (90876 + Int(sign(word(90876), 2)))
        case 0x162fe: pc = 90884; let e0 = resolve(.memory(Int(long(90880)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        default: fail("Untranslated game address")
        }
    }
}
