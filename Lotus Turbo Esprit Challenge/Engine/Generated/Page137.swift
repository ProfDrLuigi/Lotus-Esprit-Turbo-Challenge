// Generated 68000 game labels $013700–$0137FF.
extension LotusMachine {
    func page137() {
        switch pc {
        case 0x13700: pc = 79622; let e0 = resolve(.memory(Int(long(79618)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13706: pc = 79626; let e0 = resolve(.immediate(word(79624)), 2); let source = get(e0, 2); r[0] = (r[0] & 65535) &* source; logic(r[0], 4)
        case 0x1370a: pc = 79628; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ UInt32(bitPattern: sign(source, 2))
        case 0x1370c: pc = 79630; r[0] = UInt32(bitPattern: sign(byte(79629), 1)); logic(r[0], 4)
        case 0x1370e: pc = 79636; let e0 = resolve(.indexed(9, 0, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.indexed(10, 0, false, 10), 1); put(e1, value, 1); logic(value, 1)
        case 0x13714: pc = 79640; if !condition(1) {     setRegister(0, r[0] &- 1, 2);     if r[0] & 65535 != 65535 { pc = (79638 + Int(sign(word(79638), 2))) } }
        case 0x13718: pc = 79644; let e0 = resolve(.immediate(word(79642)), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1371c: pc = 79648; if condition(4) { pc = (79646 + Int(sign(word(79646), 2))) }
        case 0x13720: pc = 79650; let e0 = resolve(.post(13), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x13722: pc = 79652; let e0 = resolve(.reg(1), 2); logic(get(e0, 2), 2)
        case 0x13724: pc = 79654; if condition(6) { pc = (79654 + Int(sign(byte(79653), 1))) }
        case 0x13726: pc = 79660; let e0 = resolve(.memory(Int(long(79656)) & 0xffffff), 4); push(79660); pc = e0.address
        case 0x1372c: pc = 79664; let e0 = resolve(.immediate(word(79662)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x13730: pc = 79668; let e0 = resolve(.immediate(word(79666)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x13734: pc = 79674; let e0 = resolve(.memory(Int(long(79670)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1373a: pc = 79676; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x1373c: pc = 79682; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(79678)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x13742: pc = 79684; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x13744: pc = 79686; setRegister(1, UInt32(bitPattern: sign(r[1], 2)), 4); logic(r[1], 4)
        case 0x13746: pc = 79690; let e0 = resolve(.immediate(word(79688)), 2); let source = get(e0, 2); divide(1, source, signed: false)
        case 0x1374a: pc = 79692; setRegister(1, UInt32(bitPattern: sign(r[1], 2)), 4); logic(r[1], 4)
        case 0x1374c: pc = 79696; let e0 = resolve(.immediate(word(79694)), 2); let source = get(e0, 2); divide(1, source, signed: false)
        case 0x13750: pc = 79700; let e0 = resolve(.immediate(word(79698)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = add(destination, source, 1); put(e1, value, 1)
        case 0x13754: pc = 79704; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(79702), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x13758: pc = 79706; r[1] = (r[1] << 16) | (r[1] >> 16); logic(r[1], 4)
        case 0x1375a: pc = 79708; setRegister(1, UInt32(bitPattern: sign(r[1], 2)), 4); logic(r[1], 4)
        case 0x1375c: pc = 79712; let e0 = resolve(.immediate(word(79710)), 2); let source = get(e0, 2); divide(1, source, signed: false)
        case 0x13760: pc = 79716; let e0 = resolve(.immediate(word(79714)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = add(destination, source, 1); put(e1, value, 1)
        case 0x13764: pc = 79720; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(79718), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x13768: pc = 79722; r[1] = (r[1] << 16) | (r[1] >> 16); logic(r[1], 4)
        case 0x1376a: pc = 79724; setRegister(1, UInt32(bitPattern: sign(r[1], 2)), 4); logic(r[1], 4)
        case 0x1376c: pc = 79728; let e0 = resolve(.immediate(word(79726)), 2); let source = get(e0, 2); divide(1, source, signed: false)
        case 0x13770: pc = 79732; let e0 = resolve(.immediate(word(79730)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = add(destination, source, 1); put(e1, value, 1)
        case 0x13774: pc = 79736; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(79734), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x13778: pc = 79738; r[1] = (r[1] << 16) | (r[1] >> 16); logic(r[1], 4)
        case 0x1377a: pc = 79742; let e0 = resolve(.immediate(word(79740)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = add(destination, source, 1); put(e1, value, 1)
        case 0x1377e: pc = 79746; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(79744), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x13782: pc = 79748; let e0 = resolve(.reg(7), 2); logic(get(e0, 2), 2)
        case 0x13784: pc = 79750; if condition(6) { pc = (79750 + Int(sign(byte(79749), 1))) }
        case 0x13786: pc = 79754; push(79754); pc = (79752 + Int(sign(word(79752), 2)))
        case 0x1378a: pc = 79756; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1378c: pc = 79758; let e0 = resolve(.reg(8), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x1378e: pc = 79764; let e0 = resolve(.memory(Int(long(79760)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13794: pc = 79768; let e0 = resolve(.indexed(8, 1, false, 0), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x13798: pc = 79770; if condition(4) { pc = (79770 + Int(sign(byte(79769), 1))) }
        case 0x1379a: pc = 79774; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.indexed(8, 1, false, 0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1379e: pc = 79778; let e0 = resolve(.immediate(word(79776)), 2); let source = get(e0, 2); r[1] = (r[1] & 65535) &* source; logic(r[1], 4)
        case 0x137a2: pc = 79784; let e0 = resolve(.memory(Int(long(79780)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x137a8: pc = 79786; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x137aa: pc = 79788; r[1] = UInt32(bitPattern: sign(byte(79787), 1)); logic(r[1], 4)
        case 0x137ac: pc = 79794; let e0 = resolve(.indexed(10, 1, false, 10), 1); let value = get(e0, 1); let e1 = resolve(.indexed(8, 1, false, 0), 1); put(e1, value, 1); logic(value, 1)
        case 0x137b2: pc = 79798; if !condition(1) {     setRegister(1, r[1] &- 1, 2);     if r[1] & 65535 != 65535 { pc = (79796 + Int(sign(word(79796), 2))) } }
        case 0x137b6: pc = 79804; let e0 = resolve(.immediate(word(79800)), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(79802), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x137bc: pc = 79806; let e0 = resolve(.post(15), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x137be: pc = 79810; let e0 = resolve(.immediate(word(79808)), 2); let source = get(e0, 2); let e1 = resolve(.reg(10), 2); let destination = get(e1, 2); _ = source; _ = destination; r[10] = r[10] &+ UInt32(bitPattern: sign(source, 2))
        case 0x137c2: pc = 79812; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(5), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x137c4: pc = 79814; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x137c6: pc = 79818; let e0 = resolve(.immediate(word(79816)), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x137ca: pc = 79822; if condition(6) { pc = (79820 + Int(sign(word(79820), 2))) }
        case 0x137ce: pc = 79826; let e0 = resolve(.immediate(word(79824)), 1); let value = get(e0, 1); let e1 = resolve(.indirect(10), 1); put(e1, value, 1); logic(value, 1)
        case 0x137d2: pc = 79828; pc = Int(pop())
        case 0x137d4: pc = 79834; let e0 = resolve(.memory(Int(long(79830)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x137da: pc = 79840; let e0 = resolve(.memory(Int(long(79836)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x137e0: pc = 79844; let e0 = resolve(.immediate(word(79842)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x137e4: pc = 79846; r[4] = UInt32(bitPattern: sign(byte(79845), 1)); logic(r[4], 4)
        case 0x137e6: pc = 79852; let e0 = resolve(.memory(Int(long(79848)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x137ec: pc = 79854; r[1] = UInt32(bitPattern: sign(byte(79853), 1)); logic(r[1], 4)
        case 0x137ee: pc = 79856; r[7] = UInt32(bitPattern: sign(byte(79855), 1)); logic(r[7], 4)
        case 0x137f0: pc = 79858; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x137f2: pc = 79860; let e0 = resolve(.immediate(5), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x137f4: pc = 79864; let e0 = resolve(.immediate(word(79862)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x137f8: pc = 79866; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x137fa: pc = 79868; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x137fc: pc = 79870; if condition(4) { pc = (79870 + Int(sign(byte(79869), 1))) }
        case 0x137fe: pc = 79872; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        default: fail("Untranslated game address")
        }
    }
}
