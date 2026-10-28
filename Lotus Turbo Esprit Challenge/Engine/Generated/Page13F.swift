// Generated 68000 game labels $013F00–$013FFF.
extension LotusMachine {
    func page13f() {
        switch pc {
        case 0x13f00: pc = 81670; let e0 = resolve(.memory(Int(long(81666)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x13f06: pc = 81672; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x13f08: pc = 81678; let e0 = resolve(.memory(Int(long(81674)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13f0e: pc = 81682; let e0 = resolve(.indexed(8, 0, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x13f12: pc = 81688; let e0 = resolve(.memory(Int(long(81684)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x13f18: pc = 81690; let e0 = resolve(.post(15), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x13f1a: pc = 81692; pc = Int(pop())
        case 0x13f1c: pc = 81698; let e0 = resolve(.memory(Int(long(81694)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x13f22: pc = 81702; let e0 = resolve(.immediate(word(81700)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x13f26: pc = 81708; let e0 = resolve(.memory(Int(long(81704)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x13f2c: pc = 81712; push(81712); pc = (81710 + Int(sign(word(81710), 2)))
        case 0x13f30: pc = 81718; let e0 = resolve(.memory(Int(long(81714)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x13f36: pc = 81724; let e0 = resolve(.memory(Int(long(81720)) & 0xffffff), 4); r[9] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x13f3c: pc = 81728; let e0 = resolve(.immediate(word(81726)), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ UInt32(bitPattern: sign(source, 2))
        case 0x13f40: pc = 81734; let e0 = resolve(.memory(Int(long(81730)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13f46: pc = 81738; push(81738); pc = (81736 + Int(sign(word(81736), 2)))
        case 0x13f4a: pc = 81740; pc = Int(pop())
        case 0x13f4c: pc = 81746; let e0 = resolve(.memory(Int(long(81742)) & 0xffffff), 4); r[9] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x13f52: pc = 81750; let e0 = resolve(.immediate(word(81748)), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ UInt32(bitPattern: sign(source, 2))
        case 0x13f56: pc = 81756; let e0 = resolve(.memory(Int(long(81752)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13f5c: pc = 81758; r[7] = UInt32(bitPattern: sign(byte(81757), 1)); logic(r[7], 4)
        case 0x13f5e: pc = 81760; r[5] = UInt32(bitPattern: sign(byte(81759), 1)); logic(r[5], 4)
        case 0x13f60: pc = 81762; r[6] = UInt32(bitPattern: sign(byte(81761), 1)); logic(r[6], 4)
        case 0x13f62: pc = 81764; let e0 = resolve(.post(9), 4); let value = get(e0, 4); let e1 = resolve(.post(8), 4); put(e1, value, 4); logic(value, 4)
        case 0x13f64: pc = 81766; let e0 = resolve(.post(9), 4); let value = get(e0, 4); let e1 = resolve(.post(8), 4); put(e1, value, 4); logic(value, 4)
        case 0x13f66: pc = 81768; let e0 = resolve(.post(9), 4); let value = get(e0, 4); let e1 = resolve(.post(8), 4); put(e1, value, 4); logic(value, 4)
        case 0x13f68: pc = 81770; let e0 = resolve(.post(9), 4); let value = get(e0, 4); let e1 = resolve(.post(8), 4); put(e1, value, 4); logic(value, 4)
        case 0x13f6a: pc = 81772; let e0 = resolve(.post(9), 4); let value = get(e0, 4); let e1 = resolve(.post(8), 4); put(e1, value, 4); logic(value, 4)
        case 0x13f6c: pc = 81774; let e0 = resolve(.post(9), 4); let value = get(e0, 4); let e1 = resolve(.post(8), 4); put(e1, value, 4); logic(value, 4)
        case 0x13f6e: pc = 81776; let e0 = resolve(.post(9), 4); let value = get(e0, 4); let e1 = resolve(.post(8), 4); put(e1, value, 4); logic(value, 4)
        case 0x13f70: pc = 81778; let e0 = resolve(.post(9), 4); let value = get(e0, 4); let e1 = resolve(.post(8), 4); put(e1, value, 4); logic(value, 4)
        case 0x13f72: pc = 81780; let e0 = resolve(.post(9), 4); let value = get(e0, 4); let e1 = resolve(.post(8), 4); put(e1, value, 4); logic(value, 4)
        case 0x13f74: pc = 81782; let e0 = resolve(.post(9), 4); let value = get(e0, 4); let e1 = resolve(.post(8), 4); put(e1, value, 4); logic(value, 4)
        case 0x13f76: pc = 81786; let e0 = resolve(.immediate(word(81784)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x13f7a: pc = 81790; if !condition(1) {     setRegister(6, r[6] &- 1, 2);     if r[6] & 65535 != 65535 { pc = (81788 + Int(sign(word(81788), 2))) } }
        case 0x13f7e: pc = 81794; let e0 = resolve(.immediate(word(81792)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &- UInt32(bitPattern: sign(source, 2))
        case 0x13f82: pc = 81798; let e0 = resolve(.immediate(word(81796)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x13f86: pc = 81802; if !condition(1) {     setRegister(5, r[5] &- 1, 2);     if r[5] & 65535 != 65535 { pc = (81800 + Int(sign(word(81800), 2))) } }
        case 0x13f8a: pc = 81806; let e0 = resolve(.immediate(word(81804)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &- UInt32(bitPattern: sign(source, 2))
        case 0x13f8e: pc = 81810; let e0 = resolve(.immediate(word(81808)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x13f92: pc = 81814; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (81812 + Int(sign(word(81812), 2))) } }
        case 0x13f96: pc = 81820; let e0 = resolve(.memory(Int(long(81816)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13f9c: pc = 81822; r[6] = UInt32(bitPattern: sign(byte(81821), 1)); logic(r[6], 4)
        case 0x13f9e: pc = 81824; r[7] = UInt32(bitPattern: sign(byte(81823), 1)); logic(r[7], 4)
        case 0x13fa0: pc = 81828; let e0 = resolve(.indirect(8), 4); let value = get(e0, 4); let e1 = resolve(.offset(8, Int(sign(word(81826), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x13fa4: pc = 81830; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x13fa6: pc = 81834; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (81832 + Int(sign(word(81832), 2))) } }
        case 0x13faa: pc = 81838; let e0 = resolve(.immediate(word(81836)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x13fae: pc = 81842; if !condition(1) {     setRegister(6, r[6] &- 1, 2);     if r[6] & 65535 != 65535 { pc = (81840 + Int(sign(word(81840), 2))) } }
        case 0x13fb2: pc = 81844; pc = Int(pop())
        case 0x13fb4: pc = 81850; let e0 = resolve(.memory(Int(long(81846)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x13fba: pc = 81860; let e0 = resolve(.immediate(long(81852)), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(81856)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x13fc4: pc = 81866; let e0 = resolve(.memory(Int(long(81862)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13fca: pc = 81872; let e0 = resolve(.memory(Int(long(81868)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x13fd0: pc = 81874; let e0 = resolve(.reg(3), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x13fd2: pc = 81878; let e0 = resolve(.indexed(8, 3, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x13fd6: pc = 81882; if condition(7) { pc = (81880 + Int(sign(word(81880), 2))) }
        case 0x13fda: pc = 81888; let e0 = resolve(.memory(Int(long(81884)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13fe0: pc = 81890; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x13fe2: pc = 81894; let e0 = resolve(.immediate(word(81892)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x13fe6: pc = 81896; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x13fe8: pc = 81898; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x13fea: pc = 81906; let e0 = resolve(.memory(Int(long(81900)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.indexed(9, 1, false, 0), 4); put(e1, value, 4); logic(value, 4)
        case 0x13ff2: pc = 81910; let e0 = resolve(.immediate(word(81908)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x13ff6: pc = 81912; if condition(6) { pc = (81912 + Int(sign(byte(81911), 1))) }
        case 0x13ff8: pc = 81916; let e0 = resolve(.immediate(word(81914)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x13ffc: pc = 81920; let e0 = resolve(.immediate(word(81918)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        default: fail("Untranslated game address")
        }
    }
}
