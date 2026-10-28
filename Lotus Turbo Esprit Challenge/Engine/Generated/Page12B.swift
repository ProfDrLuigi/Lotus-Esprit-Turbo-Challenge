// Generated 68000 game labels $012B00–$012BFF.
extension LotusMachine {
    func page12b() {
        switch pc {
        case 0x12b02: pc = 76548; if condition(7) { pc = (76548 + Int(sign(byte(76547), 1))) }
        case 0x12b04: pc = 76552; let e0 = resolve(.immediate(word(76550)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x12b08: pc = 76554; if condition(7) { pc = (76554 + Int(sign(byte(76553), 1))) }
        case 0x12b0a: pc = 76558; let e0 = resolve(.immediate(word(76556)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x12b0e: pc = 76560; if condition(7) { pc = (76560 + Int(sign(byte(76559), 1))) }
        case 0x12b10: pc = 76564; let e0 = resolve(.immediate(word(76562)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x12b14: pc = 76568; if condition(7) { pc = (76566 + Int(sign(word(76566), 2))) }
        case 0x12b18: pc = 76572; let e0 = resolve(.immediate(word(76570)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x12b1c: pc = 76576; if condition(7) { pc = (76574 + Int(sign(word(76574), 2))) }
        case 0x12b20: pc = 76580; let e0 = resolve(.immediate(word(76578)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x12b24: pc = 76584; if condition(7) { pc = (76582 + Int(sign(word(76582), 2))) }
        case 0x12b28: pc = 76588; push(76588); pc = (76586 + Int(sign(word(76586), 2)))
        case 0x12b2c: pc = 76590; pc = (76590 + Int(sign(byte(76589), 1)))
        case 0x12b2e: pc = 76592; pc = Int(pop())
        case 0x12b30: pc = 76594; let e0 = resolve(.post(9), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x12b32: pc = 76598; let e0 = resolve(.immediate(word(76596)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x12b36: pc = 76600; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x12b38: pc = 76602; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x12b3a: pc = 76604; pc = (76604 + Int(sign(byte(76603), 1)))
        case 0x12b3c: pc = 76606; let e0 = resolve(.post(9), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x12b3e: pc = 76610; let e0 = resolve(.immediate(word(76608)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x12b42: pc = 76612; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x12b44: pc = 76614; pc = (76614 + Int(sign(byte(76613), 1)))
        case 0x12b46: pc = 76620; let e0 = resolve(.memory(Int(long(76616)) & 0xffffff), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x12b4c: pc = 76622; let e0 = resolve(.post(9), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x12b4e: pc = 76626; let e0 = resolve(.immediate(word(76624)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x12b52: pc = 76628; let e0 = resolve(.post(9), 1); let value = get(e0, 1); let e1 = resolve(.reg(1), 1); put(e1, value, 1); logic(value, 1)
        case 0x12b54: pc = 76630; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x12b56: pc = 76634; let e0 = resolve(.immediate(word(76632)), 2); let source = get(e0, 2); r[4] = (r[4] & 65535) &* source; logic(r[4], 4)
        case 0x12b5a: pc = 76636; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(10), 2); let destination = get(e1, 2); _ = source; _ = destination; r[10] = r[10] &+ UInt32(bitPattern: sign(source, 2))
        case 0x12b5c: pc = 76640; let e0 = resolve(.immediate(word(76638)), 2); let source = get(e0, 2); let e1 = resolve(.reg(10), 2); let destination = get(e1, 2); _ = source; _ = destination; r[10] = r[10] &+ UInt32(bitPattern: sign(source, 2))
        case 0x12b60: pc = 76642; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x12b62: pc = 76646; let e0 = resolve(.immediate(word(76644)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x12b66: pc = 76648; let e0 = resolve(.immediate(1), 4); let count = get(e0, 4); let e1 = resolve(.reg(2), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x12b68: pc = 76652; let e0 = resolve(.immediate(word(76650)), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x12b6c: pc = 76654; let e0 = resolve(.reg(1), 2); let value = subtract(0, get(e0, 2), 2, extend: false); put(e0, value, 2)
        case 0x12b6e: pc = 76656; let e0 = resolve(.reg(2), 2); let value = subtract(0, get(e0, 2), 2, extend: false); put(e0, value, 2)
        case 0x12b70: pc = 76658; setRegister(1, UInt32(bitPattern: sign(r[1], 2)), 4); logic(r[1], 4)
        case 0x12b72: pc = 76660; setRegister(2, UInt32(bitPattern: sign(r[2], 2)), 4); logic(r[2], 4)
        case 0x12b74: pc = 76662; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x12b76: pc = 76666; let e0 = resolve(.reg(2), 4); let value = get(e0, 4); let e1 = resolve(.offset(10, Int(sign(word(76664), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12b7a: pc = 76668; let e0 = resolve(.reg(1), 4); let value = get(e0, 4); let e1 = resolve(.post(10), 4); put(e1, value, 4); logic(value, 4)
        case 0x12b7c: pc = 76672; let e0 = resolve(.reg(2), 4); let value = get(e0, 4); let e1 = resolve(.offset(10, Int(sign(word(76670), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12b80: pc = 76674; let e0 = resolve(.reg(1), 4); let value = get(e0, 4); let e1 = resolve(.post(10), 4); put(e1, value, 4); logic(value, 4)
        case 0x12b82: pc = 76678; let e0 = resolve(.reg(2), 4); let value = get(e0, 4); let e1 = resolve(.offset(10, Int(sign(word(76676), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12b86: pc = 76680; let e0 = resolve(.reg(1), 4); let value = get(e0, 4); let e1 = resolve(.post(10), 4); put(e1, value, 4); logic(value, 4)
        case 0x12b88: pc = 76684; let e0 = resolve(.reg(2), 4); let value = get(e0, 4); let e1 = resolve(.offset(10, Int(sign(word(76682), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12b8c: pc = 76686; let e0 = resolve(.reg(1), 4); let value = get(e0, 4); let e1 = resolve(.post(10), 4); put(e1, value, 4); logic(value, 4)
        case 0x12b8e: pc = 76690; let e0 = resolve(.reg(2), 4); let value = get(e0, 4); let e1 = resolve(.offset(10, Int(sign(word(76688), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12b92: pc = 76692; let e0 = resolve(.reg(1), 4); let value = get(e0, 4); let e1 = resolve(.post(10), 4); put(e1, value, 4); logic(value, 4)
        case 0x12b94: pc = 76696; let e0 = resolve(.reg(2), 4); let value = get(e0, 4); let e1 = resolve(.offset(10, Int(sign(word(76694), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12b98: pc = 76698; let e0 = resolve(.reg(1), 4); let value = get(e0, 4); let e1 = resolve(.post(10), 4); put(e1, value, 4); logic(value, 4)
        case 0x12b9a: pc = 76702; let e0 = resolve(.reg(2), 4); let value = get(e0, 4); let e1 = resolve(.offset(10, Int(sign(word(76700), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12b9e: pc = 76704; let e0 = resolve(.reg(1), 4); let value = get(e0, 4); let e1 = resolve(.post(10), 4); put(e1, value, 4); logic(value, 4)
        case 0x12ba0: pc = 76708; let e0 = resolve(.reg(2), 4); let value = get(e0, 4); let e1 = resolve(.offset(10, Int(sign(word(76706), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12ba4: pc = 76710; let e0 = resolve(.reg(1), 4); let value = get(e0, 4); let e1 = resolve(.post(10), 4); put(e1, value, 4); logic(value, 4)
        case 0x12ba6: pc = 76714; let e0 = resolve(.reg(2), 4); let value = get(e0, 4); let e1 = resolve(.offset(10, Int(sign(word(76712), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12baa: pc = 76716; let e0 = resolve(.reg(1), 4); let value = get(e0, 4); let e1 = resolve(.post(10), 4); put(e1, value, 4); logic(value, 4)
        case 0x12bac: pc = 76720; let e0 = resolve(.reg(2), 4); let value = get(e0, 4); let e1 = resolve(.offset(10, Int(sign(word(76718), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12bb0: pc = 76722; let e0 = resolve(.reg(1), 4); let value = get(e0, 4); let e1 = resolve(.post(10), 4); put(e1, value, 4); logic(value, 4)
        case 0x12bb2: pc = 76726; if !condition(1) {     setRegister(0, r[0] &- 1, 2);     if r[0] & 65535 != 65535 { pc = (76724 + Int(sign(word(76724), 2))) } }
        case 0x12bb6: pc = 76730; pc = (76728 + Int(sign(word(76728), 2)))
        case 0x12bba: pc = 76732; let e0 = resolve(.post(9), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x12bbc: pc = 76736; let e0 = resolve(.immediate(word(76734)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x12bc0: pc = 76738; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x12bc2: pc = 76742; let e0 = resolve(.immediate(word(76740)), 2); let source = get(e0, 2); r[4] = (r[4] & 65535) &* source; logic(r[4], 4)
        case 0x12bc6: pc = 76748; let e0 = resolve(.memory(Int(long(76744)) & 0xffffff), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x12bcc: pc = 76750; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(10), 2); let destination = get(e1, 2); _ = source; _ = destination; r[10] = r[10] &+ UInt32(bitPattern: sign(source, 2))
        case 0x12bce: pc = 76756; let e0 = resolve(.memory(Int(long(76752)) & 0xffffff), 4); r[11] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12bd4: pc = 76758; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(11), 2); let destination = get(e1, 2); _ = source; _ = destination; r[11] = r[11] &+ UInt32(bitPattern: sign(source, 2))
        case 0x12bd6: pc = 76760; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x12bd8: pc = 76768; let e0 = resolve(.immediate(long(76762)), 4); let value = get(e0, 4); let e1 = resolve(.offset(10, Int(sign(word(76766), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12be0: pc = 76774; let e0 = resolve(.offset(11, Int(sign(word(76770), 2))), 4); let value = get(e0, 4); let e1 = resolve(.offset(10, Int(sign(word(76772), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12be6: pc = 76776; let e0 = resolve(.post(11), 4); let value = get(e0, 4); let e1 = resolve(.post(10), 4); put(e1, value, 4); logic(value, 4)
        case 0x12be8: pc = 76784; let e0 = resolve(.immediate(long(76778)), 4); let value = get(e0, 4); let e1 = resolve(.offset(10, Int(sign(word(76782), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12bf0: pc = 76790; let e0 = resolve(.offset(11, Int(sign(word(76786), 2))), 4); let value = get(e0, 4); let e1 = resolve(.offset(10, Int(sign(word(76788), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12bf6: pc = 76792; let e0 = resolve(.post(11), 4); let value = get(e0, 4); let e1 = resolve(.post(10), 4); put(e1, value, 4); logic(value, 4)
        case 0x12bf8: pc = 76800; let e0 = resolve(.immediate(long(76794)), 4); let value = get(e0, 4); let e1 = resolve(.offset(10, Int(sign(word(76798), 2))), 4); put(e1, value, 4); logic(value, 4)
        default: fail("Untranslated game address")
        }
    }
}
