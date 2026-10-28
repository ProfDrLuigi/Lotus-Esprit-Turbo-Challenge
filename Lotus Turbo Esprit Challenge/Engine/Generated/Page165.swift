// Generated 68000 game labels $016500–$0165FF.
extension LotusMachine {
    func page165() {
        switch pc {
        case 0x16502: pc = 91400; let e0 = resolve(.memory(Int(long(91396)) & 0xffffff), 4); r[11] = UInt32(truncatingIfNeeded: e0.address)
        case 0x16508: pc = 91402; pc = (91402 + Int(sign(byte(91401), 1)))
        case 0x1650a: pc = 91408; let e0 = resolve(.immediate(long(91404)), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x16510: pc = 91414; let e0 = resolve(.memory(Int(long(91410)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x16516: pc = 91420; let e0 = resolve(.memory(Int(long(91416)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1651c: pc = 91426; let e0 = resolve(.memory(Int(long(91422)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x16522: pc = 91432; let e0 = resolve(.memory(Int(long(91428)) & 0xffffff), 4); r[11] = UInt32(truncatingIfNeeded: e0.address)
        case 0x16528: pc = 91438; let e0 = resolve(.memory(Int(long(91434)) & 0xffffff), 4); r[12] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1652e: pc = 91444; let e0 = resolve(.memory(Int(long(91440)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(5), 2); put(e1, value, 2); logic(value, 2)
        case 0x16534: pc = 91450; let e0 = resolve(.memory(Int(long(91446)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x1653a: pc = 91454; let e0 = resolve(.immediate(word(91452)), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x1653e: pc = 91456; let e0 = resolve(.reg(6), 2); logic(get(e0, 2), 2)
        case 0x16540: pc = 91458; if condition(6) { pc = (91458 + Int(sign(byte(91457), 1))) }
        case 0x16542: pc = 91460; let e0 = resolve(.reg(11), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x16544: pc = 91464; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(10, Int(sign(word(91462), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x16548: pc = 91466; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x1654a: pc = 91470; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(10, Int(sign(word(91468), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1654e: pc = 91474; pc = (91472 + Int(sign(word(91472), 2)))
        case 0x16552: pc = 91476; let e0 = resolve(.reg(12), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x16554: pc = 91478; let e0 = resolve(.reg(5), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x16556: pc = 91482; let e0 = resolve(.immediate(word(91480)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1655a: pc = 91484; if condition(10) { pc = (91484 + Int(sign(byte(91483), 1))) }
        case 0x1655c: pc = 91488; let e0 = resolve(.immediate(word(91486)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x16560: pc = 91492; let e0 = resolve(.immediate(word(91490)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16564: pc = 91494; if condition(11) { pc = (91494 + Int(sign(byte(91493), 1))) }
        case 0x16566: pc = 91498; let e0 = resolve(.immediate(word(91496)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1656a: pc = 91502; let e0 = resolve(.immediate(word(91500)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1656e: pc = 91504; let e0 = resolve(.immediate(1), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x16570: pc = 91506; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x16572: pc = 91510; let e0 = resolve(.immediate(word(91508)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x16576: pc = 91514; let e0 = resolve(.immediate(word(91512)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination ^ source; put(e1, value, 2); logic(value, 2)
        case 0x1657a: pc = 91516; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x1657c: pc = 91518; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x1657e: pc = 91520; let e0 = resolve(.immediate(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16580: pc = 91522; let e0 = resolve(.immediate(2), 4); let count = get(e0, 4); let e1 = resolve(.reg(2), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x16582: pc = 91526; let e0 = resolve(.immediate(word(91524)), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x16586: pc = 91528; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x16588: pc = 91530; let e0 = resolve(.immediate(3), 4); let count = get(e0, 4); let e1 = resolve(.reg(3), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x1658a: pc = 91532; let e0 = resolve(.reg(3), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x1658c: pc = 91534; let e0 = resolve(.reg(8), 4); let value = get(e0, 4); let e1 = resolve(.reg(2), 4); put(e1, value, 4); logic(value, 4)
        case 0x1658e: pc = 91538; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.offset(10, Int(sign(word(91536), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x16592: pc = 91540; r[2] = (r[2] << 16) | (r[2] >> 16); logic(r[2], 4)
        case 0x16594: pc = 91544; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.offset(10, Int(sign(word(91542), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x16598: pc = 91550; let e0 = resolve(.memory(Int(long(91546)) & 0xffffff), 4); r[12] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1659e: pc = 91552; let e0 = resolve(.immediate(2), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x165a0: pc = 91554; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x165a2: pc = 91556; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(12), 2); let destination = get(e1, 2); _ = source; _ = destination; r[12] = r[12] &+ UInt32(bitPattern: sign(source, 2))
        case 0x165a4: pc = 91558; let e0 = resolve(.reg(7), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x165a6: pc = 91562; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(91560), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x165aa: pc = 91564; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x165ac: pc = 91566; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x165ae: pc = 91568; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x165b0: pc = 91572; if condition(7) { pc = (91570 + Int(sign(word(91570), 2))) }
        case 0x165b4: pc = 91576; if condition(11) { pc = (91574 + Int(sign(word(91574), 2))) }
        case 0x165b8: pc = 91578; let e0 = resolve(.immediate(3), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x165ba: pc = 91580; let e0 = resolve(.immediate(2), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x165bc: pc = 91582; r[2] = UInt32(bitPattern: sign(byte(91581), 1)); logic(r[2], 4)
        case 0x165be: pc = 91584; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x165c0: pc = 91586; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x165c2: pc = 91588; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x165c4: pc = 91590; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x165c6: pc = 91592; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x165c8: pc = 91594; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x165ca: pc = 91596; let e0 = resolve(.immediate(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x165cc: pc = 91602; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(91598)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x165d2: pc = 91604; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x165d4: pc = 91608; pc = (91606 + Int(sign(word(91606), 2)))
        case 0x165d6: fail("Untranslated dc.w at 165d6")
        case 0x165d8: pc = 91610; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x165da: pc = 91614; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(91612), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x165de: pc = 91616; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x165e0: pc = 91618; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x165e2: pc = 91620; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x165e4: pc = 91624; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(91622), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x165e8: pc = 91626; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x165ea: pc = 91628; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x165ec: pc = 91630; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x165ee: pc = 91634; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(91632), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x165f2: pc = 91636; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x165f4: pc = 91638; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x165f6: pc = 91640; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x165f8: pc = 91644; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(91642), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x165fc: pc = 91646; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x165fe: pc = 91648; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        default: fail("Untranslated game address")
        }
    }
}
