// Generated 68000 game labels $013600–$0136FF.
extension LotusMachine {
    func page136() {
        switch pc {
        case 0x13600: pc = 79366; let e0 = resolve(.memory(Int(long(79362)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13606: pc = 79372; let e0 = resolve(.memory(Int(long(79368)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1360c: pc = 79374; r[7] = UInt32(bitPattern: sign(byte(79373), 1)); logic(r[7], 4)
        case 0x1360e: pc = 79376; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x13610: pc = 79378; if condition(6) { pc = (79378 + Int(sign(byte(79377), 1))) }
        case 0x13612: pc = 79382; let e0 = resolve(.immediate(word(79380)), 2); let value = get(e0, 2); let e1 = resolve(.post(8), 2); put(e1, value, 2); logic(value, 2)
        case 0x13616: pc = 79384; pc = (79384 + Int(sign(byte(79383), 1)))
        case 0x13618: pc = 79390; let e0 = resolve(.memory(Int(long(79386)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1361e: pc = 79392; if condition(7) { pc = (79392 + Int(sign(byte(79391), 1))) }
        case 0x13620: pc = 79394; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x13622: pc = 79396; if condition(6) { pc = (79396 + Int(sign(byte(79395), 1))) }
        case 0x13624: pc = 79400; let e0 = resolve(.immediate(word(79398)), 2); let value = get(e0, 2); let e1 = resolve(.post(8), 2); put(e1, value, 2); logic(value, 2)
        case 0x13628: pc = 79402; pc = (79402 + Int(sign(byte(79401), 1)))
        case 0x1362a: pc = 79404; let e0 = resolve(.post(9), 2); let value = get(e0, 2); let e1 = resolve(.post(8), 2); put(e1, value, 2); logic(value, 2)
        case 0x1362c: pc = 79406; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1362e: pc = 79410; let e0 = resolve(.immediate(word(79408)), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x13632: pc = 79412; if condition(6) { pc = (79412 + Int(sign(byte(79411), 1))) }
        case 0x13634: pc = 79414; pc = Int(pop())
        case 0x13636: pc = 79418; push(79418); pc = (79416 + Int(sign(word(79416), 2)))
        case 0x1363a: pc = 79420; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1363c: pc = 79426; let e0 = resolve(.memory(Int(long(79422)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13642: pc = 79434; let e0 = resolve(.indexed(8, 1, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(79430)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1364a: pc = 79440; let e0 = resolve(.memory(Int(long(79436)) & 0xffffff), 4); push(79440); pc = e0.address
        case 0x13650: pc = 79444; let e0 = resolve(.immediate(word(79442)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x13654: pc = 79450; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(79446)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1365a: pc = 79452; r[5] = UInt32(bitPattern: sign(byte(79451), 1)); logic(r[5], 4)
        case 0x1365c: pc = 79454; r[7] = UInt32(bitPattern: sign(byte(79453), 1)); logic(r[7], 4)
        case 0x1365e: pc = 79462; let e0 = resolve(.immediate(word(79456)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(79458)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x13666: pc = 79470; let e0 = resolve(.immediate(word(79464)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(79466)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1366e: pc = 79476; let e0 = resolve(.memory(Int(long(79472)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13674: pc = 79482; let e0 = resolve(.memory(Int(long(79478)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1367a: pc = 79488; let e0 = resolve(.memory(Int(long(79484)) & 0xffffff), 4); r[11] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13680: pc = 79494; let e0 = resolve(.memory(Int(long(79490)) & 0xffffff), 4); r[12] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13686: pc = 79500; let e0 = resolve(.memory(Int(long(79496)) & 0xffffff), 4); r[13] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1368c: pc = 79506; let e0 = resolve(.immediate(word(79502)), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(79504), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x13692: pc = 79508; let e0 = resolve(.post(11), 1); let value = get(e0, 1); let e1 = resolve(.reg(1), 1); put(e1, value, 1); logic(value, 1)
        case 0x13694: pc = 79510; setRegister(1, UInt32(bitPattern: sign(r[1], 1)), 2); logic(r[1], 2)
        case 0x13696: pc = 79512; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x13698: pc = 79514; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x1369a: pc = 79516; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1369c: pc = 79520; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.indexed(12, 2, false, 0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x136a0: pc = 79524; let e0 = resolve(.immediate(word(79522)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x136a4: pc = 79526; if condition(6) { pc = (79526 + Int(sign(byte(79525), 1))) }
        case 0x136a6: pc = 79532; let e0 = resolve(.reg(5), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(79528)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x136ac: pc = 79538; let e0 = resolve(.memory(Int(long(79534)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x136b2: pc = 79540; if condition(7) { pc = (79540 + Int(sign(byte(79539), 1))) }
        case 0x136b4: pc = 79544; let e0 = resolve(.immediate(word(79542)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x136b8: pc = 79546; if condition(6) { pc = (79546 + Int(sign(byte(79545), 1))) }
        case 0x136ba: pc = 79552; let e0 = resolve(.reg(5), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(79548)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x136c0: pc = 79556; let e0 = resolve(.immediate(word(79554)), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x136c4: pc = 79558; if condition(5) { pc = (79558 + Int(sign(byte(79557), 1))) }
        case 0x136c6: pc = 79562; let e0 = resolve(.immediate(word(79560)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x136ca: pc = 79564; if condition(7) { pc = (79564 + Int(sign(byte(79563), 1))) }
        case 0x136cc: pc = 79570; let e0 = resolve(.memory(Int(long(79566)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x136d2: pc = 79572; if condition(7) { pc = (79572 + Int(sign(byte(79571), 1))) }
        case 0x136d4: pc = 79576; let e0 = resolve(.immediate(word(79574)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x136d8: pc = 79578; if condition(7) { pc = (79578 + Int(sign(byte(79577), 1))) }
        case 0x136da: pc = 79582; pc = (79580 + Int(sign(word(79580), 2)))
        case 0x136de: pc = 79584; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x136e0: pc = 79588; let e0 = resolve(.immediate(word(79586)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x136e4: pc = 79590; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x136e6: pc = 79592; let e0 = resolve(.reg(13), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x136e8: pc = 79598; let e0 = resolve(.memory(Int(long(79594)) & 0xffffff), 4); r[13] = UInt32(truncatingIfNeeded: e0.address)
        case 0x136ee: pc = 79602; let e0 = resolve(.immediate(word(79600)), 1); let value = get(e0, 1); let e1 = resolve(.indirect(10), 1); put(e1, value, 1); logic(value, 1)
        case 0x136f2: pc = 79608; let e0 = resolve(.indexed(13, 1, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(79606), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x136f8: pc = 79614; let e0 = resolve(.indexed(13, 1, false, 1), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(79612), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x136fe: pc = 79616; let e0 = resolve(.post(15), 4); r[13] = UInt32(bitPattern: sign(get(e0, 4), 4))
        default: fail("Untranslated game address")
        }
    }
}
