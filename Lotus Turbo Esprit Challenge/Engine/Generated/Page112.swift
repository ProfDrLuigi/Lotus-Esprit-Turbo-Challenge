// Generated 68000 game labels $011200–$0112FF.
extension LotusMachine {
    func page112() {
        switch pc {
        case 0x11202: pc = 70150; push(70150); pc = (70148 + Int(sign(word(70148), 2)))
        case 0x11206: pc = 70158; let e0 = resolve(.immediate(word(70152)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70154)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1120e: pc = 70166; let e0 = resolve(.immediate(word(70160)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70162)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11216: pc = 70174; let e0 = resolve(.immediate(word(70168)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70170)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1121e: pc = 70182; let e0 = resolve(.immediate(word(70176)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70178)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11226: pc = 70188; let e0 = resolve(.memory(Int(long(70184)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x1122c: pc = 70194; let e0 = resolve(.memory(Int(long(70190)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11232: pc = 70198; push(70198); pc = (70196 + Int(sign(word(70196), 2)))
        case 0x11236: pc = 70204; let e0 = resolve(.memory(Int(long(70200)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1123c: pc = 70208; if condition(6) { pc = (70206 + Int(sign(word(70206), 2))) }
        case 0x11240: pc = 70214; let e0 = resolve(.memory(Int(long(70210)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11246: pc = 70216; if condition(7) { pc = (70216 + Int(sign(byte(70215), 1))) }
        case 0x11248: pc = 70222; let e0 = resolve(.memory(Int(long(70218)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1124e: pc = 70226; push(70226); pc = (70224 + Int(sign(word(70224), 2)))
        case 0x11252: pc = 70230; push(70230); pc = (70228 + Int(sign(word(70228), 2)))
        case 0x11256: pc = 70236; let e0 = resolve(.memory(Int(long(70232)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x1125c: pc = 70238; r[0] = UInt32(bitPattern: sign(byte(70237), 1)); logic(r[0], 4)
        case 0x1125e: pc = 70242; push(70242); pc = (70240 + Int(sign(word(70240), 2)))
        case 0x11262: pc = 70246; push(70246); pc = (70244 + Int(sign(word(70244), 2)))
        case 0x11266: pc = 70254; let e0 = resolve(.immediate(word(70248)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70250)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1126e: pc = 70262; let e0 = resolve(.immediate(word(70256)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70258)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11276: pc = 70270; let e0 = resolve(.immediate(word(70264)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70266)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1127e: pc = 70278; let e0 = resolve(.immediate(word(70272)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70274)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11286: pc = 70284; let e0 = resolve(.memory(Int(long(70280)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x1128c: pc = 70290; let e0 = resolve(.memory(Int(long(70286)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11292: pc = 70294; push(70294); pc = (70292 + Int(sign(word(70292), 2)))
        case 0x11296: pc = 70300; let e0 = resolve(.memory(Int(long(70296)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1129c: pc = 70304; if condition(6) { pc = (70302 + Int(sign(word(70302), 2))) }
        case 0x112a0: pc = 70310; let e0 = resolve(.memory(Int(long(70306)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x112a6: pc = 70312; if condition(7) { pc = (70312 + Int(sign(byte(70311), 1))) }
        case 0x112a8: pc = 70318; let e0 = resolve(.memory(Int(long(70314)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x112ae: pc = 70322; push(70322); pc = (70320 + Int(sign(word(70320), 2)))
        case 0x112b2: pc = 70326; push(70326); pc = (70324 + Int(sign(word(70324), 2)))
        case 0x112b6: pc = 70332; let e0 = resolve(.memory(Int(long(70328)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x112bc: pc = 70334; r[0] = UInt32(bitPattern: sign(byte(70333), 1)); logic(r[0], 4)
        case 0x112be: pc = 70338; push(70338); pc = (70336 + Int(sign(word(70336), 2)))
        case 0x112c2: pc = 70342; push(70342); pc = (70340 + Int(sign(word(70340), 2)))
        case 0x112c6: pc = 70350; let e0 = resolve(.immediate(word(70344)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70346)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x112ce: pc = 70358; let e0 = resolve(.immediate(word(70352)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70354)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x112d6: pc = 70366; let e0 = resolve(.immediate(word(70360)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70362)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x112de: pc = 70374; let e0 = resolve(.immediate(word(70368)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70370)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x112e6: pc = 70380; let e0 = resolve(.memory(Int(long(70376)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x112ec: pc = 70386; let e0 = resolve(.memory(Int(long(70382)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x112f2: pc = 70390; push(70390); pc = (70388 + Int(sign(word(70388), 2)))
        case 0x112f6: pc = 70396; let e0 = resolve(.memory(Int(long(70392)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x112fc: pc = 70400; if condition(6) { pc = (70398 + Int(sign(word(70398), 2))) }
        default: fail("Untranslated game address")
        }
    }
}
