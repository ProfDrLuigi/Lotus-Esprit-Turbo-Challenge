// Generated 68000 game labels $014000–$0140FF.
extension LotusMachine {
    func page140() {
        switch pc {
        case 0x14000: pc = 81922; if condition(6) { pc = (81922 + Int(sign(byte(81921), 1))) }
        case 0x14002: pc = 81926; let e0 = resolve(.immediate(word(81924)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x14006: pc = 81930; let e0 = resolve(.immediate(word(81928)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1400a: pc = 81932; if condition(6) { pc = (81932 + Int(sign(byte(81931), 1))) }
        case 0x1400c: pc = 81936; let e0 = resolve(.immediate(word(81934)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x14010: pc = 81940; let e0 = resolve(.immediate(word(81938)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x14014: pc = 81942; if condition(6) { pc = (81942 + Int(sign(byte(81941), 1))) }
        case 0x14016: pc = 81946; let e0 = resolve(.immediate(word(81944)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1401a: pc = 81950; let e0 = resolve(.immediate(word(81948)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1401e: pc = 81952; if condition(6) { pc = (81952 + Int(sign(byte(81951), 1))) }
        case 0x14020: pc = 81956; let e0 = resolve(.immediate(word(81954)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x14024: pc = 81962; let e0 = resolve(.memory(Int(long(81958)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x1402a: pc = 81966; push(81966); pc = (81964 + Int(sign(word(81964), 2)))
        case 0x1402e: pc = 81972; let e0 = resolve(.memory(Int(long(81968)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x14034: pc = 81978; let e0 = resolve(.memory(Int(long(81974)) & 0xffffff), 4); r[9] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x1403a: pc = 81984; let e0 = resolve(.memory(Int(long(81980)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x14040: pc = 81988; push(81988); pc = (81986 + Int(sign(word(81986), 2)))
        case 0x14044: pc = 81994; let e0 = resolve(.memory(Int(long(81990)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(7), 4); put(e1, value, 4); logic(value, 4)
        case 0x1404a: pc = 82000; let e0 = resolve(.reg(7), 4); let source = get(e0, 4); let e1 = resolve(.memory(Int(long(81996)) & 0xffffff), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x14050: pc = 82006; let e0 = resolve(.memory(Int(long(82002)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x14056: pc = 82008; if condition(6) { pc = (82008 + Int(sign(byte(82007), 1))) }
        case 0x14058: pc = 82014; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(82010)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1405e: pc = 82022; let e0 = resolve(.immediate(word(82016)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(82018)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x14066: pc = 82026; if condition(6) { pc = (82024 + Int(sign(word(82024), 2))) }
        case 0x1406a: pc = 82032; let e0 = resolve(.memory(Int(long(82028)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x14070: pc = 82038; let e0 = resolve(.immediate(long(82034)), 4); let value = get(e0, 4); let e1 = resolve(.post(8), 4); put(e1, value, 4); logic(value, 4)
        case 0x14076: pc = 82044; let e0 = resolve(.immediate(long(82040)), 4); let value = get(e0, 4); let e1 = resolve(.post(8), 4); put(e1, value, 4); logic(value, 4)
        case 0x1407c: pc = 82050; let e0 = resolve(.immediate(long(82046)), 4); let value = get(e0, 4); let e1 = resolve(.post(8), 4); put(e1, value, 4); logic(value, 4)
        case 0x14082: pc = 82056; let e0 = resolve(.immediate(long(82052)), 4); let value = get(e0, 4); let e1 = resolve(.post(8), 4); put(e1, value, 4); logic(value, 4)
        case 0x14088: pc = 82058; pc = Int(pop())
        case 0x1408a: pc = 82062; push(82062); pc = (82060 + Int(sign(word(82060), 2)))
        case 0x1408e: pc = 82064; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x14090: pc = 82070; let e0 = resolve(.memory(Int(long(82066)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x14096: pc = 82074; push(82074); pc = (82072 + Int(sign(word(82072), 2)))
        case 0x1409a: pc = 82076; pc = Int(pop())
        case 0x1409c: pc = 82082; let e0 = resolve(.memory(Int(long(82078)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x140a2: pc = 82084; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x140a4: pc = 82090; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(82086)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x140aa: pc = 82096; let e0 = resolve(.memory(Int(long(82092)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x140b0: pc = 82100; let e0 = resolve(.immediate(word(82098)), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x140b4: pc = 82102; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x140b6: pc = 82106; if !condition(1) {     setRegister(6, r[6] &- 1, 2);     if r[6] & 65535 != 65535 { pc = (82104 + Int(sign(word(82104), 2))) } }
        case 0x140ba: pc = 82112; let e0 = resolve(.memory(Int(long(82108)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x140c0: pc = 82114; r[6] = UInt32(bitPattern: sign(byte(82113), 1)); logic(r[6], 4)
        case 0x140c2: pc = 82116; let e0 = resolve(.post(10), 2); put(e0, 0, 2); logic(0, 2)
        case 0x140c4: pc = 82120; if !condition(1) {     setRegister(6, r[6] &- 1, 2);     if r[6] & 65535 != 65535 { pc = (82118 + Int(sign(word(82118), 2))) } }
        case 0x140c8: pc = 82122; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x140ca: pc = 82128; let e0 = resolve(.memory(Int(long(82124)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x140d0: pc = 82130; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x140d2: pc = 82132; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x140d4: pc = 82134; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x140d6: pc = 82136; push(82136); pc = (82136 + Int(sign(byte(82135), 1)))
        case 0x140d8: pc = 82138; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x140da: pc = 82140; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x140dc: pc = 82142; push(82142); pc = (82142 + Int(sign(byte(82141), 1)))
        case 0x140de: pc = 82144; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x140e0: pc = 82146; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x140e2: pc = 82148; push(82148); pc = (82148 + Int(sign(byte(82147), 1)))
        case 0x140e4: pc = 82150; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x140e6: pc = 82152; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x140e8: pc = 82154; push(82154); pc = (82154 + Int(sign(byte(82153), 1)))
        case 0x140ea: pc = 82156; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x140ec: pc = 82158; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ source
        case 0x140ee: pc = 82162; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (82160 + Int(sign(word(82160), 2))) } }
        case 0x140f2: pc = 82168; let e0 = resolve(.memory(Int(long(82164)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x140f8: pc = 82170; r[7] = UInt32(bitPattern: sign(byte(82169), 1)); logic(r[7], 4)
        case 0x140fa: pc = 82172; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.post(9), 4); put(e1, value, 4); logic(value, 4)
        case 0x140fc: pc = 82174; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.post(9), 4); put(e1, value, 4); logic(value, 4)
        case 0x140fe: pc = 82176; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.post(9), 4); put(e1, value, 4); logic(value, 4)
        default: fail("Untranslated game address")
        }
    }
}
