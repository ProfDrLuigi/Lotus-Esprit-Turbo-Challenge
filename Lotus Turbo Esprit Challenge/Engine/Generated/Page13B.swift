// Generated 68000 game labels $013B00–$013BFF.
extension LotusMachine {
    func page13b() {
        switch pc {
        case 0x13b00: pc = 80644; let e0 = resolve(.immediate(word(80642)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = add(destination, source, 1); put(e1, value, 1)
        case 0x13b04: pc = 80648; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(80646), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x13b08: pc = 80654; let e0 = resolve(.memory(Int(long(80650)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13b0e: pc = 80660; let e0 = resolve(.memory(Int(long(80656)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13b14: pc = 80664; let e0 = resolve(.immediate(word(80662)), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x13b18: pc = 80666; let e0 = resolve(.post(8), 1); let value = get(e0, 1); let e1 = resolve(.post(9), 1); put(e1, value, 1); logic(value, 1)
        case 0x13b1a: pc = 80670; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (80668 + Int(sign(word(80668), 2))) } }
        case 0x13b1e: pc = 80676; let e0 = resolve(.memory(Int(long(80672)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13b24: pc = 80678; r[7] = UInt32(bitPattern: sign(byte(80677), 1)); logic(r[7], 4)
        case 0x13b26: pc = 80680; let e0 = resolve(.post(8), 1); let value = get(e0, 1); let e1 = resolve(.post(9), 1); put(e1, value, 1); logic(value, 1)
        case 0x13b28: pc = 80684; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (80682 + Int(sign(word(80682), 2))) } }
        case 0x13b2c: pc = 80690; let e0 = resolve(.memory(Int(long(80686)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13b32: pc = 80692; r[7] = UInt32(bitPattern: sign(byte(80691), 1)); logic(r[7], 4)
        case 0x13b34: pc = 80694; let e0 = resolve(.post(8), 1); let value = get(e0, 1); let e1 = resolve(.post(9), 1); put(e1, value, 1); logic(value, 1)
        case 0x13b36: pc = 80698; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (80696 + Int(sign(word(80696), 2))) } }
        case 0x13b3a: pc = 80704; let e0 = resolve(.memory(Int(long(80700)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13b40: pc = 80706; r[7] = UInt32(bitPattern: sign(byte(80705), 1)); logic(r[7], 4)
        case 0x13b42: pc = 80708; let e0 = resolve(.post(8), 1); let value = get(e0, 1); let e1 = resolve(.post(9), 1); put(e1, value, 1); logic(value, 1)
        case 0x13b44: pc = 80712; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (80710 + Int(sign(word(80710), 2))) } }
        case 0x13b48: pc = 80718; let e0 = resolve(.memory(Int(long(80714)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13b4e: pc = 80724; let e0 = resolve(.memory(Int(long(80720)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x13b54: pc = 80726; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x13b56: pc = 80730; let e0 = resolve(.immediate(word(80728)), 2); let source = get(e0, 2); divide(0, source, signed: false)
        case 0x13b5a: pc = 80732; let e0 = resolve(.reg(0), 2); logic(get(e0, 2), 2)
        case 0x13b5c: pc = 80734; if condition(7) { pc = (80734 + Int(sign(byte(80733), 1))) }
        case 0x13b5e: pc = 80738; let e0 = resolve(.immediate(word(80736)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = add(destination, source, 1); put(e1, value, 1)
        case 0x13b62: pc = 80740; pc = (80740 + Int(sign(byte(80739), 1)))
        case 0x13b64: pc = 80744; let e0 = resolve(.immediate(word(80742)), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x13b68: pc = 80746; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.indirect(9), 1); put(e1, value, 1); logic(value, 1)
        case 0x13b6a: pc = 80748; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x13b6c: pc = 80752; let e0 = resolve(.immediate(word(80750)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = add(destination, source, 1); put(e1, value, 1)
        case 0x13b70: pc = 80756; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(80754), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x13b74: pc = 80762; let e0 = resolve(.memory(Int(long(80758)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13b7a: pc = 80768; let e0 = resolve(.memory(Int(long(80764)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x13b80: pc = 80772; let e0 = resolve(.immediate(word(80770)), 2); let source = get(e0, 2); r[0] = (r[0] & 65535) &* source; logic(r[0], 4)
        case 0x13b84: pc = 80776; let e0 = resolve(.immediate(word(80774)), 2); let source = get(e0, 2); divide(0, source, signed: false)
        case 0x13b88: pc = 80778; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x13b8a: pc = 80782; let e0 = resolve(.immediate(word(80780)), 2); let source = get(e0, 2); divide(0, source, signed: false)
        case 0x13b8e: pc = 80786; let e0 = resolve(.immediate(word(80784)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = add(destination, source, 1); put(e1, value, 1)
        case 0x13b92: pc = 80790; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(80788), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x13b96: pc = 80792; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x13b98: pc = 80794; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x13b9a: pc = 80798; let e0 = resolve(.immediate(word(80796)), 2); let source = get(e0, 2); divide(0, source, signed: false)
        case 0x13b9e: pc = 80802; let e0 = resolve(.immediate(word(80800)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = add(destination, source, 1); put(e1, value, 1)
        case 0x13ba2: pc = 80806; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(80804), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x13ba6: pc = 80808; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x13ba8: pc = 80810; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x13baa: pc = 80814; let e0 = resolve(.immediate(word(80812)), 2); let source = get(e0, 2); divide(0, source, signed: false)
        case 0x13bae: pc = 80818; let e0 = resolve(.immediate(word(80816)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = add(destination, source, 1); put(e1, value, 1)
        case 0x13bb2: pc = 80822; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(80820), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x13bb6: pc = 80824; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x13bb8: pc = 80826; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x13bba: pc = 80830; let e0 = resolve(.immediate(word(80828)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = add(destination, source, 1); put(e1, value, 1)
        case 0x13bbe: pc = 80834; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(80832), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x13bc2: pc = 80836; pc = Int(pop())
        default: fail("Untranslated game address")
        }
    }
}
