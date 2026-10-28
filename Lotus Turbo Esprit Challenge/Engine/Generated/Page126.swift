// Generated 68000 game labels $012600–$0126FF.
extension LotusMachine {
    func page126() {
        switch pc {
        case 0x12602: pc = 75270; let e0 = resolve(.immediate(word(75268)), 2); let source = get(e0, 2); let e1 = resolve(.reg(12), 2); let destination = get(e1, 2); _ = source; _ = destination; r[12] = r[12] &+ UInt32(bitPattern: sign(source, 2))
        case 0x12606: pc = 75274; let e0 = resolve(.immediate(word(75272)), 2); let source = get(e0, 2); let e1 = resolve(.reg(13), 2); let destination = get(e1, 2); _ = source; _ = destination; r[13] = r[13] &+ UInt32(bitPattern: sign(source, 2))
        case 0x1260a: pc = 75280; let e0 = resolve(.memory(Int(long(75276)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x12610: pc = 75284; let e0 = resolve(.immediate(word(75282)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x12614: pc = 75288; let e0 = resolve(.immediate(word(75286)), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x12618: pc = 75292; let e0 = resolve(.post(13), 4); let value = get(e0, 4); let e1 = resolve(.offset(8, Int(sign(word(75290), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x1261c: pc = 75296; let e0 = resolve(.post(12), 4); let value = get(e0, 4); let e1 = resolve(.offset(8, Int(sign(word(75294), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12620: pc = 75300; let e0 = resolve(.post(11), 4); let value = get(e0, 4); let e1 = resolve(.offset(8, Int(sign(word(75298), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12624: pc = 75304; let e0 = resolve(.post(10), 4); let value = get(e0, 4); let e1 = resolve(.offset(8, Int(sign(word(75302), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12628: pc = 75306; let e0 = resolve(.post(9), 4); let value = get(e0, 4); let e1 = resolve(.post(8), 4); put(e1, value, 4); logic(value, 4)
        case 0x1262a: pc = 75310; let e0 = resolve(.post(13), 4); let value = get(e0, 4); let e1 = resolve(.offset(8, Int(sign(word(75308), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x1262e: pc = 75314; let e0 = resolve(.post(12), 4); let value = get(e0, 4); let e1 = resolve(.offset(8, Int(sign(word(75312), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12632: pc = 75318; let e0 = resolve(.post(11), 4); let value = get(e0, 4); let e1 = resolve(.offset(8, Int(sign(word(75316), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12636: pc = 75322; let e0 = resolve(.post(10), 4); let value = get(e0, 4); let e1 = resolve(.offset(8, Int(sign(word(75320), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x1263a: pc = 75324; let e0 = resolve(.post(9), 4); let value = get(e0, 4); let e1 = resolve(.post(8), 4); put(e1, value, 4); logic(value, 4)
        case 0x1263c: pc = 75328; let e0 = resolve(.post(13), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(75326), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x12640: pc = 75332; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(75330), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x12644: pc = 75336; let e0 = resolve(.post(11), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(75334), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x12648: pc = 75340; let e0 = resolve(.post(10), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(75338), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1264c: pc = 75342; let e0 = resolve(.post(9), 2); let value = get(e0, 2); let e1 = resolve(.post(8), 2); put(e1, value, 2); logic(value, 2)
        case 0x1264e: pc = 75346; let e0 = resolve(.immediate(word(75344)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x12652: pc = 75350; let e0 = resolve(.post(13), 4); let value = get(e0, 4); let e1 = resolve(.offset(8, Int(sign(word(75348), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12656: pc = 75354; let e0 = resolve(.post(12), 4); let value = get(e0, 4); let e1 = resolve(.offset(8, Int(sign(word(75352), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x1265a: pc = 75358; let e0 = resolve(.post(11), 4); let value = get(e0, 4); let e1 = resolve(.offset(8, Int(sign(word(75356), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x1265e: pc = 75362; let e0 = resolve(.post(10), 4); let value = get(e0, 4); let e1 = resolve(.offset(8, Int(sign(word(75360), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12662: pc = 75364; let e0 = resolve(.post(9), 4); let value = get(e0, 4); let e1 = resolve(.post(8), 4); put(e1, value, 4); logic(value, 4)
        case 0x12664: pc = 75368; let e0 = resolve(.post(13), 4); let value = get(e0, 4); let e1 = resolve(.offset(8, Int(sign(word(75366), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12668: pc = 75372; let e0 = resolve(.post(12), 4); let value = get(e0, 4); let e1 = resolve(.offset(8, Int(sign(word(75370), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x1266c: pc = 75376; let e0 = resolve(.post(11), 4); let value = get(e0, 4); let e1 = resolve(.offset(8, Int(sign(word(75374), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12670: pc = 75380; let e0 = resolve(.post(10), 4); let value = get(e0, 4); let e1 = resolve(.offset(8, Int(sign(word(75378), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12674: pc = 75382; let e0 = resolve(.post(9), 4); let value = get(e0, 4); let e1 = resolve(.post(8), 4); put(e1, value, 4); logic(value, 4)
        case 0x12676: pc = 75386; let e0 = resolve(.post(13), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(75384), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1267a: pc = 75390; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(75388), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1267e: pc = 75394; let e0 = resolve(.post(11), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(75392), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x12682: pc = 75398; let e0 = resolve(.post(10), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(75396), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x12686: pc = 75400; let e0 = resolve(.post(9), 2); let value = get(e0, 2); let e1 = resolve(.post(8), 2); put(e1, value, 2); logic(value, 2)
        case 0x12688: pc = 75404; let e0 = resolve(.immediate(word(75402)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x1268c: pc = 75408; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (75406 + Int(sign(word(75406), 2))) } }
        case 0x12690: pc = 75410; pc = Int(pop())
        case 0x12692: pc = 75412; pc = Int(pop())
        case 0x12694: pc = 75414; pc = Int(pop())
        case 0x12696: pc = 75420; let e0 = resolve(.memory(Int(long(75416)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1269c: pc = 75422; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x1269e: pc = 75426; let e0 = resolve(.immediate(word(75424)), 2); let source = get(e0, 2); divide(0, source, signed: false)
        case 0x126a2: pc = 75428; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x126a4: pc = 75432; let e0 = resolve(.immediate(word(75430)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x126a8: pc = 75436; if condition(6) { pc = (75434 + Int(sign(word(75434), 2))) }
        case 0x126ac: pc = 75438; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x126ae: pc = 75440; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x126b0: pc = 75444; let e0 = resolve(.immediate(word(75442)), 2); let source = get(e0, 2); divide(0, source, signed: false)
        case 0x126b4: pc = 75446; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x126b6: pc = 75452; let e0 = resolve(.memory(Int(long(75448)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x126bc: pc = 75456; let e0 = resolve(.immediate(word(75454)), 2); let source = get(e0, 2); r[0] = (r[0] & 65535) &* source; logic(r[0], 4)
        case 0x126c0: pc = 75458; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(9), 4); let destination = get(e1, 4); _ = source; _ = destination; r[9] = r[9] &+ source
        case 0x126c2: pc = 75460; let e0 = resolve(.reg(9), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x126c4: pc = 75462; let e0 = resolve(.reg(9), 4); r[11] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x126c6: pc = 75464; let e0 = resolve(.reg(9), 4); r[12] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x126c8: pc = 75466; let e0 = resolve(.reg(9), 4); r[13] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x126ca: pc = 75472; let e0 = resolve(.immediate(long(75468)), 4); let source = get(e0, 4); let e1 = resolve(.reg(10), 4); let destination = get(e1, 4); _ = source; _ = destination; r[10] = r[10] &+ source
        case 0x126d0: pc = 75478; let e0 = resolve(.immediate(long(75474)), 4); let source = get(e0, 4); let e1 = resolve(.reg(11), 4); let destination = get(e1, 4); _ = source; _ = destination; r[11] = r[11] &+ source
        case 0x126d6: pc = 75484; let e0 = resolve(.immediate(long(75480)), 4); let source = get(e0, 4); let e1 = resolve(.reg(12), 4); let destination = get(e1, 4); _ = source; _ = destination; r[12] = r[12] &+ source
        case 0x126dc: pc = 75490; let e0 = resolve(.immediate(long(75486)), 4); let source = get(e0, 4); let e1 = resolve(.reg(13), 4); let destination = get(e1, 4); _ = source; _ = destination; r[13] = r[13] &+ source
        case 0x126e2: pc = 75496; let e0 = resolve(.memory(Int(long(75492)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x126e8: pc = 75500; let e0 = resolve(.immediate(word(75498)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x126ec: pc = 75504; let e0 = resolve(.immediate(word(75502)), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x126f0: pc = 75508; let e0 = resolve(.post(13), 4); let value = get(e0, 4); let e1 = resolve(.offset(8, Int(sign(word(75506), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x126f4: pc = 75512; let e0 = resolve(.post(12), 4); let value = get(e0, 4); let e1 = resolve(.offset(8, Int(sign(word(75510), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x126f8: pc = 75516; let e0 = resolve(.post(11), 4); let value = get(e0, 4); let e1 = resolve(.offset(8, Int(sign(word(75514), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x126fc: pc = 75520; let e0 = resolve(.post(10), 4); let value = get(e0, 4); let e1 = resolve(.offset(8, Int(sign(word(75518), 2))), 4); put(e1, value, 4); logic(value, 4)
        default: fail("Untranslated game address")
        }
    }
}
