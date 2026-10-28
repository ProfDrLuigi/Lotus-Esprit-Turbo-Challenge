// Generated 68000 game labels $010F00–$010FFF.
extension LotusMachine {
    func page10f() {
        switch pc {
        case 0x10f04: pc = 69384; push(69384); pc = (69382 + Int(sign(word(69382), 2)))
        case 0x10f08: pc = 69390; let e0 = resolve(.memory(Int(long(69386)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x10f0e: pc = 69394; if condition(6) { pc = (69392 + Int(sign(word(69392), 2))) }
        case 0x10f12: pc = 69400; let e0 = resolve(.memory(Int(long(69396)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x10f18: pc = 69404; push(69404); pc = (69402 + Int(sign(word(69402), 2)))
        case 0x10f1c: pc = 69410; let e0 = resolve(.memory(Int(long(69406)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x10f22: pc = 69414; if condition(6) { pc = (69412 + Int(sign(word(69412), 2))) }
        case 0x10f26: pc = 69418; let e0 = resolve(.immediate(word(69416)), 2); let value = get(e0, 2); let e1 = resolve(.reg(5), 2); put(e1, value, 2); logic(value, 2)
        case 0x10f2a: pc = 69424; let e0 = resolve(.memory(Int(long(69420)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x10f30: pc = 69426; let e0 = resolve(.reg(5), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x10f32: pc = 69430; let e0 = resolve(.immediate(word(69428)), 2); let source = get(e0, 2); r[0] = (r[0] & 65535) &* source; logic(r[0], 4)
        case 0x10f36: pc = 69432; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(9), 4); let destination = get(e1, 4); _ = source; _ = destination; r[9] = r[9] &+ source
        case 0x10f38: pc = 69434; let e0 = resolve(.reg(9), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x10f3a: pc = 69436; let e0 = resolve(.reg(9), 4); r[11] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x10f3c: pc = 69438; let e0 = resolve(.reg(9), 4); r[12] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x10f3e: pc = 69440; let e0 = resolve(.reg(9), 4); r[13] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x10f40: pc = 69446; let e0 = resolve(.immediate(long(69442)), 4); let source = get(e0, 4); let e1 = resolve(.reg(10), 4); let destination = get(e1, 4); _ = source; _ = destination; r[10] = r[10] &+ source
        case 0x10f46: pc = 69452; let e0 = resolve(.immediate(long(69448)), 4); let source = get(e0, 4); let e1 = resolve(.reg(11), 4); let destination = get(e1, 4); _ = source; _ = destination; r[11] = r[11] &+ source
        case 0x10f4c: pc = 69458; let e0 = resolve(.immediate(long(69454)), 4); let source = get(e0, 4); let e1 = resolve(.reg(12), 4); let destination = get(e1, 4); _ = source; _ = destination; r[12] = r[12] &+ source
        case 0x10f52: pc = 69464; let e0 = resolve(.immediate(long(69460)), 4); let source = get(e0, 4); let e1 = resolve(.reg(13), 4); let destination = get(e1, 4); _ = source; _ = destination; r[13] = r[13] &+ source
        case 0x10f58: pc = 69470; let e0 = resolve(.memory(Int(long(69466)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x10f5e: pc = 69474; let e0 = resolve(.immediate(word(69472)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x10f62: pc = 69478; let e0 = resolve(.immediate(word(69476)), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x10f66: pc = 69480; r[6] = UInt32(bitPattern: sign(byte(69479), 1)); logic(r[6], 4)
        case 0x10f68: pc = 69482; let e0 = resolve(.indirect(9), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x10f6a: pc = 69484; let e0 = resolve(.indirect(10), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination | source; put(e1, value, 4); logic(value, 4)
        case 0x10f6c: pc = 69486; let e0 = resolve(.indirect(11), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination | source; put(e1, value, 4); logic(value, 4)
        case 0x10f6e: pc = 69488; let e0 = resolve(.indirect(12), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination | source; put(e1, value, 4); logic(value, 4)
        case 0x10f70: pc = 69490; let e0 = resolve(.indirect(13), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination | source; put(e1, value, 4); logic(value, 4)
        case 0x10f72: pc = 69492; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.reg(2), 4); put(e1, value, 4); logic(value, 4)
        case 0x10f74: pc = 69494; let e0 = resolve(.reg(0), 4); let value = ~get(e0, 4); put(e0, value, 4); logic(value, 4)
        case 0x10f76: pc = 69496; let e0 = resolve(.indirect(8), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x10f78: pc = 69498; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(1), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination & source; put(e1, value, 4); logic(value, 4)
        case 0x10f7a: pc = 69500; let e0 = resolve(.reg(1), 4); let source = get(e0, 4); let e1 = resolve(.post(9), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination | source; put(e1, value, 4); logic(value, 4)
        case 0x10f7c: pc = 69504; let e0 = resolve(.offset(8, Int(sign(word(69502), 2))), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x10f80: pc = 69506; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(1), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination & source; put(e1, value, 4); logic(value, 4)
        case 0x10f82: pc = 69508; let e0 = resolve(.reg(1), 4); let source = get(e0, 4); let e1 = resolve(.post(10), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination | source; put(e1, value, 4); logic(value, 4)
        case 0x10f84: pc = 69512; let e0 = resolve(.offset(8, Int(sign(word(69510), 2))), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x10f88: pc = 69514; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(1), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination & source; put(e1, value, 4); logic(value, 4)
        case 0x10f8a: pc = 69516; let e0 = resolve(.reg(1), 4); let source = get(e0, 4); let e1 = resolve(.post(11), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination | source; put(e1, value, 4); logic(value, 4)
        case 0x10f8c: pc = 69520; let e0 = resolve(.offset(8, Int(sign(word(69518), 2))), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x10f90: pc = 69522; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(1), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination & source; put(e1, value, 4); logic(value, 4)
        case 0x10f92: pc = 69524; let e0 = resolve(.reg(1), 4); let source = get(e0, 4); let e1 = resolve(.post(12), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination | source; put(e1, value, 4); logic(value, 4)
        case 0x10f94: pc = 69528; let e0 = resolve(.offset(8, Int(sign(word(69526), 2))), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x10f98: pc = 69530; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(1), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination & source; put(e1, value, 4); logic(value, 4)
        case 0x10f9a: pc = 69532; let e0 = resolve(.reg(1), 4); let source = get(e0, 4); let e1 = resolve(.post(13), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination | source; put(e1, value, 4); logic(value, 4)
        case 0x10f9c: pc = 69534; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x10f9e: pc = 69538; if !condition(1) {     setRegister(6, r[6] &- 1, 2);     if r[6] & 65535 != 65535 { pc = (69536 + Int(sign(word(69536), 2))) } }
        case 0x10fa2: pc = 69540; let e0 = resolve(.indirect(9), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x10fa4: pc = 69542; let e0 = resolve(.indirect(10), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination | source; put(e1, value, 2); logic(value, 2)
        case 0x10fa6: pc = 69544; let e0 = resolve(.indirect(11), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination | source; put(e1, value, 2); logic(value, 2)
        case 0x10fa8: pc = 69546; let e0 = resolve(.indirect(12), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination | source; put(e1, value, 2); logic(value, 2)
        case 0x10faa: pc = 69548; let e0 = resolve(.indirect(13), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination | source; put(e1, value, 2); logic(value, 2)
        case 0x10fac: pc = 69550; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x10fae: pc = 69552; let e0 = resolve(.reg(0), 2); let value = ~get(e0, 2); put(e0, value, 2); logic(value, 2)
        case 0x10fb0: pc = 69554; let e0 = resolve(.indirect(8), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x10fb2: pc = 69556; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x10fb4: pc = 69558; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.post(9), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination | source; put(e1, value, 2); logic(value, 2)
        case 0x10fb6: pc = 69562; let e0 = resolve(.offset(8, Int(sign(word(69560), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x10fba: pc = 69564; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x10fbc: pc = 69566; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.post(10), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination | source; put(e1, value, 2); logic(value, 2)
        case 0x10fbe: pc = 69570; let e0 = resolve(.offset(8, Int(sign(word(69568), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x10fc2: pc = 69572; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x10fc4: pc = 69574; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.post(11), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination | source; put(e1, value, 2); logic(value, 2)
        case 0x10fc6: pc = 69578; let e0 = resolve(.offset(8, Int(sign(word(69576), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x10fca: pc = 69580; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x10fcc: pc = 69582; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.post(12), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination | source; put(e1, value, 2); logic(value, 2)
        case 0x10fce: pc = 69586; let e0 = resolve(.offset(8, Int(sign(word(69584), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x10fd2: pc = 69588; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x10fd4: pc = 69590; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.post(13), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination | source; put(e1, value, 2); logic(value, 2)
        case 0x10fd6: pc = 69594; let e0 = resolve(.immediate(word(69592)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x10fda: pc = 69598; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (69596 + Int(sign(word(69596), 2))) } }
        case 0x10fde: pc = 69602; if !condition(1) {     setRegister(5, r[5] &- 1, 2);     if r[5] & 65535 != 65535 { pc = (69600 + Int(sign(word(69600), 2))) } }
        case 0x10fe2: pc = 69608; let e0 = resolve(.memory(Int(long(69604)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x10fe8: pc = 69612; if condition(6) { pc = (69610 + Int(sign(word(69610), 2))) }
        case 0x10fec: pc = 69618; let e0 = resolve(.memory(Int(long(69614)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x10ff2: pc = 69620; if condition(7) { pc = (69620 + Int(sign(byte(69619), 1))) }
        case 0x10ff4: pc = 69626; let e0 = resolve(.memory(Int(long(69622)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x10ffa: pc = 69630; push(69630); pc = (69628 + Int(sign(word(69628), 2)))
        case 0x10ffe: pc = 69634; push(69634); pc = (69632 + Int(sign(word(69632), 2)))
        default: fail("Untranslated game address")
        }
    }
}
