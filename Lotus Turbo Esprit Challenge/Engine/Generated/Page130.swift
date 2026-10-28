// Generated 68000 game labels $013000–$0130FF.
extension LotusMachine {
    func page130() {
        switch pc {
        case 0x13000: pc = 77826; let e0 = resolve(.reg(3), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x13002: pc = 77828; pc = (77828 + Int(sign(byte(77827), 1)))
        case 0x13004: pc = 77832; let e0 = resolve(.immediate(word(77830)), 2); let source = get(e0, 2); r[2] = (r[2] & 65535) &* source; logic(r[2], 4)
        case 0x13008: pc = 77834; r[2] = (r[2] << 16) | (r[2] >> 16); logic(r[2], 4)
        case 0x1300a: pc = 77838; let e0 = resolve(.immediate(word(77836)), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1300e: pc = 77840; if condition(4) { pc = (77840 + Int(sign(byte(77839), 1))) }
        case 0x13010: pc = 77844; let e0 = resolve(.immediate(word(77842)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x13014: pc = 77848; let e0 = resolve(.immediate(word(77846)), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x13018: pc = 77850; if condition(4) { pc = (77850 + Int(sign(byte(77849), 1))) }
        case 0x1301a: pc = 77854; push(77854); pc = (77852 + Int(sign(word(77852), 2)))
        case 0x1301e: pc = 77858; let e0 = resolve(.immediate(word(77856)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x13022: pc = 77860; if condition(4) { pc = (77860 + Int(sign(byte(77859), 1))) }
        case 0x13024: pc = 77862; let e0 = resolve(.reg(1), 2); let value = ~get(e0, 2); put(e0, value, 2); logic(value, 2)
        case 0x13026: pc = 77864; pc = Int(pop())
        case 0x13028: pc = 77868; let e0 = resolve(.immediate(word(77866)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x1302a: pc = 77870; let e0 = resolve(.immediate(word(77868)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x1302c: pc = 77874; let e0 = resolve(.memory(Int(long(77870)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1302e: pc = 77874; let e0 = resolve(.immediate(word(77872)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x13032: pc = 77878; let e0 = resolve(.immediate(word(77876)), 2); let source = get(e0, 2); r[0] = (r[0] & 65535) &* source; logic(r[0], 4)
        case 0x13036: pc = 77884; let e0 = resolve(.memory(Int(long(77880)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1303c: pc = 77886; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x1303e: pc = 77892; let e0 = resolve(.memory(Int(long(77888)) & 0xffffff), 4); r[9] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x13044: pc = 77896; let e0 = resolve(.immediate(word(77894)), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ UInt32(bitPattern: sign(source, 2))
        case 0x13048: pc = 77900; let e0 = resolve(.immediate(word(77898)), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x1304c: pc = 77904; let e0 = resolve(.immediate(word(77902)), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x13050: pc = 77906; let e0 = resolve(.post(8), 1); let value = get(e0, 1); let e1 = resolve(.indirect(9), 1); put(e1, value, 1); logic(value, 1)
        case 0x13052: pc = 77910; let e0 = resolve(.post(8), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(77908), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x13056: pc = 77914; let e0 = resolve(.post(8), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(77912), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x1305a: pc = 77918; let e0 = resolve(.post(8), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(77916), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x1305e: pc = 77922; let e0 = resolve(.immediate(word(77920)), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ UInt32(bitPattern: sign(source, 2))
        case 0x13062: pc = 77926; if !condition(1) {     setRegister(6, r[6] &- 1, 2);     if r[6] & 65535 != 65535 { pc = (77924 + Int(sign(word(77924), 2))) } }
        case 0x13066: pc = 77930; let e0 = resolve(.immediate(word(77928)), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ UInt32(bitPattern: sign(source, 2))
        case 0x1306a: pc = 77934; let e0 = resolve(.immediate(word(77932)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x1306e: pc = 77938; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (77936 + Int(sign(word(77936), 2))) } }
        case 0x13072: pc = 77940; pc = Int(pop())
        case 0x13074: pc = 77944; let e0 = resolve(.immediate(word(77942)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x13076: pc = 77948; let e0 = resolve(.memory(Int(long(77944)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x13078: pc = 77948; let e0 = resolve(.immediate(word(77946)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x1307c: pc = 77954; let e0 = resolve(.memory(Int(long(77950)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x13082: pc = 77956; if condition(6) { pc = (77956 + Int(sign(byte(77955), 1))) }
        case 0x13084: pc = 77958; let e0 = resolve(.reg(0), 2); put(e0, 0, 2); logic(0, 2)
        case 0x13086: pc = 77960; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x13088: pc = 77964; let e0 = resolve(.immediate(word(77962)), 2); let source = get(e0, 2); divide(0, source, signed: false)
        case 0x1308c: pc = 77966; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x1308e: pc = 77970; let e0 = resolve(.immediate(word(77968)), 2); let source = get(e0, 2); divide(0, source, signed: false)
        case 0x13092: pc = 77972; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x13094: pc = 77976; let e0 = resolve(.immediate(word(77974)), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x13098: pc = 77980; push(77980); pc = (77978 + Int(sign(word(77978), 2)))
        case 0x1309c: pc = 77982; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x1309e: pc = 77984; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x130a0: pc = 77988; let e0 = resolve(.immediate(word(77986)), 2); let source = get(e0, 2); divide(0, source, signed: false)
        case 0x130a4: pc = 77990; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x130a6: pc = 77994; let e0 = resolve(.immediate(word(77992)), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x130aa: pc = 77998; push(77998); pc = (77996 + Int(sign(word(77996), 2)))
        case 0x130ae: pc = 78000; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x130b0: pc = 78002; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x130b2: pc = 78006; let e0 = resolve(.immediate(word(78004)), 2); let source = get(e0, 2); divide(0, source, signed: false)
        case 0x130b6: pc = 78008; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x130b8: pc = 78012; let e0 = resolve(.immediate(word(78010)), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x130bc: pc = 78016; push(78016); pc = (78014 + Int(sign(word(78014), 2)))
        case 0x130c0: pc = 78018; pc = Int(pop())
        case 0x130c2: pc = 78024; let e0 = resolve(.memory(Int(long(78020)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x130c8: pc = 78026; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x130ca: pc = 78032; let e0 = resolve(.memory(Int(long(78028)) & 0xffffff), 4); r[9] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x130d0: pc = 78036; let e0 = resolve(.immediate(word(78034)), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ UInt32(bitPattern: sign(source, 2))
        case 0x130d4: pc = 78038; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ UInt32(bitPattern: sign(source, 2))
        case 0x130d6: pc = 78042; let e0 = resolve(.immediate(word(78040)), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x130da: pc = 78046; let e0 = resolve(.immediate(word(78044)), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x130de: pc = 78048; let e0 = resolve(.indirect(8), 1); let value = get(e0, 1); let e1 = resolve(.indirect(9), 1); put(e1, value, 1); logic(value, 1)
        case 0x130e0: pc = 78052; let e0 = resolve(.immediate(word(78050)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x130e4: pc = 78056; let e0 = resolve(.immediate(word(78054)), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ UInt32(bitPattern: sign(source, 2))
        case 0x130e8: pc = 78060; if !condition(1) {     setRegister(6, r[6] &- 1, 2);     if r[6] & 65535 != 65535 { pc = (78058 + Int(sign(word(78058), 2))) } }
        case 0x130ec: pc = 78064; let e0 = resolve(.immediate(word(78062)), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ UInt32(bitPattern: sign(source, 2))
        case 0x130f0: pc = 78068; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (78066 + Int(sign(word(78066), 2))) } }
        case 0x130f4: pc = 78070; pc = Int(pop())
        case 0x130f6: pc = 78076; let e0 = resolve(.memory(Int(long(78072)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x130fc: pc = 78080; let e0 = resolve(.immediate(word(78078)), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        default: fail("Untranslated game address")
        }
    }
}
