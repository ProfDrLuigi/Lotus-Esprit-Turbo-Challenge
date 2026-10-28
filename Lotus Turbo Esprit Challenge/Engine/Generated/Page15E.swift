// Generated 68000 game labels $015E00–$015EFF.
extension LotusMachine {
    func page15e() {
        switch pc {
        case 0x15e04: pc = 89606; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x15e06: pc = 89610; let e0 = resolve(.offset(12, Int(sign(word(89608), 2))), 2); put(e0, 0, 2); logic(0, 2)
        case 0x15e0a: pc = 89612; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x15e0c: pc = 89618; let e0 = resolve(.memory(Int(long(89614)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x15e12: pc = 89622; let e0 = resolve(.indexed(8, 0, false, 11), 1); logic(get(e0, 1), 1)
        case 0x15e16: pc = 89624; if condition(7) { pc = (89624 + Int(sign(byte(89623), 1))) }
        case 0x15e18: pc = 89630; let e0 = resolve(.immediate(word(89626)), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(89628), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15e1e: pc = 89636; let e0 = resolve(.immediate(word(89632)), 2); let source = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(89634), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15e24: pc = 89638; if condition(11) { pc = (89638 + Int(sign(byte(89637), 1))) }
        case 0x15e26: pc = 89644; let e0 = resolve(.immediate(word(89640)), 2); let source = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(89642), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15e2c: pc = 89646; if condition(10) { pc = (89646 + Int(sign(byte(89645), 1))) }
        case 0x15e2e: pc = 89652; let e0 = resolve(.immediate(word(89648)), 2); let source = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(89650), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15e34: pc = 89654; if condition(4) { pc = (89654 + Int(sign(byte(89653), 1))) }
        case 0x15e36: pc = 89662; let e0 = resolve(.immediate(word(89656)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(89658)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15e3e: pc = 89664; if condition(6) { pc = (89664 + Int(sign(byte(89663), 1))) }
        case 0x15e40: pc = 89670; let e0 = resolve(.memory(Int(long(89666)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x15e46: pc = 89672; pc = (89672 + Int(sign(byte(89671), 1)))
        case 0x15e48: pc = 89678; let e0 = resolve(.immediate(word(89674)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.offset(12, Int(sign(word(89676), 2))), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x15e4e: pc = 89680; if condition(7) { pc = (89680 + Int(sign(byte(89679), 1))) }
        case 0x15e50: pc = 89684; let e0 = resolve(.offset(12, Int(sign(word(89682), 2))), 2); logic(get(e0, 2), 2)
        case 0x15e54: pc = 89686; if condition(6) { pc = (89686 + Int(sign(byte(89685), 1))) }
        case 0x15e56: pc = 89692; let e0 = resolve(.immediate(word(89688)), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(89690), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15e5c: pc = 89696; let e0 = resolve(.offset(12, Int(sign(word(89694), 2))), 2); put(e0, 0, 2); logic(0, 2)
        case 0x15e60: pc = 89700; let e0 = resolve(.offset(12, Int(sign(word(89698), 2))), 2); put(e0, 0, 2); logic(0, 2)
        case 0x15e64: pc = 89706; let e0 = resolve(.immediate(word(89702)), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(89704), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15e6a: pc = 89708; pc = Int(pop())
        case 0x15e6c: pc = 89712; let e0 = resolve(.offset(12, Int(sign(word(89710), 2))), 2); logic(get(e0, 2), 2)
        case 0x15e70: pc = 89714; if condition(7) { pc = (89714 + Int(sign(byte(89713), 1))) }
        case 0x15e72: pc = 89718; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(89716), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x15e76: pc = 89722; let e0 = resolve(.offset(12, Int(sign(word(89720), 2))), 2); logic(get(e0, 2), 2)
        case 0x15e7a: pc = 89724; if condition(11) { pc = (89724 + Int(sign(byte(89723), 1))) }
        case 0x15e7c: pc = 89730; let e0 = resolve(.offset(12, Int(sign(word(89726), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(89728), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15e82: pc = 89736; let e0 = resolve(.immediate(word(89732)), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(89734), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15e88: pc = 89738; pc = Int(pop())
        case 0x15e8a: pc = 89742; let e0 = resolve(.offset(12, Int(sign(word(89740), 2))), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x15e8e: pc = 89748; let e0 = resolve(.memory(Int(long(89744)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x15e94: pc = 89750; if condition(11) { pc = (89750 + Int(sign(byte(89749), 1))) }
        case 0x15e96: pc = 89754; let e0 = resolve(.offset(12, Int(sign(word(89752), 2))), 2); logic(get(e0, 2), 2)
        case 0x15e9a: pc = 89756; if condition(7) { pc = (89756 + Int(sign(byte(89755), 1))) }
        case 0x15e9c: pc = 89764; let e0 = resolve(.immediate(long(89758)), 4); let source = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(89762), 2))), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x15ea4: pc = 89766; if condition(7) { pc = (89766 + Int(sign(byte(89765), 1))) }
        case 0x15ea6: pc = 89772; let e0 = resolve(.immediate(word(89768)), 2); let source = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(89770), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15eac: pc = 89774; if condition(4) { pc = (89774 + Int(sign(byte(89773), 1))) }
        case 0x15eae: pc = 89778; let e0 = resolve(.offset(12, Int(sign(word(89776), 2))), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x15eb2: pc = 89782; let e0 = resolve(.offset(12, Int(sign(word(89780), 2))), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x15eb6: pc = 89784; push(89784); pc = (89784 + Int(sign(byte(89783), 1)))
        case 0x15eb8: pc = 89788; let e0 = resolve(.reg(4), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(89786), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15ebc: pc = 89792; let e0 = resolve(.reg(5), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(89790), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15ec0: pc = 89796; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(89794), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15ec4: pc = 89798; pc = Int(pop())
        case 0x15ec6: pc = 89800; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.reg(7), 4); put(e1, value, 4); logic(value, 4)
        case 0x15ec8: pc = 89802; r[7] = (r[7] << 16) | (r[7] >> 16); logic(r[7], 4)
        case 0x15eca: pc = 89804; setRegister(7, UInt32(bitPattern: sign(r[7], 2)), 4); logic(r[7], 4)
        case 0x15ecc: pc = 89810; let e0 = resolve(.memory(Int(long(89806)) & 0xffffff), 2); let source = get(e0, 2); divide(7, source, signed: false)
        case 0x15ed2: pc = 89812; r[7] = (r[7] << 16) | (r[7] >> 16); logic(r[7], 4)
        case 0x15ed4: pc = 89814; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(7), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x15ed6: pc = 89816; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x15ed8: pc = 89818; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(3), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x15eda: pc = 89824; let e0 = resolve(.memory(Int(long(89820)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x15ee0: pc = 89828; let e0 = resolve(.indexed(8, 7, false, 1), 1); let value = get(e0, 1); let e1 = resolve(.reg(2), 1); put(e1, value, 1); logic(value, 1)
        case 0x15ee4: pc = 89830; let e0 = resolve(.reg(2), 1); let source = get(e0, 1); let e1 = resolve(.reg(2), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = add(destination, source, 1); put(e1, value, 1)
        case 0x15ee6: pc = 89832; setRegister(2, UInt32(bitPattern: sign(r[2], 1)), 2); logic(r[2], 2)
        case 0x15ee8: pc = 89834; let e0 = resolve(.reg(3), 2); let source = get(e0, 2); r[2] = UInt32(bitPattern: sign(r[2], 2) &* sign(source, 2)); logic(r[2], 4)
        case 0x15eea: pc = 89836; let e0 = resolve(.immediate(8), 4); let count = get(e0, 4); let e1 = resolve(.reg(2), 4); let value = shift(get(e1, 4), count, 4, 0); put(e1, value, 4)
        case 0x15eec: pc = 89840; let e0 = resolve(.indexed(8, 7, false, 13), 1); let value = get(e0, 1); let e1 = resolve(.reg(1), 1); put(e1, value, 1); logic(value, 1)
        case 0x15ef0: pc = 89842; setRegister(1, UInt32(bitPattern: sign(r[1], 1)), 2); logic(r[1], 2)
        case 0x15ef2: pc = 89844; let e0 = resolve(.immediate(5), 4); let count = get(e0, 4); let e1 = resolve(.reg(1), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x15ef4: pc = 89846; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15ef6: pc = 89848; let e0 = resolve(.reg(2), 2); let value = subtract(0, get(e0, 2), 2, extend: false); put(e0, value, 2)
        case 0x15ef8: pc = 89850; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(5), 2); put(e1, value, 2); logic(value, 2)
        case 0x15efa: pc = 89854; let e0 = resolve(.indexed(8, 7, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.reg(2), 1); put(e1, value, 1); logic(value, 1)
        case 0x15efe: pc = 89856; setRegister(2, UInt32(bitPattern: sign(r[2], 1)), 2); logic(r[2], 2)
        default: fail("Untranslated game address")
        }
    }
}
