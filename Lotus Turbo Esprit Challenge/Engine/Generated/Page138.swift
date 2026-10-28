// Generated 68000 game labels $013800–$0138FF.
extension LotusMachine {
    func page138() {
        switch pc {
        case 0x13800: pc = 79874; if condition(5) { pc = (79874 + Int(sign(byte(79873), 1))) }
        case 0x13802: pc = 79876; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x13804: pc = 79878; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x13806: pc = 79880; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x13808: pc = 79884; let e0 = resolve(.immediate(word(79882)), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1380c: pc = 79886; if condition(6) { pc = (79886 + Int(sign(byte(79885), 1))) }
        case 0x1380e: pc = 79888; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x13810: pc = 79890; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x13812: pc = 79892; let e0 = resolve(.immediate(5), 4); let count = get(e0, 4); let e1 = resolve(.reg(1), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x13814: pc = 79894; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x13816: pc = 79898; if !condition(1) {     setRegister(4, r[4] &- 1, 2);     if r[4] & 65535 != 65535 { pc = (79896 + Int(sign(word(79896), 2))) } }
        case 0x1381a: pc = 79900; pc = Int(pop())
        case 0x1381c: pc = 79902; r[5] = UInt32(bitPattern: sign(byte(79901), 1)); logic(r[5], 4)
        case 0x1381e: pc = 79904; r[7] = UInt32(bitPattern: sign(byte(79903), 1)); logic(r[7], 4)
        case 0x13820: pc = 79912; let e0 = resolve(.immediate(word(79906)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(79908)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x13828: pc = 79920; let e0 = resolve(.immediate(word(79914)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(79916)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x13830: pc = 79926; let e0 = resolve(.memory(Int(long(79922)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13836: pc = 79932; let e0 = resolve(.memory(Int(long(79928)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1383c: pc = 79938; let e0 = resolve(.memory(Int(long(79934)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13842: pc = 79944; let e0 = resolve(.memory(Int(long(79940)) & 0xffffff), 4); r[12] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13848: pc = 79950; let e0 = resolve(.memory(Int(long(79946)) & 0xffffff), 4); r[13] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1384e: pc = 79952; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x13850: pc = 79954; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x13852: pc = 79956; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x13854: pc = 79960; let e0 = resolve(.indexed(12, 2, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x13858: pc = 79964; let e0 = resolve(.immediate(word(79962)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1385c: pc = 79966; if condition(6) { pc = (79966 + Int(sign(byte(79965), 1))) }
        case 0x1385e: pc = 79972; let e0 = resolve(.reg(5), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(79968)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x13864: pc = 79978; let e0 = resolve(.memory(Int(long(79974)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1386a: pc = 79980; if condition(7) { pc = (79980 + Int(sign(byte(79979), 1))) }
        case 0x1386c: pc = 79984; let e0 = resolve(.immediate(word(79982)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x13870: pc = 79986; if condition(6) { pc = (79986 + Int(sign(byte(79985), 1))) }
        case 0x13872: pc = 79992; let e0 = resolve(.reg(5), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(79988)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x13878: pc = 79996; let e0 = resolve(.immediate(word(79994)), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1387c: pc = 79998; if condition(5) { pc = (79998 + Int(sign(byte(79997), 1))) }
        case 0x1387e: pc = 80002; let e0 = resolve(.immediate(word(80000)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x13882: pc = 80004; if condition(7) { pc = (80004 + Int(sign(byte(80003), 1))) }
        case 0x13884: pc = 80010; let e0 = resolve(.memory(Int(long(80006)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1388a: pc = 80012; if condition(7) { pc = (80012 + Int(sign(byte(80011), 1))) }
        case 0x1388c: pc = 80016; let e0 = resolve(.immediate(word(80014)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x13890: pc = 80018; if condition(7) { pc = (80018 + Int(sign(byte(80017), 1))) }
        case 0x13892: pc = 80022; pc = (80020 + Int(sign(word(80020), 2)))
        case 0x13896: pc = 80024; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x13898: pc = 80028; let e0 = resolve(.immediate(word(80026)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x1389c: pc = 80030; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1389e: pc = 80034; let e0 = resolve(.immediate(word(80032)), 1); let value = get(e0, 1); let e1 = resolve(.indirect(10), 1); put(e1, value, 1); logic(value, 1)
        case 0x138a2: pc = 80040; let e0 = resolve(.indexed(13, 1, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(80038), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x138a8: pc = 80046; let e0 = resolve(.indexed(13, 1, false, 1), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(80044), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x138ae: pc = 80050; let e0 = resolve(.immediate(word(80048)), 2); let source = get(e0, 2); r[0] = (r[0] & 65535) &* source; logic(r[0], 4)
        case 0x138b2: pc = 80056; let e0 = resolve(.indexed(9, 0, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(80054), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x138b8: pc = 80062; let e0 = resolve(.indexed(9, 0, false, 1), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(80060), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x138be: pc = 80068; let e0 = resolve(.indexed(9, 0, false, 2), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(80066), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x138c4: pc = 80074; let e0 = resolve(.indexed(9, 0, false, 3), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(80072), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x138ca: pc = 80080; let e0 = resolve(.indexed(9, 0, false, 4), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(80078), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x138d0: pc = 80086; let e0 = resolve(.indexed(9, 0, false, 5), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(80084), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x138d6: pc = 80092; let e0 = resolve(.indexed(9, 0, false, 6), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(80090), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x138dc: pc = 80098; let e0 = resolve(.indexed(9, 0, false, 7), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(80096), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x138e2: pc = 80104; let e0 = resolve(.indexed(9, 0, false, 8), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(80102), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x138e8: pc = 80110; let e0 = resolve(.indexed(9, 0, false, 9), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(80108), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x138ee: pc = 80116; let e0 = resolve(.indexed(9, 0, false, 10), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(80114), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x138f4: pc = 80122; let e0 = resolve(.indexed(9, 0, false, 11), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(80120), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x138fa: pc = 80128; let e0 = resolve(.indexed(9, 0, false, 12), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(80126), 2))), 1); put(e1, value, 1); logic(value, 1)
        default: fail("Untranslated game address")
        }
    }
}
