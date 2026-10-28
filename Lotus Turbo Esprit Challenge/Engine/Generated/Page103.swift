// Generated 68000 game labels $010300–$0103FF.
extension LotusMachine {
    func page103() {
        switch pc {
        case 0x10300: pc = 66308; let e0 = resolve(.reg(1), 4); let value = get(e0, 4); let e1 = resolve(.offset(10, Int(sign(word(66306), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x10304: pc = 66312; let e0 = resolve(.offset(10, Int(sign(word(66310), 2))), 1); put(e0, 0, 1); logic(0, 1)
        case 0x10308: pc = 66314; pc = Int(pop())
        case 0x1030a: pc = 66318; let e0 = resolve(.memory(67872), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1030e: pc = 66324; let e0 = resolve(.immediate(word(66320)), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(66322), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x10314: pc = 66330; let e0 = resolve(.memory(Int(long(66326)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x1031a: pc = 66336; let e0 = resolve(.memory(Int(long(66332)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x10320: pc = 66342; let e0 = resolve(.memory(Int(long(66338)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x10326: pc = 66348; let e0 = resolve(.memory(Int(long(66344)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x1032c: pc = 66356; let e0 = resolve(.immediate(word(66350)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(66352)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10334: pc = 66358; pc = Int(pop())
        case 0x10336: pc = 66362; let e0 = resolve(.memory(67872), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1033a: pc = 66366; let e0 = resolve(.offset(10, Int(sign(word(66364), 2))), 1); logic(get(e0, 1), 1)
        case 0x1033e: pc = 66370; if condition(6) { pc = (66368 + Int(sign(word(66368), 2))) }
        case 0x10342: pc = 66374; let e0 = resolve(.immediate(1), 1); let source = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(66372), 2))), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = add(destination, source, 1); put(e1, value, 1)
        case 0x10346: pc = 66380; let e0 = resolve(.immediate(word(66376)), 1); let source = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(66378), 2))), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x1034c: pc = 66384; if condition(7) { pc = (66382 + Int(sign(word(66382), 2))) }
        case 0x10350: pc = 66388; let e0 = resolve(.offset(10, Int(sign(word(66386), 2))), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x10354: pc = 66392; let e0 = resolve(.offset(10, Int(sign(word(66390), 2))), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x10358: pc = 66396; if condition(13) { pc = (66394 + Int(sign(word(66394), 2))) }
        case 0x1035c: pc = 66400; let e0 = resolve(.offset(10, Int(sign(word(66398), 2))), 1); put(e0, 0, 1); logic(0, 1)
        case 0x10360: pc = 66404; let e0 = resolve(.offset(10, Int(sign(word(66402), 2))), 2); put(e0, 0, 2); logic(0, 2)
        case 0x10364: pc = 66408; let e0 = resolve(.memory(66692), 4); r[11] = UInt32(truncatingIfNeeded: e0.address)
        case 0x10368: pc = 66412; let e0 = resolve(.memory(67708), 4); r[14] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1036c: pc = 66416; let e0 = resolve(.offset(14, Int(sign(word(66414), 2))), 2); logic(get(e0, 2), 2)
        case 0x10370: pc = 66418; if condition(7) { pc = (66418 + Int(sign(byte(66417), 1))) }
        case 0x10372: pc = 66424; let e0 = resolve(.immediate(word(66420)), 2); let source = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(66422), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x10378: pc = 66426; let e0 = resolve(.indirect(11), 4); push(66426); pc = e0.address
        case 0x1037a: pc = 66430; let e0 = resolve(.memory(67750), 4); r[14] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1037e: pc = 66434; let e0 = resolve(.offset(14, Int(sign(word(66432), 2))), 2); logic(get(e0, 2), 2)
        case 0x10382: pc = 66436; if condition(7) { pc = (66436 + Int(sign(byte(66435), 1))) }
        case 0x10384: pc = 66442; let e0 = resolve(.immediate(word(66438)), 2); let source = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(66440), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x1038a: pc = 66444; let e0 = resolve(.indirect(11), 4); push(66444); pc = e0.address
        case 0x1038c: pc = 66448; let e0 = resolve(.memory(67792), 4); r[14] = UInt32(truncatingIfNeeded: e0.address)
        case 0x10390: pc = 66452; let e0 = resolve(.offset(14, Int(sign(word(66450), 2))), 2); logic(get(e0, 2), 2)
        case 0x10394: pc = 66454; if condition(7) { pc = (66454 + Int(sign(byte(66453), 1))) }
        case 0x10396: pc = 66460; let e0 = resolve(.immediate(word(66456)), 2); let source = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(66458), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x1039c: pc = 66462; let e0 = resolve(.indirect(11), 4); push(66462); pc = e0.address
        case 0x1039e: pc = 66466; let e0 = resolve(.memory(67834), 4); r[14] = UInt32(truncatingIfNeeded: e0.address)
        case 0x103a2: pc = 66470; let e0 = resolve(.offset(14, Int(sign(word(66468), 2))), 2); logic(get(e0, 2), 2)
        case 0x103a6: pc = 66472; if condition(7) { pc = (66472 + Int(sign(byte(66471), 1))) }
        case 0x103a8: pc = 66478; let e0 = resolve(.immediate(word(66474)), 2); let source = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(66476), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x103ae: pc = 66480; let e0 = resolve(.indirect(11), 4); push(66480); pc = e0.address
        case 0x103b0: pc = 66486; let e0 = resolve(.immediate(word(66482)), 2); let source = get(e0, 2); let e1 = resolve(.offset(10, Int(sign(word(66484), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x103b6: pc = 66488; if condition(6) { pc = (66488 + Int(sign(byte(66487), 1))) }
        case 0x103b8: pc = 66492; let e0 = resolve(.offset(10, Int(sign(word(66490), 2))), 2); put(e0, 0, 2); logic(0, 2)
        case 0x103bc: pc = 66496; let e0 = resolve(.offset(10, Int(sign(word(66494), 2))), 1); put(e0, 0, 1); logic(0, 1)
        case 0x103c0: pc = 66500; let e0 = resolve(.immediate(1), 1); let source = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(66498), 2))), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = add(destination, source, 1); put(e1, value, 1)
        case 0x103c4: pc = 66506; let e0 = resolve(.immediate(word(66502)), 1); let source = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(66504), 2))), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination & source; put(e1, value, 1); logic(value, 1)
        case 0x103ca: pc = 66508; r[0] = UInt32(bitPattern: sign(byte(66507), 1)); logic(r[0], 4)
        case 0x103cc: pc = 66510; r[1] = UInt32(bitPattern: sign(byte(66509), 1)); logic(r[1], 4)
        case 0x103ce: pc = 66514; let e0 = resolve(.offset(10, Int(sign(word(66512), 2))), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x103d2: pc = 66516; let e0 = resolve(.immediate(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x103d4: pc = 66520; let e0 = resolve(.offset(10, Int(sign(word(66518), 2))), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x103d8: pc = 66524; let e0 = resolve(.indexed(8, 0, true, 0), 1); let value = get(e0, 1); let e1 = resolve(.reg(1), 1); put(e1, value, 1); logic(value, 1)
        case 0x103dc: pc = 66526; let e0 = resolve(.immediate(2), 4); let count = get(e0, 4); let e1 = resolve(.reg(1), 4); let value = shift(get(e1, 4), count, 4, 1); put(e1, value, 4)
        case 0x103de: pc = 66528; let e0 = resolve(.immediate(8), 4); let count = get(e0, 4); let e1 = resolve(.reg(1), 4); let value = shift(get(e1, 4), count, 4, 1); put(e1, value, 4)
        case 0x103e0: pc = 66532; let e0 = resolve(.offset(10, Int(sign(word(66530), 2))), 4); let source = get(e0, 4); let e1 = resolve(.reg(1), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x103e4: pc = 66538; let e0 = resolve(.immediate(long(66534)), 4); let source = get(e0, 4); let e1 = resolve(.reg(1), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x103ea: pc = 66542; let e0 = resolve(.reg(1), 4); let value = get(e0, 4); let e1 = resolve(.offset(10, Int(sign(word(66540), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x103ee: pc = 66546; let e0 = resolve(.offset(10, Int(sign(word(66544), 2))), 1); let value = get(e0, 1); let e1 = resolve(.reg(1), 1); put(e1, value, 1); logic(value, 1)
        case 0x103f2: pc = 66550; let e0 = resolve(.offset(8, Int(sign(word(66548), 2))), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x103f6: pc = 66552; if condition(6) { pc = (66552 + Int(sign(byte(66551), 1))) }
        case 0x103f8: pc = 66558; let e0 = resolve(.offset(8, Int(sign(word(66554), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(66556), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x103fe: pc = 66562; let e0 = resolve(.offset(10, Int(sign(word(66560), 2))), 1); logic(get(e0, 1), 1)
        default: fail("Untranslated game address")
        }
    }
}
