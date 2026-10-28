// Generated 68000 game labels $014100–$0141FF.
extension LotusMachine {
    func page141() {
        switch pc {
        case 0x14100: pc = 82178; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.post(9), 4); put(e1, value, 4); logic(value, 4)
        case 0x14102: pc = 82182; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (82180 + Int(sign(word(82180), 2))) } }
        case 0x14106: pc = 82184; pc = Int(pop())
        case 0x14108: pc = 82186; let e0 = resolve(.immediate(8), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x1410a: pc = 82188; let e0 = resolve(.reg(0), 2); logic(get(e0, 2), 2)
        case 0x1410c: pc = 82190; if condition(7) { pc = (82190 + Int(sign(byte(82189), 1))) }
        case 0x1410e: pc = 82194; let e0 = resolve(.immediate(word(82192)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x14112: pc = 82196; if condition(5) { pc = (82196 + Int(sign(byte(82195), 1))) }
        case 0x14114: pc = 82200; let e0 = resolve(.immediate(word(82198)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x14118: pc = 82202; if condition(4) { pc = (82202 + Int(sign(byte(82201), 1))) }
        case 0x1411a: pc = 82206; let e0 = resolve(.immediate(word(82204)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1411e: pc = 82208; if condition(5) { pc = (82208 + Int(sign(byte(82207), 1))) }
        case 0x14120: pc = 82214; let e0 = resolve(.memory(Int(long(82210)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x14126: pc = 82216; r[1] = UInt32(bitPattern: sign(byte(82215), 1)); logic(r[1], 4)
        case 0x14128: pc = 82218; let e0 = resolve(.indirect(10), 2); logic(get(e0, 2), 2)
        case 0x1412a: pc = 82220; if condition(7) { pc = (82220 + Int(sign(byte(82219), 1))) }
        case 0x1412c: pc = 82222; let e0 = resolve(.post(10), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1412e: pc = 82224; if condition(7) { pc = (82224 + Int(sign(byte(82223), 1))) }
        case 0x14130: pc = 82226; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x14132: pc = 82230; let e0 = resolve(.immediate(word(82228)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x14136: pc = 82232; if condition(6) { pc = (82232 + Int(sign(byte(82231), 1))) }
        case 0x14138: pc = 82240; let e0 = resolve(.immediate(word(82234)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(82236)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x14140: pc = 82248; let e0 = resolve(.immediate(word(82242)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(82244)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x14148: pc = 82250; pc = (82250 + Int(sign(byte(82249), 1)))
        case 0x1414a: pc = 82252; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.indirect(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x1414c: pc = 82254; pc = Int(pop())
        case 0x1414e: pc = 82258; push(82258); pc = (82256 + Int(sign(word(82256), 2)))
        case 0x14152: pc = 82264; let e0 = resolve(.reg(1), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(82260)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x14158: pc = 82270; let e0 = resolve(.memory(Int(long(82266)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1415e: pc = 82272; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x14160: pc = 82276; let e0 = resolve(.immediate(word(82274)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x14164: pc = 82278; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(1), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x14166: pc = 82282; let e0 = resolve(.immediate(word(82280)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x1416a: pc = 82290; let e0 = resolve(.indexed(8, 1, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.memory(Int(long(82286)) & 0xffffff), 1); put(e1, value, 1); logic(value, 1)
        case 0x14172: pc = 82298; let e0 = resolve(.indexed(8, 0, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.memory(Int(long(82294)) & 0xffffff), 1); put(e1, value, 1); logic(value, 1)
        case 0x1417a: pc = 82304; let e0 = resolve(.immediate(long(82300)), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x14180: pc = 82310; let e0 = resolve(.immediate(long(82306)), 4); let value = get(e0, 4); let e1 = resolve(.reg(2), 4); put(e1, value, 4); logic(value, 4)
        case 0x14186: pc = 82316; let e0 = resolve(.memory(Int(long(82312)) & 0xffffff), 4); r[14] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x1418c: pc = 82320; let e0 = resolve(.offset(14, Int(sign(word(82318), 2))), 4); push(82320); pc = e0.address
        case 0x14190: pc = 82326; let e0 = resolve(.immediate(long(82322)), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x14196: pc = 82328; if condition(7) { pc = (82328 + Int(sign(byte(82327), 1))) }
        case 0x14198: pc = 82334; let e0 = resolve(.memory(Int(long(82330)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(2), 4); put(e1, value, 4); logic(value, 4)
        case 0x1419e: pc = 82340; let e0 = resolve(.immediate(long(82336)), 4); let value = get(e0, 4); let e1 = resolve(.reg(3), 4); put(e1, value, 4); logic(value, 4)
        case 0x141a4: pc = 82342; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x141a6: pc = 82344; let e0 = resolve(.reg(1), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x141a8: pc = 82350; let e0 = resolve(.memory(Int(long(82346)) & 0xffffff), 4); r[14] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x141ae: pc = 82354; let e0 = resolve(.offset(14, Int(sign(word(82352), 2))), 4); push(82354); pc = e0.address
        case 0x141b2: pc = 82360; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(82356)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x141b8: pc = 82366; let e0 = resolve(.memory(Int(long(82362)) & 0xffffff), 4); r[14] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x141be: pc = 82368; let e0 = resolve(.post(15), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x141c0: pc = 82372; let e0 = resolve(.offset(14, Int(sign(word(82370), 2))), 4); push(82372); pc = e0.address
        case 0x141c4: pc = 82378; let e0 = resolve(.memory(Int(long(82374)) & 0xffffff), 4); r[14] = UInt32(truncatingIfNeeded: e0.address)
        case 0x141ca: pc = 82382; push(82382); pc = (82380 + Int(sign(word(82380), 2)))
        case 0x141ce: pc = 82384; pc = Int(pop())
        case 0x141d0: pc = 82388; let e0 = resolve(.immediate(word(82386)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x141d4: pc = 82394; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(82390)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x141da: pc = 82396; pc = (82396 + Int(sign(byte(82395), 1)))
        case 0x141dc: pc = 82402; let e0 = resolve(.memory(Int(long(82398)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x141e2: pc = 82408; let e0 = resolve(.memory(Int(long(82404)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x141e8: pc = 82414; let e0 = resolve(.memory(Int(long(82410)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x141ee: pc = 82416; push(82416); pc = (82416 + Int(sign(byte(82415), 1)))
        case 0x141f0: pc = 82418; pc = Int(pop())
        case 0x141f2: pc = 82424; let e0 = resolve(.memory(Int(long(82420)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x141f8: pc = 82430; let e0 = resolve(.memory(Int(long(82426)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x141fe: pc = 82436; let e0 = resolve(.memory(Int(long(82432)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        default: fail("Untranslated game address")
        }
    }
}
