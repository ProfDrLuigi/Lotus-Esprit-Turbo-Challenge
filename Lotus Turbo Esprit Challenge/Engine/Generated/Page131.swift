// Generated 68000 game labels $013100–$0131FF.
extension LotusMachine {
    func page131() {
        switch pc {
        case 0x13100: pc = 78084; push(78084); pc = (78082 + Int(sign(word(78082), 2)))
        case 0x13104: pc = 78090; let e0 = resolve(.memory(Int(long(78086)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1310a: pc = 78092; let e0 = resolve(.immediate(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1310c: pc = 78096; let e0 = resolve(.immediate(word(78094)), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x13110: pc = 78100; push(78100); pc = (78098 + Int(sign(word(78098), 2)))
        case 0x13114: pc = 78102; pc = Int(pop())
        case 0x13116: pc = 78108; let e0 = resolve(.memory(Int(long(78104)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1311c: pc = 78112; let e0 = resolve(.immediate(word(78110)), 2); let source = get(e0, 2); r[0] = (r[0] & 65535) &* source; logic(r[0], 4)
        case 0x13120: pc = 78114; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x13122: pc = 78120; let e0 = resolve(.memory(Int(long(78116)) & 0xffffff), 4); r[9] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x13128: pc = 78124; let e0 = resolve(.immediate(word(78122)), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ UInt32(bitPattern: sign(source, 2))
        case 0x1312c: pc = 78126; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ UInt32(bitPattern: sign(source, 2))
        case 0x1312e: pc = 78130; let e0 = resolve(.immediate(word(78128)), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x13132: pc = 78134; let e0 = resolve(.immediate(word(78132)), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x13136: pc = 78136; let e0 = resolve(.post(8), 1); let value = get(e0, 1); let e1 = resolve(.indirect(9), 1); put(e1, value, 1); logic(value, 1)
        case 0x13138: pc = 78140; let e0 = resolve(.post(8), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(78138), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x1313c: pc = 78144; let e0 = resolve(.post(8), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(78142), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x13140: pc = 78148; let e0 = resolve(.post(8), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(78146), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x13144: pc = 78152; let e0 = resolve(.immediate(word(78150)), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ UInt32(bitPattern: sign(source, 2))
        case 0x13148: pc = 78156; if !condition(1) {     setRegister(6, r[6] &- 1, 2);     if r[6] & 65535 != 65535 { pc = (78154 + Int(sign(word(78154), 2))) } }
        case 0x1314c: pc = 78160; let e0 = resolve(.immediate(word(78158)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x13150: pc = 78164; let e0 = resolve(.immediate(word(78162)), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ UInt32(bitPattern: sign(source, 2))
        case 0x13154: pc = 78168; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (78166 + Int(sign(word(78166), 2))) } }
        case 0x13158: pc = 78170; pc = Int(pop())
        case 0x1315a: pc = 78174; push(78174); pc = (78172 + Int(sign(word(78172), 2)))
        case 0x1315e: pc = 78182; let e0 = resolve(.immediate(word(78176)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.memory(Int(long(78178)) & 0xffffff), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x13166: pc = 78184; if condition(7) { pc = (78184 + Int(sign(byte(78183), 1))) }
        case 0x13168: pc = 78190; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(78186)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x1316e: pc = 78198; let e0 = resolve(.immediate(word(78192)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(78194)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x13176: pc = 78200; if condition(6) { pc = (78200 + Int(sign(byte(78199), 1))) }
        case 0x13178: pc = 78208; let e0 = resolve(.immediate(word(78202)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(78204)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x13180: pc = 78216; let e0 = resolve(.immediate(word(78210)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.memory(Int(long(78212)) & 0xffffff), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x13188: pc = 78218; if condition(7) { pc = (78218 + Int(sign(byte(78217), 1))) }
        case 0x1318a: pc = 78224; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(78220)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x13190: pc = 78232; let e0 = resolve(.immediate(word(78226)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(78228)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x13198: pc = 78234; if condition(6) { pc = (78234 + Int(sign(byte(78233), 1))) }
        case 0x1319a: pc = 78240; let e0 = resolve(.memory(Int(long(78236)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x131a0: pc = 78244; push(78244); pc = (78242 + Int(sign(word(78242), 2)))
        case 0x131a4: pc = 78252; let e0 = resolve(.immediate(word(78246)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(78248)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x131ac: pc = 78254; if condition(6) { pc = (78254 + Int(sign(byte(78253), 1))) }
        case 0x131ae: pc = 78262; let e0 = resolve(.immediate(word(78256)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.memory(Int(long(78258)) & 0xffffff), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x131b6: pc = 78264; if condition(7) { pc = (78264 + Int(sign(byte(78263), 1))) }
        case 0x131b8: pc = 78272; let e0 = resolve(.immediate(word(78266)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(78268)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x131c0: pc = 78274; pc = Int(pop())
        case 0x131c2: pc = 78280; let e0 = resolve(.memory(Int(long(78276)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x131c8: pc = 78282; if condition(7) { pc = (78282 + Int(sign(byte(78281), 1))) }
        case 0x131ca: pc = 78290; let e0 = resolve(.immediate(word(78284)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(78286)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x131d2: pc = 78292; if condition(7) { pc = (78292 + Int(sign(byte(78291), 1))) }
        case 0x131d4: pc = 78300; let e0 = resolve(.immediate(word(78294)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(78296)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x131dc: pc = 78304; if condition(7) { pc = (78302 + Int(sign(word(78302), 2))) }
        case 0x131e0: pc = 78312; let e0 = resolve(.immediate(word(78306)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(78308)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x131e8: pc = 78316; if condition(7) { pc = (78314 + Int(sign(word(78314), 2))) }
        case 0x131ec: pc = 78324; let e0 = resolve(.immediate(word(78318)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(78320)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x131f4: pc = 78328; if condition(7) { pc = (78326 + Int(sign(word(78326), 2))) }
        case 0x131f8: pc = 78336; let e0 = resolve(.immediate(word(78330)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(78332)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        default: fail("Untranslated game address")
        }
    }
}
