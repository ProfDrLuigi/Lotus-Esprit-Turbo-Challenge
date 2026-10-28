// Generated 68000 game labels $013900–$0139FF.
extension LotusMachine {
    func page139() {
        switch pc {
        case 0x13900: pc = 80134; let e0 = resolve(.indexed(9, 0, false, 13), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(80132), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x13906: pc = 80140; let e0 = resolve(.indexed(9, 0, false, 14), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(80138), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x1390c: pc = 80146; let e0 = resolve(.indexed(9, 0, false, 15), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(80144), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x13912: pc = 80152; let e0 = resolve(.indexed(9, 0, false, 16), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(80150), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x13918: pc = 80158; let e0 = resolve(.indexed(9, 0, false, 17), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(80156), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x1391e: pc = 80164; let e0 = resolve(.indexed(9, 0, false, 18), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(80162), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x13924: pc = 80170; let e0 = resolve(.indexed(9, 0, false, 19), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(80168), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x1392a: pc = 80172; push(80172); pc = (80172 + Int(sign(byte(80171), 1)))
        case 0x1392c: pc = 80176; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(80174), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x13930: pc = 80180; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(80178), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x13934: pc = 80184; let e0 = resolve(.reg(2), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(80182), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x13938: pc = 80188; let e0 = resolve(.immediate(word(80186)), 2); let source = get(e0, 2); let e1 = resolve(.reg(10), 2); let destination = get(e1, 2); _ = source; _ = destination; r[10] = r[10] &+ UInt32(bitPattern: sign(source, 2))
        case 0x1393c: pc = 80190; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(5), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1393e: pc = 80192; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x13940: pc = 80196; let e0 = resolve(.immediate(word(80194)), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x13944: pc = 80200; if condition(6) { pc = (80198 + Int(sign(word(80198), 2))) }
        case 0x13948: pc = 80204; let e0 = resolve(.immediate(word(80202)), 1); let value = get(e0, 1); let e1 = resolve(.indirect(10), 1); put(e1, value, 1); logic(value, 1)
        case 0x1394c: pc = 80206; r[0] = UInt32(bitPattern: sign(byte(80205), 1)); logic(r[0], 4)
        case 0x1394e: pc = 80212; let e0 = resolve(.memory(Int(long(80208)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x13954: pc = 80214; if condition(6) { pc = (80214 + Int(sign(byte(80213), 1))) }
        case 0x13956: pc = 80216; r[0] = UInt32(bitPattern: sign(byte(80215), 1)); logic(r[0], 4)
        case 0x13958: pc = 80222; let e0 = resolve(.memory(Int(long(80218)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1395e: pc = 80224; if condition(7) { pc = (80224 + Int(sign(byte(80223), 1))) }
        case 0x13960: pc = 80230; let e0 = resolve(.memory(Int(long(80226)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x13966: pc = 80232; if condition(6) { pc = (80232 + Int(sign(byte(80231), 1))) }
        case 0x13968: pc = 80234; r[0] = UInt32(bitPattern: sign(byte(80233), 1)); logic(r[0], 4)
        case 0x1396a: pc = 80240; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(80236)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x13970: pc = 80246; let e0 = resolve(.memory(Int(long(80242)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x13976: pc = 80248; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x13978: pc = 80254; let e0 = resolve(.memory(Int(long(80250)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1397e: pc = 80256; if condition(6) { pc = (80256 + Int(sign(byte(80255), 1))) }
        case 0x13980: pc = 80262; let e0 = resolve(.memory(Int(long(80258)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13986: pc = 80264; pc = (80264 + Int(sign(byte(80263), 1)))
        case 0x13988: pc = 80270; let e0 = resolve(.memory(Int(long(80266)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1398e: pc = 80276; let e0 = resolve(.memory(Int(long(80272)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13994: pc = 80278; r[7] = UInt32(bitPattern: sign(byte(80277), 1)); logic(r[7], 4)
        case 0x13996: pc = 80280; let e0 = resolve(.post(8), 1); let value = get(e0, 1); let e1 = resolve(.post(9), 1); put(e1, value, 1); logic(value, 1)
        case 0x13998: pc = 80284; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (80282 + Int(sign(word(80282), 2))) } }
        case 0x1399c: pc = 80286; pc = Int(pop())
        case 0x1399e: pc = 80288; r[0] = UInt32(bitPattern: sign(byte(80287), 1)); logic(r[0], 4)
        case 0x139a0: pc = 80290; r[1] = UInt32(bitPattern: sign(byte(80289), 1)); logic(r[1], 4)
        case 0x139a2: pc = 80292; r[2] = UInt32(bitPattern: sign(byte(80291), 1)); logic(r[2], 4)
        case 0x139a4: pc = 80296; let e0 = resolve(.immediate(word(80294)), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x139a8: pc = 80298; if condition(5) { pc = (80298 + Int(sign(byte(80297), 1))) }
        case 0x139aa: pc = 80302; let e0 = resolve(.immediate(word(80300)), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x139ae: pc = 80304; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x139b0: pc = 80306; pc = (80306 + Int(sign(byte(80305), 1)))
        case 0x139b2: pc = 80310; let e0 = resolve(.immediate(word(80308)), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x139b6: pc = 80312; if condition(5) { pc = (80312 + Int(sign(byte(80311), 1))) }
        case 0x139b8: pc = 80316; let e0 = resolve(.immediate(word(80314)), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x139bc: pc = 80318; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x139be: pc = 80320; pc = (80320 + Int(sign(byte(80319), 1)))
        case 0x139c0: pc = 80322; let e0 = resolve(.reg(4), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x139c2: pc = 80326; let e0 = resolve(.immediate(word(80324)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = add(destination, source, 1); put(e1, value, 1)
        case 0x139c6: pc = 80330; let e0 = resolve(.immediate(word(80328)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = add(destination, source, 1); put(e1, value, 1)
        case 0x139ca: pc = 80334; let e0 = resolve(.immediate(word(80332)), 1); let source = get(e0, 1); let e1 = resolve(.reg(2), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = add(destination, source, 1); put(e1, value, 1)
        case 0x139ce: pc = 80338; let e0 = resolve(.immediate(word(80336)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x139d2: pc = 80340; if condition(6) { pc = (80340 + Int(sign(byte(80339), 1))) }
        case 0x139d4: pc = 80344; let e0 = resolve(.immediate(word(80342)), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x139d8: pc = 80348; let e0 = resolve(.immediate(word(80346)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x139dc: pc = 80350; if condition(6) { pc = (80350 + Int(sign(byte(80349), 1))) }
        case 0x139de: pc = 80354; let e0 = resolve(.immediate(word(80352)), 1); let value = get(e0, 1); let e1 = resolve(.reg(1), 1); put(e1, value, 1); logic(value, 1)
        case 0x139e2: pc = 80356; pc = Int(pop())
        case 0x139e4: pc = 80362; let e0 = resolve(.memory(Int(long(80358)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x139ea: pc = 80366; let e0 = resolve(.immediate(word(80364)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x139ee: pc = 80368; if condition(7) { pc = (80368 + Int(sign(byte(80367), 1))) }
        case 0x139f0: pc = 80374; let e0 = resolve(.memory(Int(long(80370)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x139f6: pc = 80376; push(80376); pc = (80376 + Int(sign(byte(80375), 1)))
        case 0x139f8: pc = 80382; let e0 = resolve(.memory(Int(long(80378)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x139fe: pc = 80384; if condition(7) { pc = (80384 + Int(sign(byte(80383), 1))) }
        default: fail("Untranslated game address")
        }
    }
}
