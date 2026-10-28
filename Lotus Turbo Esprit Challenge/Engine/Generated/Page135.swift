// Generated 68000 game labels $013500–$0135FF.
extension LotusMachine {
    func page135() {
        switch pc {
        case 0x13500: pc = 79106; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x13502: pc = 79112; let e0 = resolve(.memory(Int(long(79108)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13508: pc = 79114; r[7] = UInt32(bitPattern: sign(byte(79113), 1)); logic(r[7], 4)
        case 0x1350a: pc = 79116; let e0 = resolve(.post(8), 1); let value = get(e0, 1); let e1 = resolve(.post(9), 1); put(e1, value, 1); logic(value, 1)
        case 0x1350c: pc = 79120; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (79118 + Int(sign(word(79118), 2))) } }
        case 0x13510: pc = 79126; let e0 = resolve(.memory(Int(long(79122)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13516: pc = 79130; push(79130); pc = (79128 + Int(sign(word(79128), 2)))
        case 0x1351a: pc = 79132; pc = Int(pop())
        case 0x1351c: pc = 79138; let e0 = resolve(.memory(Int(long(79134)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x13522: pc = 79142; let e0 = resolve(.immediate(word(79140)), 2); let source = get(e0, 2); r[0] = (r[0] & 65535) &* source; logic(r[0], 4)
        case 0x13526: pc = 79148; let e0 = resolve(.memory(Int(long(79144)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1352c: pc = 79150; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x1352e: pc = 79156; let e0 = resolve(.memory(Int(long(79152)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13534: pc = 79158; r[7] = UInt32(bitPattern: sign(byte(79157), 1)); logic(r[7], 4)
        case 0x13536: pc = 79160; let e0 = resolve(.post(8), 1); let value = get(e0, 1); let e1 = resolve(.post(9), 1); put(e1, value, 1); logic(value, 1)
        case 0x13538: pc = 79164; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (79162 + Int(sign(word(79162), 2))) } }
        case 0x1353c: pc = 79170; let e0 = resolve(.memory(Int(long(79166)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13542: pc = 79174; push(79174); pc = (79172 + Int(sign(word(79172), 2)))
        case 0x13546: pc = 79176; pc = Int(pop())
        case 0x13548: pc = 79182; let e0 = resolve(.memory(Int(long(79178)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1354e: pc = 79186; let e0 = resolve(.immediate(word(79184)), 2); let source = get(e0, 2); r[0] = (r[0] & 65535) &* source; logic(r[0], 4)
        case 0x13552: pc = 79192; let e0 = resolve(.memory(Int(long(79188)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13558: pc = 79194; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x1355a: pc = 79200; let e0 = resolve(.memory(Int(long(79196)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13560: pc = 79202; r[7] = UInt32(bitPattern: sign(byte(79201), 1)); logic(r[7], 4)
        case 0x13562: pc = 79204; let e0 = resolve(.post(8), 1); let value = get(e0, 1); let e1 = resolve(.post(9), 1); put(e1, value, 1); logic(value, 1)
        case 0x13564: pc = 79208; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (79206 + Int(sign(word(79206), 2))) } }
        case 0x13568: pc = 79214; let e0 = resolve(.memory(Int(long(79210)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1356e: pc = 79218; push(79218); pc = (79216 + Int(sign(word(79216), 2)))
        case 0x13572: pc = 79220; pc = Int(pop())
        case 0x13574: pc = 79226; let e0 = resolve(.memory(Int(long(79222)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1357a: pc = 79230; let e0 = resolve(.immediate(word(79228)), 2); let source = get(e0, 2); r[0] = (r[0] & 65535) &* source; logic(r[0], 4)
        case 0x1357e: pc = 79236; let e0 = resolve(.memory(Int(long(79232)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13584: pc = 79238; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x13586: pc = 79244; let e0 = resolve(.memory(Int(long(79240)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1358c: pc = 79246; r[7] = UInt32(bitPattern: sign(byte(79245), 1)); logic(r[7], 4)
        case 0x1358e: pc = 79248; let e0 = resolve(.post(8), 1); let value = get(e0, 1); let e1 = resolve(.post(9), 1); put(e1, value, 1); logic(value, 1)
        case 0x13590: pc = 79252; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (79250 + Int(sign(word(79250), 2))) } }
        case 0x13594: pc = 79258; let e0 = resolve(.memory(Int(long(79254)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1359a: pc = 79262; push(79262); pc = (79260 + Int(sign(word(79260), 2)))
        case 0x1359e: pc = 79264; pc = Int(pop())
        case 0x135a0: pc = 79270; let e0 = resolve(.memory(Int(long(79266)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x135a6: pc = 79272; r[5] = UInt32(bitPattern: sign(byte(79271), 1)); logic(r[5], 4)
        case 0x135a8: pc = 79274; let e0 = resolve(.reg(5), 2); let value = get(e0, 2); let e1 = resolve(.post(8), 2); put(e1, value, 2); logic(value, 2)
        case 0x135aa: pc = 79276; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(5), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x135ac: pc = 79280; let e0 = resolve(.immediate(word(79278)), 2); let source = get(e0, 2); let e1 = resolve(.reg(5), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x135b0: pc = 79282; if condition(6) { pc = (79282 + Int(sign(byte(79281), 1))) }
        case 0x135b2: pc = 79284; r[7] = UInt32(bitPattern: sign(byte(79283), 1)); logic(r[7], 4)
        case 0x135b4: pc = 79290; let e0 = resolve(.memory(Int(long(79286)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x135ba: pc = 79296; let e0 = resolve(.memory(Int(long(79292)) & 0xffffff), 4); push(79296); pc = e0.address
        case 0x135c0: pc = 79300; let e0 = resolve(.immediate(word(79298)), 2); let source = get(e0, 2); r[0] = (r[0] & 65535) &* source; logic(r[0], 4)
        case 0x135c4: pc = 79302; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x135c6: pc = 79304; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x135c8: pc = 79310; let e0 = resolve(.memory(Int(long(79306)) & 0xffffff), 4); push(79310); pc = e0.address
        case 0x135ce: pc = 79314; let e0 = resolve(.immediate(word(79312)), 2); let source = get(e0, 2); r[0] = (r[0] & 65535) &* source; logic(r[0], 4)
        case 0x135d2: pc = 79316; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x135d4: pc = 79318; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x135d6: pc = 79320; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x135d8: pc = 79322; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x135da: pc = 79324; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x135dc: pc = 79326; let e0 = resolve(.reg(3), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x135de: pc = 79330; let e0 = resolve(.indexed(8, 2, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x135e2: pc = 79336; let e0 = resolve(.indexed(8, 3, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.indexed(8, 2, false, 0), 2); put(e1, value, 2); logic(value, 2)
        case 0x135e8: pc = 79340; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.indexed(8, 3, false, 0), 2); put(e1, value, 2); logic(value, 2)
        case 0x135ec: pc = 79344; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (79342 + Int(sign(word(79342), 2))) } }
        case 0x135f0: pc = 79350; let e0 = resolve(.memory(Int(long(79346)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x135f6: pc = 79352; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x135f8: pc = 79358; let e0 = resolve(.memory(Int(long(79354)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x135fe: pc = 79360; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        default: fail("Untranslated game address")
        }
    }
}
