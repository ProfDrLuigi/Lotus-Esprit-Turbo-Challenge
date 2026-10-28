// Generated 68000 game labels $015100–$0151FF.
extension LotusMachine {
    func page151() {
        switch pc {
        case 0x15100: pc = 86278; let e0 = resolve(.immediate(long(86274)), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x15106: pc = 86282; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (86280 + Int(sign(word(86280), 2))) } }
        case 0x1510a: pc = 86288; let e0 = resolve(.memory(Int(long(86284)) & 0xffffff), 4); r[12] = UInt32(truncatingIfNeeded: e0.address)
        case 0x15110: pc = 86290; r[7] = UInt32(bitPattern: sign(byte(86289), 1)); logic(r[7], 4)
        case 0x15112: pc = 86296; let e0 = resolve(.memory(Int(long(86292)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x15118: pc = 86302; let e0 = resolve(.immediate(long(86298)), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4); put(e1, value, 4)
        case 0x1511e: pc = 86304; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x15120: pc = 86306; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.pre(15), 2); put(e1, value, 2); logic(value, 2)
        case 0x15122: pc = 86310; let e0 = resolve(.offset(12, Int(sign(word(86308), 2))), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x15126: pc = 86314; push(86314); pc = (86312 + Int(sign(word(86312), 2)))
        case 0x1512a: pc = 86316; let e0 = resolve(.post(15), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x1512c: pc = 86318; let e0 = resolve(.post(15), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x1512e: pc = 86324; let e0 = resolve(.immediate(long(86320)), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x15134: pc = 86328; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (86326 + Int(sign(word(86326), 2))) } }
        case 0x15138: pc = 86334; let e0 = resolve(.memory(Int(long(86330)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1513e: pc = 86336; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15140: pc = 86342; let e0 = resolve(.memory(Int(long(86338)) & 0xffffff), 2); let source = get(e0, 2); r[0] = (r[0] & 65535) &* source; logic(r[0], 4)
        case 0x15146: pc = 86344; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x15148: pc = 86346; let e0 = resolve(.reg(0), 2); put(e0, 0, 2); logic(0, 2)
        case 0x1514a: pc = 86352; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(86348)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x15150: pc = 86360; let e0 = resolve(.immediate(word(86354)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(86356)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x15158: pc = 86362; pc = Int(pop())
        case 0x1515a: pc = 86364; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x1515c: pc = 86366; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x1515e: pc = 86368; let e0 = resolve(.immediate(8), 4); let count = get(e0, 4); let e1 = resolve(.reg(2), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x15160: pc = 86372; let e0 = resolve(.immediate(word(86370)), 1); let source = get(e0, 1); let e1 = resolve(.reg(2), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x15164: pc = 86374; if condition(7) { pc = (86374 + Int(sign(byte(86373), 1))) }
        case 0x15166: pc = 86378; let e0 = resolve(.immediate(word(86376)), 1); let source = get(e0, 1); let e1 = resolve(.reg(2), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x1516a: pc = 86380; if condition(7) { pc = (86380 + Int(sign(byte(86379), 1))) }
        case 0x1516c: pc = 86384; let e0 = resolve(.immediate(word(86382)), 1); let source = get(e0, 1); let e1 = resolve(.reg(2), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x15170: pc = 86386; if condition(7) { pc = (86386 + Int(sign(byte(86385), 1))) }
        case 0x15172: pc = 86390; let e0 = resolve(.immediate(word(86388)), 1); let source = get(e0, 1); let e1 = resolve(.reg(2), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x15176: pc = 86392; if condition(7) { pc = (86392 + Int(sign(byte(86391), 1))) }
        case 0x15178: pc = 86396; let e0 = resolve(.immediate(word(86394)), 1); let source = get(e0, 1); let e1 = resolve(.reg(2), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x1517c: pc = 86398; if condition(7) { pc = (86398 + Int(sign(byte(86397), 1))) }
        case 0x1517e: pc = 86402; let e0 = resolve(.immediate(word(86400)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x15182: pc = 86404; if condition(11) { pc = (86404 + Int(sign(byte(86403), 1))) }
        case 0x15184: pc = 86408; let e0 = resolve(.immediate(word(86406)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x15188: pc = 86410; if condition(11) { pc = (86410 + Int(sign(byte(86409), 1))) }
        case 0x1518a: pc = 86416; let e0 = resolve(.memory(Int(long(86412)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x15190: pc = 86418; if condition(7) { pc = (86418 + Int(sign(byte(86417), 1))) }
        case 0x15192: pc = 86422; let e0 = resolve(.immediate(word(86420)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15196: pc = 86424; pc = Int(pop())
        case 0x15198: pc = 86432; let e0 = resolve(.immediate(word(86426)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(86428)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x151a0: pc = 86434; pc = Int(pop())
        case 0x151a2: pc = 86438; let e0 = resolve(.immediate(word(86436)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x151a6: pc = 86442; let e0 = resolve(.immediate(word(86440)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x151aa: pc = 86446; let e0 = resolve(.immediate(word(86444)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination & source; put(e1, value, 1); logic(value, 1)
        case 0x151ae: pc = 86450; let e0 = resolve(.immediate(word(86448)), 1); let source = get(e0, 1); let e1 = resolve(.reg(2), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x151b0: pc = 86452; moveMultiple(24575, Int(r[15]), 4, load: false, addressRegister: 15, predecrement: true, postincrement: false)
        case 0x151b2: fail("Untranslated dc.w at 151b2")
        case 0x151b4: pc = 86458; let e0 = resolve(.memory(Int(long(86454)) & 0xffffff), 4); r[14] = UInt32(truncatingIfNeeded: e0.address)
        case 0x151ba: pc = 86464; let e0 = resolve(.immediate(word(86460)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(86462), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x151c0: pc = 86468; let e0 = resolve(.immediate(word(86466)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x151c2: pc = 86470; let e0 = resolve(.immediate(word(86468)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x151c4: pc = 86474; let e0 = resolve(.memory(Int(long(86470)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x151c6: pc = 86474; let e0 = resolve(.immediate(word(86472)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x151ca: pc = 86476; if condition(7) { pc = (86476 + Int(sign(byte(86475), 1))) }
        case 0x151cc: pc = 86484; let e0 = resolve(.immediate(word(86478)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(86480)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x151d4: pc = 86486; if condition(7) { pc = (86486 + Int(sign(byte(86485), 1))) }
        case 0x151d6: pc = 86492; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(86488)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x151dc: pc = 86496; push(86496); pc = (86494 + Int(sign(word(86494), 2)))
        case 0x151e0: pc = 86502; let e0 = resolve(.memory(Int(long(86498)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x151e6: pc = 86504; if condition(7) { pc = (86504 + Int(sign(byte(86503), 1))) }
        case 0x151e8: pc = 86506; if condition(10) { pc = (86506 + Int(sign(byte(86505), 1))) }
        case 0x151ea: pc = 86508; if condition(11) { pc = (86508 + Int(sign(byte(86507), 1))) }
        case 0x151ec: pc = 86516; let e0 = resolve(.immediate(word(86510)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.memory(Int(long(86512)) & 0xffffff), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x151f4: pc = 86518; if condition(7) { pc = (86518 + Int(sign(byte(86517), 1))) }
        case 0x151f6: pc = 86524; let e0 = resolve(.memory(Int(long(86520)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x151fc: pc = 86526; if condition(6) { pc = (86526 + Int(sign(byte(86525), 1))) }
        case 0x151fe: pc = 86534; let e0 = resolve(.immediate(word(86528)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(86530)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        default: fail("Untranslated game address")
        }
    }
}
