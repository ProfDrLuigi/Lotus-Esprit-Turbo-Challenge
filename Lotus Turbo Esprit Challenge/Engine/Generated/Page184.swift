// Generated 68000 game labels $018400–$0184FF.
extension LotusMachine {
    func page184() {
        switch pc {
        case 0x18402: pc = 99334; let e0 = resolve(.immediate(word(99332)), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x18406: pc = 99336; if condition(4) { pc = (99336 + Int(sign(byte(99335), 1))) }
        case 0x18408: pc = 99340; moveMultiple(1670, Int(r[15]), 4, load: false, addressRegister: 15, predecrement: true, postincrement: false)
        case 0x1840c: pc = 99346; let e0 = resolve(.memory(Int(long(99342)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x18412: pc = 99352; let e0 = resolve(.memory(Int(long(99348)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18418: pc = 99358; let e0 = resolve(.memory(Int(long(99354)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1841e: pc = 99360; let e0 = resolve(.immediate(1), 4); let count = get(e0, 4); let e1 = resolve(.reg(1), 2); let value = shift(get(e1, 2), count, 2, 0); put(e1, value, 2)
        case 0x18420: pc = 99364; let e0 = resolve(.immediate(word(99362)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x18424: pc = 99370; let e0 = resolve(.memory(Int(long(99366)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x1842a: pc = 99372; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x1842c: pc = 99376; push(99376); pc = (99374 + Int(sign(word(99374), 2)))
        case 0x18430: pc = 99380; moveMultiple(1670, Int(r[15]), 4, load: true, addressRegister: 15, predecrement: false, postincrement: true)
        case 0x18434: pc = 99382; pc = Int(pop())
        case 0x18436: pc = 99388; let e0 = resolve(.memory(Int(long(99384)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1843c: pc = 99394; let e0 = resolve(.memory(Int(long(99390)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x18442: pc = 99400; let e0 = resolve(.memory(Int(long(99396)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x18448: pc = 99406; let e0 = resolve(.memory(Int(long(99402)) & 0xffffff), 4); r[11] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1844e: pc = 99408; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x18450: pc = 99410; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18452: pc = 99414; let e0 = resolve(.indexed(11, 6, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x18456: pc = 99416; if condition(11) { pc = (99416 + Int(sign(byte(99415), 1))) }
        case 0x18458: pc = 99424; let e0 = resolve(.immediate(word(99418)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(99420)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18460: pc = 99428; push(99428); pc = (99426 + Int(sign(word(99426), 2)))
        case 0x18464: pc = 99430; pc = Int(pop())
        case 0x18466: pc = 99436; let e0 = resolve(.memory(Int(long(99432)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1846c: pc = 99442; let e0 = resolve(.memory(Int(long(99438)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x18472: pc = 99448; let e0 = resolve(.memory(Int(long(99444)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x18478: pc = 99454; let e0 = resolve(.memory(Int(long(99450)) & 0xffffff), 4); r[11] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1847e: pc = 99456; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x18480: pc = 99458; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18482: pc = 99462; let e0 = resolve(.indexed(11, 6, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x18486: pc = 99464; if condition(11) { pc = (99464 + Int(sign(byte(99463), 1))) }
        case 0x18488: pc = 99472; let e0 = resolve(.immediate(word(99466)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(99468)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18490: pc = 99476; push(99476); pc = (99474 + Int(sign(word(99474), 2)))
        case 0x18494: pc = 99478; pc = Int(pop())
        case 0x18496: pc = 99484; let e0 = resolve(.memory(Int(long(99480)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1849c: pc = 99490; let e0 = resolve(.memory(Int(long(99486)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x184a2: pc = 99496; let e0 = resolve(.memory(Int(long(99492)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x184a8: pc = 99502; let e0 = resolve(.memory(Int(long(99498)) & 0xffffff), 4); r[11] = UInt32(truncatingIfNeeded: e0.address)
        case 0x184ae: pc = 99504; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x184b0: pc = 99506; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x184b2: pc = 99510; let e0 = resolve(.indexed(11, 6, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x184b6: pc = 99514; if condition(11) { pc = (99512 + Int(sign(word(99512), 2))) }
        case 0x184ba: pc = 99524; let e0 = resolve(.memory(Int(long(99516)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(99520)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x184c4: pc = 99532; let e0 = resolve(.immediate(word(99526)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(99528)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x184cc: pc = 99536; push(99536); pc = (99534 + Int(sign(word(99534), 2)))
        case 0x184d0: pc = 99546; let e0 = resolve(.memory(Int(long(99538)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(99542)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x184da: pc = 99554; let e0 = resolve(.immediate(word(99548)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(99550)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x184e2: pc = 99558; if condition(6) { pc = (99556 + Int(sign(word(99556), 2))) }
        case 0x184e6: pc = 99564; let e0 = resolve(.memory(Int(long(99560)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x184ec: pc = 99566; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x184ee: pc = 99572; let e0 = resolve(.memory(Int(long(99568)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x184f4: pc = 99580; let e0 = resolve(.indexed(8, 6, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(99576)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x184fc: pc = 99588; let e0 = resolve(.indexed(8, 6, false, 18), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(99584)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        default: fail("Untranslated game address")
        }
    }
}
