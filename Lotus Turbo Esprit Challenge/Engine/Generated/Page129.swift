// Generated 68000 game labels $012900–$0129FF.
extension LotusMachine {
    func page129() {
        switch pc {
        case 0x12904: pc = 76038; if condition(7) { pc = (76038 + Int(sign(byte(76037), 1))) }
        case 0x12906: pc = 76044; let e0 = resolve(.memory(Int(long(76040)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1290c: pc = 76050; let e0 = resolve(.memory(Int(long(76046)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12912: pc = 76052; push(76052); pc = (76052 + Int(sign(byte(76051), 1)))
        case 0x12914: pc = 76058; let e0 = resolve(.memory(Int(long(76054)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1291a: pc = 76060; if condition(7) { pc = (76060 + Int(sign(byte(76059), 1))) }
        case 0x1291c: pc = 76062; if condition(4) { pc = (76062 + Int(sign(byte(76061), 1))) }
        case 0x1291e: pc = 76070; let e0 = resolve(.immediate(word(76064)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(76066)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x12926: pc = 76072; if condition(7) { pc = (76072 + Int(sign(byte(76071), 1))) }
        case 0x12928: pc = 76078; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(76074)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1292e: pc = 76084; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(76080)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x12934: pc = 76090; let e0 = resolve(.memory(Int(long(76086)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1293a: pc = 76096; let e0 = resolve(.memory(Int(long(76092)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x12940: pc = 76098; if condition(7) { pc = (76098 + Int(sign(byte(76097), 1))) }
        case 0x12942: pc = 76102; let e0 = resolve(.immediate(word(76100)), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x12946: pc = 76104; pc = (76104 + Int(sign(byte(76103), 1)))
        case 0x12948: pc = 76108; let e0 = resolve(.immediate(word(76106)), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x1294c: pc = 76110; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x1294e: pc = 76112; pc = Int(pop())
        case 0x12950: pc = 76118; let e0 = resolve(.memory(Int(long(76114)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x12956: pc = 76120; if condition(7) { pc = (76120 + Int(sign(byte(76119), 1))) }
        case 0x12958: pc = 76128; let e0 = resolve(.immediate(word(76122)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(76124)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x12960: pc = 76130; if condition(7) { pc = (76130 + Int(sign(byte(76129), 1))) }
        case 0x12962: pc = 76136; let e0 = resolve(.memory(Int(long(76132)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12968: pc = 76138; pc = (76138 + Int(sign(byte(76137), 1)))
        case 0x1296a: pc = 76144; let e0 = resolve(.memory(Int(long(76140)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12970: pc = 76146; pc = (76146 + Int(sign(byte(76145), 1)))
        case 0x12972: pc = 76152; let e0 = resolve(.memory(Int(long(76148)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12978: pc = 76156; let e0 = resolve(.immediate(word(76154)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x1297c: pc = 76158; r[7] = UInt32(bitPattern: sign(byte(76157), 1)); logic(r[7], 4)
        case 0x1297e: pc = 76164; let e0 = resolve(.indexed(9, 7, false, 19), 1); let value = get(e0, 1); let e1 = resolve(.indexed(8, 7, false, 10), 1); put(e1, value, 1); logic(value, 1)
        case 0x12984: pc = 76168; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (76166 + Int(sign(word(76166), 2))) } }
        case 0x12988: pc = 76170; r[7] = UInt32(bitPattern: sign(byte(76169), 1)); logic(r[7], 4)
        case 0x1298a: pc = 76176; let e0 = resolve(.indexed(10, 7, false, 14), 1); let value = get(e0, 1); let e1 = resolve(.indexed(8, 7, false, 32), 1); put(e1, value, 1); logic(value, 1)
        case 0x12990: pc = 76180; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (76178 + Int(sign(word(76178), 2))) } }
        case 0x12994: pc = 76184; let e0 = resolve(.immediate(word(76182)), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x12998: pc = 76188; let e0 = resolve(.offset(8, Int(sign(word(76186), 2))), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x1299c: pc = 76192; let e0 = resolve(.offset(8, Int(sign(word(76190), 2))), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x129a0: pc = 76194; if condition(5) { pc = (76194 + Int(sign(byte(76193), 1))) }
        case 0x129a2: pc = 76196; if condition(6) { pc = (76196 + Int(sign(byte(76195), 1))) }
        case 0x129a4: pc = 76200; let e0 = resolve(.offset(8, Int(sign(word(76198), 2))), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x129a8: pc = 76204; let e0 = resolve(.offset(8, Int(sign(word(76202), 2))), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x129ac: pc = 76206; if condition(5) { pc = (76206 + Int(sign(byte(76205), 1))) }
        case 0x129ae: pc = 76208; if condition(6) { pc = (76208 + Int(sign(byte(76207), 1))) }
        case 0x129b0: pc = 76212; let e0 = resolve(.offset(8, Int(sign(word(76210), 2))), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x129b4: pc = 76216; let e0 = resolve(.offset(8, Int(sign(word(76214), 2))), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x129b8: pc = 76218; if condition(4) { pc = (76218 + Int(sign(byte(76217), 1))) }
        case 0x129ba: pc = 76222; let e0 = resolve(.immediate(word(76220)), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x129be: pc = 76226; let e0 = resolve(.indexed(8, 7, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x129c2: pc = 76232; let e0 = resolve(.indexed(8, 7, false, -35), 1); let value = get(e0, 1); let e1 = resolve(.indexed(8, 7, false, 0), 1); put(e1, value, 1); logic(value, 1)
        case 0x129c8: pc = 76236; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.indexed(8, 7, false, -35), 1); put(e1, value, 1); logic(value, 1)
        case 0x129cc: pc = 76238; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x129ce: pc = 76242; let e0 = resolve(.immediate(word(76240)), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x129d2: pc = 76244; if condition(6) { pc = (76244 + Int(sign(byte(76243), 1))) }
        case 0x129d4: pc = 76248; let e0 = resolve(.immediate(word(76246)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &- UInt32(bitPattern: sign(source, 2))
        case 0x129d8: pc = 76250; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x129da: pc = 76252; if condition(6) { pc = (76252 + Int(sign(byte(76251), 1))) }
        case 0x129dc: pc = 76254; pc = Int(pop())
        case 0x129de: pc = 76260; let e0 = resolve(.memory(Int(long(76256)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x129e4: pc = 76264; let e0 = resolve(.immediate(word(76262)), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x129e8: pc = 76270; let e0 = resolve(.memory(Int(long(76266)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x129ee: pc = 76272; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x129f0: pc = 76276; let e0 = resolve(.indexed(10, 7, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x129f4: pc = 76278; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x129f6: pc = 76280; if condition(7) { pc = (76280 + Int(sign(byte(76279), 1))) }
        case 0x129f8: pc = 76282; if condition(5) { pc = (76282 + Int(sign(byte(76281), 1))) }
        case 0x129fa: pc = 76286; let e0 = resolve(.immediate(word(76284)), 2); let source = get(e0, 2); let e1 = resolve(.reg(10), 2); let destination = get(e1, 2); _ = source; _ = destination; r[10] = r[10] &+ UInt32(bitPattern: sign(source, 2))
        case 0x129fe: pc = 76290; let e0 = resolve(.immediate(word(76288)), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        default: fail("Untranslated game address")
        }
    }
}
