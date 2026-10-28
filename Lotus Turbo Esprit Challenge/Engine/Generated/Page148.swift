// Generated 68000 game labels $014800–$0148FF.
extension LotusMachine {
    func page148() {
        switch pc {
        case 0x14800: pc = 83974; let e0 = resolve(.reg(1), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(83970)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x14806: pc = 83980; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(83976)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1480c: pc = 83982; pc = (83982 + Int(sign(byte(83981), 1)))
        case 0x1480e: pc = 83988; let e0 = resolve(.memory(Int(long(83984)) & 0xffffff), 4); let source = get(e0, 4); let e1 = resolve(.reg(11), 4); let destination = get(e1, 4); _ = source; _ = destination; _ = subtract(r[11], source, 4, compare: true)
        case 0x14814: pc = 83992; if condition(6) { pc = (83990 + Int(sign(word(83990), 2))) }
        case 0x14818: pc = 83998; let e0 = resolve(.memory(Int(long(83994)) & 0xffffff), 4); r[14] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1481e: pc = 84000; pc = Int(pop())
        case 0x14820: pc = 84006; let e0 = resolve(.memory(Int(long(84002)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x14826: pc = 84012; let e0 = resolve(.memory(Int(long(84008)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x1482c: pc = 84018; let e0 = resolve(.memory(Int(long(84014)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x14832: pc = 84024; let e0 = resolve(.memory(Int(long(84020)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x14838: pc = 84026; r[0] = UInt32(bitPattern: sign(byte(84025), 1)); logic(r[0], 4)
        case 0x1483a: pc = 84032; let e0 = resolve(.memory(Int(long(84028)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x14840: pc = 84036; let e0 = resolve(.immediate(word(84034)), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x14844: pc = 84038; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.post(8), 4); put(e1, value, 4); logic(value, 4)
        case 0x14846: pc = 84042; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (84040 + Int(sign(word(84040), 2))) } }
        case 0x1484a: pc = 84048; let e0 = resolve(.memory(Int(long(84044)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x14850: pc = 84052; let e0 = resolve(.offset(9, Int(sign(word(84050), 2))), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x14854: pc = 84054; let e0 = resolve(.reg(9), 4); let source = get(e0, 4); let e1 = resolve(.reg(8), 4); let destination = get(e1, 4); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x14856: pc = 84056; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x14858: pc = 84062; let e0 = resolve(.reg(8), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(84058)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x1485e: pc = 84066; let e0 = resolve(.offset(9, Int(sign(word(84064), 2))), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x14862: pc = 84068; let e0 = resolve(.reg(9), 4); let source = get(e0, 4); let e1 = resolve(.reg(8), 4); let destination = get(e1, 4); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x14864: pc = 84070; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x14866: pc = 84076; let e0 = resolve(.reg(8), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(84072)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x1486c: pc = 84082; let e0 = resolve(.memory(Int(long(84078)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x14872: pc = 84088; let e0 = resolve(.memory(Int(long(84084)) & 0xffffff), 4); r[9] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x14878: pc = 84092; let e0 = resolve(.immediate(word(84090)), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x1487c: pc = 84094; let e0 = resolve(.post(8), 4); put(e0, 0, 4); logic(0, 4)
        case 0x1487e: pc = 84096; let e0 = resolve(.post(9), 4); put(e0, 0, 4); logic(0, 4)
        case 0x14880: pc = 84100; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (84098 + Int(sign(word(84098), 2))) } }
        case 0x14884: pc = 84104; push(84104); pc = (84102 + Int(sign(word(84102), 2)))
        case 0x14888: pc = 84110; let e0 = resolve(.memory(Int(long(84106)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1488e: pc = 84118; let e0 = resolve(.indexed(8, 1, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.memory(Int(long(84114)) & 0xffffff), 1); put(e1, value, 1); logic(value, 1)
        case 0x14896: pc = 84124; let e0 = resolve(.memory(Int(long(84120)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1489c: pc = 84128; let e0 = resolve(.indexed(8, 1, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x148a0: pc = 84132; let e0 = resolve(.immediate(word(84130)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x148a4: pc = 84136; let e0 = resolve(.immediate(word(84134)), 2); let source = get(e0, 2); r[0] = (r[0] & 65535) &* source; logic(r[0], 4)
        case 0x148a8: pc = 84140; let e0 = resolve(.immediate(word(84138)), 2); let source = get(e0, 2); divide(0, source, signed: false)
        case 0x148ac: pc = 84146; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(84142)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x148b2: pc = 84148; r[0] = UInt32(bitPattern: sign(byte(84147), 1)); logic(r[0], 4)
        case 0x148b4: pc = 84154; let e0 = resolve(.memory(Int(long(84150)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x148ba: pc = 84160; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(84156)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x148c0: pc = 84166; let e0 = resolve(.memory(Int(long(84162)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x148c6: pc = 84170; let e0 = resolve(.immediate(word(84168)), 2); let source = get(e0, 2); r[0] = (r[0] & 65535) &* source; logic(r[0], 4)
        case 0x148ca: pc = 84174; let e0 = resolve(.immediate(word(84172)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x148ce: pc = 84180; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(84176)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x148d4: pc = 84184; let e0 = resolve(.immediate(word(84182)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x148d8: pc = 84188; let e0 = resolve(.immediate(word(84186)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x148dc: pc = 84194; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(84190)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x148e2: pc = 84196; let e0 = resolve(.immediate(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x148e4: pc = 84202; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(84198)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x148ea: pc = 84208; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(84204)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x148f0: pc = 84210; let e0 = resolve(.immediate(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x148f2: pc = 84216; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(84212)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x148f8: pc = 84222; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(84218)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x148fe: pc = 84226; let e0 = resolve(.immediate(word(84224)), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        default: fail("Untranslated game address")
        }
    }
}
