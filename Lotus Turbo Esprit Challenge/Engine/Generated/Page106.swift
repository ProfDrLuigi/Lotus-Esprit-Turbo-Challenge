// Generated 68000 game labels $010600–$0106FF.
extension LotusMachine {
    func page106() {
        switch pc {
        case 0x10602: pc = 67076; r[0] = UInt32(bitPattern: sign(byte(67075), 1)); logic(r[0], 4)
        case 0x10604: pc = 67078; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x10606: pc = 67080; r[1] = UInt32(bitPattern: sign(byte(67079), 1)); logic(r[1], 4)
        case 0x10608: pc = 67084; push(67084); pc = (67082 + Int(sign(word(67082), 2)))
        case 0x1060c: pc = 67092; let e0 = resolve(.immediate(word(67086)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(67088)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10614: pc = 67094; pc = Int(pop())
        case 0x10616: pc = 67098; let e0 = resolve(.memory(67872), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1061a: pc = 67100; r[0] = UInt32(bitPattern: sign(byte(67099), 1)); logic(r[0], 4)
        case 0x1061c: pc = 67102; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1061e: pc = 67104; r[1] = UInt32(bitPattern: sign(byte(67103), 1)); logic(r[1], 4)
        case 0x10620: pc = 67108; push(67108); pc = (67106 + Int(sign(word(67106), 2)))
        case 0x10624: pc = 67116; let e0 = resolve(.immediate(word(67110)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(67112)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1062c: pc = 67118; pc = Int(pop())
        case 0x1062e: pc = 67122; let e0 = resolve(.memory(67872), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x10632: pc = 67126; let e0 = resolve(.offset(10, Int(sign(word(67124), 2))), 1); logic(get(e0, 1), 1)
        case 0x10636: pc = 67128; if condition(7) { pc = (67128 + Int(sign(byte(67127), 1))) }
        case 0x10638: pc = 67134; let e0 = resolve(.memory(Int(long(67130)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1063e: pc = 67136; if condition(7) { pc = (67136 + Int(sign(byte(67135), 1))) }
        case 0x10640: pc = 67140; push(67140); pc = (67138 + Int(sign(word(67138), 2)))
        case 0x10644: pc = 67146; let e0 = resolve(.memory(Int(long(67142)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1064a: pc = 67148; if condition(7) { pc = (67148 + Int(sign(byte(67147), 1))) }
        case 0x1064c: pc = 67152; push(67152); pc = (67150 + Int(sign(word(67150), 2)))
        case 0x10650: pc = 67154; pc = Int(pop())
        case 0x10652: pc = 67158; let e0 = resolve(.immediate(word(67156)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x10654: pc = 67160; let e0 = resolve(.immediate(word(67158)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x10656: pc = 67162; let e0 = resolve(.memory(67898), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1065a: pc = 67166; let e0 = resolve(.memory(67708), 4); r[14] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1065e: pc = 67168; let e0 = resolve(.immediate(2), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 3); put(e1, value, 2)
        case 0x10660: pc = 67172; let e0 = resolve(.indexed(8, 0, false, 0), 4); let value = get(e0, 4); let e1 = resolve(.reg(7), 4); put(e1, value, 4); logic(value, 4)
        case 0x10664: pc = 67176; let e0 = resolve(.immediate(word(67174)), 2); let source = get(e0, 2); r[1] = (r[1] & 65535) &* source; logic(r[1], 4)
        case 0x10668: pc = 67178; let e0 = resolve(.reg(1), 4); let source = get(e0, 4); let e1 = resolve(.reg(14), 4); let destination = get(e1, 4); _ = source; _ = destination; r[14] = r[14] &+ source
        case 0x1066a: pc = 67182; let e0 = resolve(.reg(7), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(67180), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x1066e: pc = 67188; let e0 = resolve(.immediate(word(67184)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(67186), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x10674: pc = 67192; let e0 = resolve(.offset(10, Int(sign(word(67190), 2))), 1); logic(get(e0, 1), 1)
        case 0x10678: pc = 67194; if condition(6) { pc = (67194 + Int(sign(byte(67193), 1))) }
        case 0x1067a: pc = 67196; pc = Int(pop())
        case 0x1067c: pc = 67200; let e0 = resolve(.offset(14, Int(sign(word(67198), 2))), 4); r[12] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x10680: pc = 67204; let e0 = resolve(.offset(14, Int(sign(word(67202), 2))), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x10684: pc = 67208; pc = (67206 + Int(sign(word(67206), 2)))
        case 0x10688: pc = 67212; let e0 = resolve(.immediate(word(67210)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1068c: pc = 67216; if !condition(1) {     setRegister(0, r[0] &- 1, 2);     if r[0] & 65535 != 65535 { pc = (67214 + Int(sign(word(67214), 2))) } }
        case 0x10690: pc = 67222; let e0 = resolve(.immediate(word(67218)), 2); let source = get(e0, 2); let e1 = resolve(.offset(10, Int(sign(word(67220), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination | source; put(e1, value, 2); logic(value, 2)
        case 0x10696: pc = 67230; let e0 = resolve(.offset(10, Int(sign(word(67224), 2))), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(67226)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1069e: pc = 67234; let e0 = resolve(.immediate(word(67232)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x106a2: pc = 67238; if !condition(1) {     setRegister(0, r[0] &- 1, 2);     if r[0] & 65535 != 65535 { pc = (67236 + Int(sign(word(67236), 2))) } }
        case 0x106a6: pc = 67242; let e0 = resolve(.memory(67708), 4); r[14] = UInt32(truncatingIfNeeded: e0.address)
        case 0x106aa: pc = 67250; let e0 = resolve(.offset(14, Int(sign(word(67244), 2))), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(67246)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x106b2: pc = 67258; let e0 = resolve(.offset(14, Int(sign(word(67252), 2))), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(67254)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x106ba: pc = 67266; let e0 = resolve(.offset(14, Int(sign(word(67260), 2))), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(67262)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x106c2: pc = 67274; let e0 = resolve(.offset(14, Int(sign(word(67268), 2))), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(67270)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x106ca: pc = 67276; pc = Int(pop())
        case 0x106cc: pc = 67282; let e0 = resolve(.immediate(word(67278)), 2); let source = get(e0, 2); let e1 = resolve(.offset(10, Int(sign(word(67280), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination | source; put(e1, value, 2); logic(value, 2)
        case 0x106d2: pc = 67290; let e0 = resolve(.offset(10, Int(sign(word(67284), 2))), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(67286)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x106da: pc = 67294; let e0 = resolve(.immediate(word(67292)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x106de: pc = 67298; if !condition(1) {     setRegister(0, r[0] &- 1, 2);     if r[0] & 65535 != 65535 { pc = (67296 + Int(sign(word(67296), 2))) } }
        case 0x106e2: pc = 67302; let e0 = resolve(.memory(67708), 4); r[14] = UInt32(truncatingIfNeeded: e0.address)
        case 0x106e6: pc = 67310; let e0 = resolve(.offset(14, Int(sign(word(67304), 2))), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(67306)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x106ee: pc = 67318; let e0 = resolve(.offset(14, Int(sign(word(67312), 2))), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(67314)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x106f6: pc = 67320; pc = Int(pop())
        case 0x106f8: pc = 67326; let e0 = resolve(.immediate(word(67322)), 2); let source = get(e0, 2); let e1 = resolve(.offset(10, Int(sign(word(67324), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination | source; put(e1, value, 2); logic(value, 2)
        case 0x106fe: pc = 67334; let e0 = resolve(.offset(10, Int(sign(word(67328), 2))), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(67330)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        default: fail("Untranslated game address")
        }
    }
}
