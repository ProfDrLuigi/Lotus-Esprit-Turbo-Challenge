// Generated 68000 game labels $012500–$0125FF.
extension LotusMachine {
    func page125() {
        switch pc {
        case 0x12502: pc = 75016; let e0 = resolve(.immediate(word(75012)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(75014), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x12508: pc = 75022; let e0 = resolve(.immediate(word(75018)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(75020), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1250e: pc = 75028; let e0 = resolve(.memory(Int(long(75024)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x12514: pc = 75032; pc = (75030 + Int(sign(word(75030), 2)))
        case 0x12518: pc = 75038; let e0 = resolve(.memory(Int(long(75034)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1251e: pc = 75042; let e0 = resolve(.immediate(word(75040)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x12522: pc = 75046; let e0 = resolve(.immediate(word(75044)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x12526: pc = 75048; if condition(6) { pc = (75048 + Int(sign(byte(75047), 1))) }
        case 0x12528: pc = 75054; let e0 = resolve(.memory(Int(long(75050)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1252e: pc = 75056; if condition(6) { pc = (75056 + Int(sign(byte(75055), 1))) }
        case 0x12530: pc = 75062; let e0 = resolve(.immediate(word(75058)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(75060), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x12536: pc = 75070; let e0 = resolve(.immediate(long(75064)), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(75068), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x1253e: pc = 75078; let e0 = resolve(.immediate(long(75072)), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(75076), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12546: pc = 75086; let e0 = resolve(.immediate(long(75080)), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(75084), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x1254e: pc = 75094; let e0 = resolve(.immediate(long(75088)), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(75092), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12556: pc = 75100; let e0 = resolve(.immediate(word(75096)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(75098), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1255c: pc = 75106; let e0 = resolve(.immediate(word(75102)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(75104), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x12562: pc = 75112; let e0 = resolve(.immediate(word(75108)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(75110), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x12568: pc = 75118; let e0 = resolve(.immediate(word(75114)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(75116), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1256e: pc = 75126; let e0 = resolve(.immediate(word(75120)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(75122)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x12576: pc = 75128; pc = (75128 + Int(sign(byte(75127), 1)))
        case 0x12578: pc = 75134; let e0 = resolve(.immediate(word(75130)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(75132), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1257e: pc = 75138; let e0 = resolve(.offset(14, Int(sign(word(75136), 2))), 2); put(e0, 0, 2); logic(0, 2)
        case 0x12582: pc = 75142; let e0 = resolve(.offset(14, Int(sign(word(75140), 2))), 2); put(e0, 0, 2); logic(0, 2)
        case 0x12586: pc = 75146; let e0 = resolve(.offset(14, Int(sign(word(75144), 2))), 2); put(e0, 0, 2); logic(0, 2)
        case 0x1258a: pc = 75150; let e0 = resolve(.offset(14, Int(sign(word(75148), 2))), 2); put(e0, 0, 2); logic(0, 2)
        case 0x1258e: pc = 75156; let e0 = resolve(.immediate(word(75152)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(75154), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x12594: pc = 75164; let e0 = resolve(.immediate(word(75158)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(75160)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1259c: pc = 75170; let e0 = resolve(.memory(Int(long(75166)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x125a2: pc = 75172; if condition(6) { pc = (75172 + Int(sign(byte(75171), 1))) }
        case 0x125a4: pc = 75180; let e0 = resolve(.immediate(word(75174)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(75176)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x125ac: pc = 75182; pc = Int(pop())
        case 0x125ae: pc = 75184; pc = Int(pop())
        case 0x125b0: pc = 75190; let e0 = resolve(.memory(Int(long(75186)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x125b6: pc = 75192; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x125b8: pc = 75196; let e0 = resolve(.immediate(word(75194)), 2); let source = get(e0, 2); divide(0, source, signed: false)
        case 0x125bc: pc = 75198; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x125be: pc = 75202; let e0 = resolve(.immediate(word(75200)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x125c2: pc = 75206; if condition(6) { pc = (75204 + Int(sign(word(75204), 2))) }
        case 0x125c6: pc = 75208; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x125c8: pc = 75212; let e0 = resolve(.immediate(word(75210)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x125cc: pc = 75216; if condition(11) { pc = (75214 + Int(sign(word(75214), 2))) }
        case 0x125d0: pc = 75220; let e0 = resolve(.immediate(word(75218)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x125d4: pc = 75224; if condition(4) { pc = (75222 + Int(sign(word(75222), 2))) }
        case 0x125d8: pc = 75230; let e0 = resolve(.memory(Int(long(75226)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x125de: pc = 75234; let e0 = resolve(.indexed(8, 0, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x125e2: pc = 75238; let e0 = resolve(.immediate(word(75236)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x125e6: pc = 75244; let e0 = resolve(.memory(Int(long(75240)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x125ec: pc = 75248; let e0 = resolve(.immediate(word(75246)), 2); let source = get(e0, 2); r[0] = (r[0] & 65535) &* source; logic(r[0], 4)
        case 0x125f0: pc = 75250; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.reg(9), 4); let destination = get(e1, 4); _ = source; _ = destination; r[9] = r[9] &+ source
        case 0x125f2: pc = 75252; let e0 = resolve(.reg(9), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x125f4: pc = 75254; let e0 = resolve(.reg(9), 4); r[11] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x125f6: pc = 75256; let e0 = resolve(.reg(9), 4); r[12] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x125f8: pc = 75258; let e0 = resolve(.reg(9), 4); r[13] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x125fa: pc = 75262; let e0 = resolve(.immediate(word(75260)), 2); let source = get(e0, 2); let e1 = resolve(.reg(10), 2); let destination = get(e1, 2); _ = source; _ = destination; r[10] = r[10] &+ UInt32(bitPattern: sign(source, 2))
        case 0x125fe: pc = 75266; let e0 = resolve(.immediate(word(75264)), 2); let source = get(e0, 2); let e1 = resolve(.reg(11), 2); let destination = get(e1, 2); _ = source; _ = destination; r[11] = r[11] &+ UInt32(bitPattern: sign(source, 2))
        default: fail("Untranslated game address")
        }
    }
}
