// Generated 68000 game labels $018300–$0183FF.
extension LotusMachine {
    func page183() {
        switch pc {
        case 0x18302: pc = 99076; if condition(11) { pc = (99076 + Int(sign(byte(99075), 1))) }
        case 0x18304: pc = 99082; let e0 = resolve(.memory(Int(long(99078)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x1830a: pc = 99090; let e0 = resolve(.immediate(word(99084)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(99086)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x18312: pc = 99092; if condition(7) { pc = (99092 + Int(sign(byte(99091), 1))) }
        case 0x18314: pc = 99096; push(99096); pc = (99094 + Int(sign(word(99094), 2)))
        case 0x18318: pc = 99098; pc = Int(pop())
        case 0x1831a: pc = 99102; moveMultiple(135, Int(r[15]), 4, load: false, addressRegister: 15, predecrement: true, postincrement: false)
        case 0x1831e: pc = 99106; let e0 = resolve(.immediate(word(99104)), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x18322: pc = 99110; push(99110); pc = (99108 + Int(sign(word(99108), 2)))
        case 0x18326: pc = 99120; let e0 = resolve(.memory(Int(long(99112)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(99116)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18330: pc = 99130; let e0 = resolve(.memory(Int(long(99122)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(99126)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1833a: pc = 99134; moveMultiple(135, Int(r[15]), 4, load: true, addressRegister: 15, predecrement: false, postincrement: true)
        case 0x1833e: pc = 99138; moveMultiple(135, Int(r[15]), 4, load: false, addressRegister: 15, predecrement: true, postincrement: false)
        case 0x18342: pc = 99142; let e0 = resolve(.immediate(word(99140)), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x18346: pc = 99146; push(99146); pc = (99144 + Int(sign(word(99144), 2)))
        case 0x1834a: pc = 99156; let e0 = resolve(.memory(Int(long(99148)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(99152)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18354: pc = 99166; let e0 = resolve(.memory(Int(long(99158)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(99162)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1835e: pc = 99170; moveMultiple(135, Int(r[15]), 4, load: true, addressRegister: 15, predecrement: false, postincrement: true)
        case 0x18362: pc = 99176; let e0 = resolve(.memory(Int(long(99172)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x18368: pc = 99180; if condition(7) { pc = (99178 + Int(sign(word(99178), 2))) }
        case 0x1836c: pc = 99184; let e0 = resolve(.immediate(word(99182)), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x18370: pc = 99188; if condition(11) { pc = (99186 + Int(sign(word(99186), 2))) }
        case 0x18374: pc = 99190; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x18376: pc = 99192; let e0 = resolve(.immediate(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x18378: pc = 99194; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1837a: pc = 99200; let e0 = resolve(.memory(Int(long(99196)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x18380: pc = 99206; let e0 = resolve(.memory(Int(long(99202)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x18386: pc = 99210; let e0 = resolve(.indexed(8, 6, false, 0), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x1838a: pc = 99216; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(99212)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18390: pc = 99224; let e0 = resolve(.indexed(8, 6, false, 20), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(99220)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18398: pc = 99232; let e0 = resolve(.immediate(word(99226)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(99228)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x183a0: pc = 99238; let e0 = resolve(.memory(Int(long(99234)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x183a6: pc = 99244; let e0 = resolve(.immediate(long(99240)), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x183ac: pc = 99248; moveMultiple(1670, Int(r[15]), 4, load: false, addressRegister: 15, predecrement: true, postincrement: false)
        case 0x183b0: pc = 99254; let e0 = resolve(.memory(Int(long(99250)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x183b6: pc = 99258; let e0 = resolve(.immediate(word(99256)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x183ba: pc = 99264; let e0 = resolve(.memory(Int(long(99260)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x183c0: pc = 99270; let e0 = resolve(.memory(Int(long(99266)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x183c6: pc = 99274; let e0 = resolve(.immediate(word(99272)), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x183ca: pc = 99278; push(99278); pc = (99276 + Int(sign(word(99276), 2)))
        case 0x183ce: pc = 99282; moveMultiple(1670, Int(r[15]), 4, load: true, addressRegister: 15, predecrement: false, postincrement: true)
        case 0x183d2: pc = 99286; moveMultiple(1670, Int(r[15]), 4, load: false, addressRegister: 15, predecrement: true, postincrement: false)
        case 0x183d6: pc = 99292; let e0 = resolve(.memory(Int(long(99288)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x183dc: pc = 99296; let e0 = resolve(.immediate(word(99294)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x183e0: pc = 99302; let e0 = resolve(.memory(Int(long(99298)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x183e6: pc = 99308; let e0 = resolve(.memory(Int(long(99304)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x183ec: pc = 99314; let e0 = resolve(.memory(Int(long(99310)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x183f2: pc = 99318; let e0 = resolve(.immediate(word(99316)), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x183f6: pc = 99322; push(99322); pc = (99320 + Int(sign(word(99320), 2)))
        case 0x183fa: pc = 99326; moveMultiple(1670, Int(r[15]), 4, load: true, addressRegister: 15, predecrement: false, postincrement: true)
        case 0x183fe: pc = 99330; let e0 = resolve(.immediate(word(99328)), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        default: fail("Untranslated game address")
        }
    }
}
