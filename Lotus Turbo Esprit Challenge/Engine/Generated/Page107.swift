// Generated 68000 game labels $010700–$0107FF.
extension LotusMachine {
    func page107() {
        switch pc {
        case 0x10706: pc = 67338; let e0 = resolve(.immediate(word(67336)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1070a: pc = 67342; if !condition(1) {     setRegister(0, r[0] &- 1, 2);     if r[0] & 65535 != 65535 { pc = (67340 + Int(sign(word(67340), 2))) } }
        case 0x1070e: pc = 67346; let e0 = resolve(.memory(67708), 4); r[14] = UInt32(truncatingIfNeeded: e0.address)
        case 0x10712: pc = 67354; let e0 = resolve(.offset(14, Int(sign(word(67348), 2))), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(67350)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x1071a: pc = 67362; let e0 = resolve(.offset(14, Int(sign(word(67356), 2))), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(67358)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10722: pc = 67364; pc = Int(pop())
        case 0x10724: pc = 67368; let e0 = resolve(.memory(67872), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x10728: pc = 67374; let e0 = resolve(.immediate(word(67370)), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(67372), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x1072e: pc = 67376; r[0] = UInt32(bitPattern: sign(byte(67375), 1)); logic(r[0], 4)
        case 0x10730: pc = 67378; r[1] = UInt32(bitPattern: sign(byte(67377), 1)); logic(r[1], 4)
        case 0x10732: pc = 67382; push(67382); pc = (67380 + Int(sign(word(67380), 2)))
        case 0x10736: pc = 67384; r[0] = UInt32(bitPattern: sign(byte(67383), 1)); logic(r[0], 4)
        case 0x10738: pc = 67386; r[1] = UInt32(bitPattern: sign(byte(67385), 1)); logic(r[1], 4)
        case 0x1073a: pc = 67390; push(67390); pc = (67388 + Int(sign(word(67388), 2)))
        case 0x1073e: pc = 67394; pc = (67392 + Int(sign(word(67392), 2)))
        case 0x10742: pc = 67396; pc = Int(pop())
        case 0x10744: pc = 67400; let e0 = resolve(.offset(14, Int(sign(word(67398), 2))), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x10748: pc = 67402; if condition(7) { pc = (67402 + Int(sign(byte(67401), 1))) }
        case 0x1074a: pc = 67404; r[1] = UInt32(bitPattern: sign(byte(67403), 1)); logic(r[1], 4)
        case 0x1074c: pc = 67408; let e0 = resolve(.offset(10, Int(sign(word(67406), 2))), 1); let value = get(e0, 1); let e1 = resolve(.reg(1), 1); put(e1, value, 1); logic(value, 1)
        case 0x10750: pc = 67412; let e0 = resolve(.immediate(word(67410)), 2); let source = get(e0, 2); divide(1, source, signed: true)
        case 0x10754: pc = 67414; r[1] = (r[1] << 16) | (r[1] >> 16); logic(r[1], 4)
        case 0x10756: pc = 67418; let e0 = resolve(.immediate(word(67416)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1075a: pc = 67420; if condition(7) { pc = (67420 + Int(sign(byte(67419), 1))) }
        case 0x1075c: pc = 67424; let e0 = resolve(.immediate(word(67422)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x10760: pc = 67426; if condition(7) { pc = (67426 + Int(sign(byte(67425), 1))) }
        case 0x10762: pc = 67428; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 1); let value = shift(get(e1, 1), count, 1, 2); put(e1, value, 1)
        case 0x10764: pc = 67430; pc = (67430 + Int(sign(byte(67429), 1)))
        case 0x10766: pc = 67434; let e0 = resolve(.immediate(word(67432)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination & source; put(e1, value, 1); logic(value, 1)
        case 0x1076a: pc = 67436; pc = (67436 + Int(sign(byte(67435), 1)))
        case 0x1076c: pc = 67440; let e0 = resolve(.offset(14, Int(sign(word(67438), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x10770: pc = 67442; pc = (67442 + Int(sign(byte(67441), 1)))
        case 0x10772: pc = 67444; let e0 = resolve(.immediate(1), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x10774: pc = 67446; r[1] = UInt32(bitPattern: sign(byte(67445), 1)); logic(r[1], 4)
        case 0x10776: pc = 67450; let e0 = resolve(.offset(14, Int(sign(word(67448), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x1077a: pc = 67456; let e0 = resolve(.immediate(long(67452)), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x10780: pc = 67458; r[7] = UInt32(bitPattern: sign(byte(67457), 1)); logic(r[7], 4)
        case 0x10782: pc = 67462; let e0 = resolve(.indexed(8, 0, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x10786: pc = 67464; let e0 = resolve(.post(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x10788: pc = 67466; if condition(12) { pc = (67466 + Int(sign(byte(67465), 1))) }
        case 0x1078a: pc = 67470; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (67468 + Int(sign(word(67468), 2))) } }
        case 0x1078e: pc = 67472; pc = Int(pop())
        case 0x10790: pc = 67476; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(67474), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x10794: pc = 67478; pc = Int(pop())
        case 0x10796: pc = 67480; let e0 = resolve(.reg(0), 2); let value = ~get(e0, 2); put(e0, value, 2); logic(value, 2)
        case 0x10798: pc = 67484; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(67482), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1079c: pc = 67490; let e0 = resolve(.offset(14, Int(sign(word(67486), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(67488), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x107a2: pc = 67492; pc = Int(pop())
        case 0x107a4: pc = 67494; pc = Int(pop())
        case 0x107a6: pc = 67496; pc = Int(pop())
        case 0x107a8: pc = 67500; let e0 = resolve(.memory(67934), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x107ac: pc = 67502; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x107ae: pc = 67504; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x107b0: pc = 67506; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(8), 4); let destination = get(e1, 4); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x107b2: pc = 67512; let e0 = resolve(.offset(8, Int(sign(word(67508), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(67510), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x107b8: pc = 67514; pc = Int(pop())
        case 0x107ba: pc = 67516; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x107bc: pc = 67518; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 1); let value = shift(get(e1, 1), count, 1, 2); put(e1, value, 1)
        case 0x107be: pc = 67520; let e0 = resolve(.reg(0), 1); logic(get(e0, 1), 1)
        case 0x107c0: pc = 67522; if condition(7) { pc = (67522 + Int(sign(byte(67521), 1))) }
        case 0x107c2: pc = 67524; let e0 = resolve(.reg(0), 1); let value = ~get(e0, 1); put(e0, value, 1); logic(value, 1)
        case 0x107c4: pc = 67526; pc = (67526 + Int(sign(byte(67525), 1)))
        case 0x107c6: pc = 67528; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x107c8: pc = 67532; let e0 = resolve(.immediate(word(67530)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination & source; put(e1, value, 1); logic(value, 1)
        case 0x107cc: pc = 67536; let e0 = resolve(.reg(0), 1); let source = get(e0, 1); let e1 = resolve(.offset(14, Int(sign(word(67534), 2))), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1); put(e1, value, 1)
        case 0x107d0: pc = 67542; let e0 = resolve(.immediate(word(67538)), 1); let source = get(e0, 1); let e1 = resolve(.offset(14, Int(sign(word(67540), 2))), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x107d6: pc = 67544; if condition(3) { pc = (67544 + Int(sign(byte(67543), 1))) }
        case 0x107d8: pc = 67546; if condition(11) { pc = (67546 + Int(sign(byte(67545), 1))) }
        case 0x107da: pc = 67548; if condition(2) { pc = (67548 + Int(sign(byte(67547), 1))) }
        case 0x107dc: pc = 67550; pc = (67550 + Int(sign(byte(67549), 1)))
        case 0x107de: pc = 67554; let e0 = resolve(.offset(14, Int(sign(word(67552), 2))), 2); put(e0, 0, 2); logic(0, 2)
        case 0x107e2: pc = 67556; pc = (67556 + Int(sign(byte(67555), 1)))
        case 0x107e4: pc = 67562; let e0 = resolve(.immediate(word(67558)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(67560), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x107ea: pc = 67568; let e0 = resolve(.offset(14, Int(sign(word(67564), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(67566), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x107f0: pc = 67570; pc = Int(pop())
        case 0x107f2: pc = 67572; let e0 = resolve(.immediate(1), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1); put(e1, value, 1)
        case 0x107f4: pc = 67576; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(67574), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x107f8: pc = 67582; let e0 = resolve(.immediate(word(67578)), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(67580), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x107fe: pc = 67584; pc = Int(pop())
        default: fail("Untranslated game address")
        }
    }
}
