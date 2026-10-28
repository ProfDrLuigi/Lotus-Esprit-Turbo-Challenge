// Generated 68000 game labels $017E00–$017EFF.
extension LotusMachine {
    func page17e() {
        switch pc {
        case 0x17e04: pc = 97802; let e0 = resolve(.memory(Int(long(97798)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x17e0a: pc = 97804; let e0 = resolve(.reg(1), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x17e0c: pc = 97806; r[1] = (r[1] << 16) | (r[1] >> 16); logic(r[1], 4)
        case 0x17e0e: pc = 97808; setRegister(1, UInt32(bitPattern: sign(r[1], 2)), 4); logic(r[1], 4)
        case 0x17e10: pc = 97814; let e0 = resolve(.memory(Int(long(97810)) & 0xffffff), 2); let source = get(e0, 2); divide(1, source, signed: false)
        case 0x17e16: pc = 97816; r[1] = (r[1] << 16) | (r[1] >> 16); logic(r[1], 4)
        case 0x17e18: pc = 97818; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(1), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x17e1a: pc = 97824; let e0 = resolve(.memory(Int(long(97820)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x17e20: pc = 97826; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ UInt32(bitPattern: sign(source, 2))
        case 0x17e22: pc = 97830; let e0 = resolve(.immediate(word(97828)), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ UInt32(bitPattern: sign(source, 2))
        case 0x17e26: pc = 97834; let e0 = resolve(.immediate(word(97832)), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x17e2a: pc = 97836; let e0 = resolve(.pre(9), 4); let value = get(e0, 4); let e1 = resolve(.pre(8), 4); put(e1, value, 4); logic(value, 4)
        case 0x17e2c: pc = 97838; let e0 = resolve(.pre(9), 4); let value = get(e0, 4); let e1 = resolve(.pre(8), 4); put(e1, value, 4); logic(value, 4)
        case 0x17e2e: pc = 97840; let e0 = resolve(.immediate(8), 4); let source = get(e0, 4); let e1 = resolve(.reg(9), 4); let destination = get(e1, 4); _ = source; _ = destination; r[9] = r[9] &- source
        case 0x17e30: pc = 97844; if !condition(1) {     setRegister(6, r[6] &- 1, 2);     if r[6] & 65535 != 65535 { pc = (97842 + Int(sign(word(97842), 2))) } }
        case 0x17e34: pc = 97846; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 7); put(e1, value, 2)
        case 0x17e36: pc = 97850; let e0 = resolve(.immediate(word(97848)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x17e3a: pc = 97852; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x17e3c: pc = 97856; let e0 = resolve(.immediate(word(97854)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x17e40: pc = 97860; let e0 = resolve(.immediate(word(97858)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination ^ source; put(e1, value, 2); logic(value, 2)
        case 0x17e44: pc = 97864; let e0 = resolve(.immediate(word(97862)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination | source; put(e1, value, 2); logic(value, 2)
        case 0x17e48: pc = 97870; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(97866)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x17e4e: pc = 97872; let e0 = resolve(.immediate(2), 4); let count = get(e0, 4); let e1 = resolve(.reg(1), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x17e50: pc = 97874; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x17e52: pc = 97880; let e0 = resolve(.memory(Int(long(97876)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x17e58: pc = 97882; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(10), 2); let destination = get(e1, 2); _ = source; _ = destination; r[10] = r[10] &+ UInt32(bitPattern: sign(source, 2))
        case 0x17e5a: pc = 97892; let e0 = resolve(.memory(Int(long(97884)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(97888)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x17e64: pc = 97898; let e0 = resolve(.memory(Int(long(97894)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x17e6a: pc = 97906; let e0 = resolve(.immediate(word(97900)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(97902)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x17e72: pc = 97908; if condition(6) { pc = (97908 + Int(sign(byte(97907), 1))) }
        case 0x17e74: pc = 97914; let e0 = resolve(.memory(Int(long(97910)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x17e7a: pc = 97918; push(97918); pc = (97916 + Int(sign(word(97916), 2)))
        case 0x17e7e: pc = 97922; push(97922); pc = (97920 + Int(sign(word(97920), 2)))
        case 0x17e82: pc = 97926; push(97926); pc = (97924 + Int(sign(word(97924), 2)))
        case 0x17e86: pc = 97930; push(97930); pc = (97928 + Int(sign(word(97928), 2)))
        case 0x17e8a: pc = 97934; let e0 = resolve(.memory(103454), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x17e8e: pc = 97938; let e0 = resolve(.memory(103456), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x17e92: pc = 97942; let e0 = resolve(.memory(109048), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x17e96: pc = 97946; let e0 = resolve(.memory(109230), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x17e9a: pc = 97948; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x17e9c: pc = 97950; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x17e9e: pc = 97952; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x17ea0: pc = 97954; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x17ea2: pc = 97956; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x17ea4: pc = 97958; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination | source; put(e1, value, 2); logic(value, 2)
        case 0x17ea6: pc = 97960; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination | source; put(e1, value, 2); logic(value, 2)
        case 0x17ea8: pc = 97962; let e0 = resolve(.reg(3), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination | source; put(e1, value, 2); logic(value, 2)
        case 0x17eaa: pc = 97964; if condition(7) { pc = (97964 + Int(sign(byte(97963), 1))) }
        case 0x17eac: pc = 97966; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x17eae: pc = 97968; if condition(4) { pc = (97968 + Int(sign(byte(97967), 1))) }
        case 0x17eb0: pc = 97970; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x17eb2: pc = 97972; if condition(4) { pc = (97972 + Int(sign(byte(97971), 1))) }
        case 0x17eb4: pc = 97974; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x17eb6: pc = 97976; if condition(4) { pc = (97976 + Int(sign(byte(97975), 1))) }
        case 0x17eb8: pc = 97978; if condition(5) { pc = (97978 + Int(sign(byte(97977), 1))) }
        case 0x17eba: pc = 97980; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x17ebc: pc = 97982; if condition(4) { pc = (97982 + Int(sign(byte(97981), 1))) }
        case 0x17ebe: pc = 97984; if condition(5) { pc = (97984 + Int(sign(byte(97983), 1))) }
        case 0x17ec0: pc = 97986; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x17ec2: pc = 97988; if condition(4) { pc = (97988 + Int(sign(byte(97987), 1))) }
        case 0x17ec4: pc = 97990; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x17ec6: pc = 97992; if condition(4) { pc = (97992 + Int(sign(byte(97991), 1))) }
        case 0x17ec8: pc = 97994; if condition(5) { pc = (97994 + Int(sign(byte(97993), 1))) }
        case 0x17eca: pc = 97996; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x17ecc: pc = 97998; if condition(4) { pc = (97998 + Int(sign(byte(97997), 1))) }
        case 0x17ece: pc = 98000; if condition(5) { pc = (98000 + Int(sign(byte(97999), 1))) }
        case 0x17ed0: pc = 98002; let e0 = resolve(.reg(8), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x17ed2: pc = 98004; let e0 = resolve(.reg(10), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x17ed4: pc = 98008; push(98008); pc = (98006 + Int(sign(word(98006), 2)))
        case 0x17ed8: pc = 98010; let e0 = resolve(.post(15), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x17eda: pc = 98012; let e0 = resolve(.post(15), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x17edc: pc = 98016; push(98016); pc = (98014 + Int(sign(word(98014), 2)))
        case 0x17ee0: pc = 98018; pc = (98018 + Int(sign(byte(98017), 1)))
        case 0x17ee2: pc = 98020; let e0 = resolve(.reg(8), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x17ee4: pc = 98022; let e0 = resolve(.reg(10), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x17ee6: pc = 98026; push(98026); pc = (98024 + Int(sign(word(98024), 2)))
        case 0x17eea: pc = 98028; let e0 = resolve(.post(15), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x17eec: pc = 98030; let e0 = resolve(.post(15), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x17eee: pc = 98034; push(98034); pc = (98032 + Int(sign(word(98032), 2)))
        case 0x17ef2: pc = 98036; pc = (98036 + Int(sign(byte(98035), 1)))
        case 0x17ef4: pc = 98038; let e0 = resolve(.reg(8), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x17ef6: pc = 98040; let e0 = resolve(.reg(10), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x17ef8: pc = 98044; push(98044); pc = (98042 + Int(sign(word(98042), 2)))
        case 0x17efc: pc = 98046; let e0 = resolve(.post(15), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x17efe: pc = 98048; let e0 = resolve(.post(15), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        default: fail("Untranslated game address")
        }
    }
}
