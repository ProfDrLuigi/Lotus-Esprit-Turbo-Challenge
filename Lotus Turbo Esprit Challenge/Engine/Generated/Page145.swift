// Generated 68000 game labels $014500–$0145FF.
extension LotusMachine {
    func page145() {
        switch pc {
        case 0x14500: pc = 83204; let e0 = resolve(.reg(7), 1); let value = get(e0, 1); let e1 = resolve(.indexed(10, 4, false, 0), 1); put(e1, value, 1); logic(value, 1)
        case 0x14504: pc = 83206; let e0 = resolve(.immediate(1), 4); let source = get(e0, 4); let e1 = resolve(.reg(2), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x14506: pc = 83210; if !condition(1) {     setRegister(6, r[6] &- 1, 2);     if r[6] & 65535 != 65535 { pc = (83208 + Int(sign(word(83208), 2))) } }
        case 0x1450a: pc = 83214; pc = (83212 + Int(sign(word(83212), 2)))
        case 0x1450e: pc = 83216; r[1] = UInt32(bitPattern: sign(byte(83215), 1)); logic(r[1], 4)
        case 0x14510: pc = 83220; push(83220); pc = (83218 + Int(sign(word(83218), 2)))
        case 0x14514: pc = 83222; r[6] = UInt32(bitPattern: sign(byte(83221), 1)); logic(r[6], 4)
        case 0x14516: pc = 83224; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x14518: pc = 83228; push(83228); pc = (83226 + Int(sign(word(83226), 2)))
        case 0x1451c: pc = 83230; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x1451e: pc = 83232; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x14520: pc = 83234; if condition(10) { pc = (83234 + Int(sign(byte(83233), 1))) }
        case 0x14522: pc = 83238; let e0 = resolve(.immediate(word(83236)), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x14526: pc = 83242; let e0 = resolve(.reg(7), 1); let value = get(e0, 1); let e1 = resolve(.indexed(10, 4, false, 0), 1); put(e1, value, 1); logic(value, 1)
        case 0x1452a: pc = 83244; let e0 = resolve(.immediate(1), 4); let source = get(e0, 4); let e1 = resolve(.reg(2), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x1452c: pc = 83248; if !condition(1) {     setRegister(6, r[6] &- 1, 2);     if r[6] & 65535 != 65535 { pc = (83246 + Int(sign(word(83246), 2))) } }
        case 0x14530: pc = 83252; pc = (83250 + Int(sign(word(83250), 2)))
        case 0x14534: pc = 83256; push(83256); pc = (83254 + Int(sign(word(83254), 2)))
        case 0x14538: pc = 83258; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x1453a: pc = 83260; if condition(10) { pc = (83260 + Int(sign(byte(83259), 1))) }
        case 0x1453c: pc = 83264; let e0 = resolve(.immediate(word(83262)), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x14540: pc = 83268; let e0 = resolve(.reg(7), 1); let value = get(e0, 1); let e1 = resolve(.indexed(10, 4, false, 0), 1); put(e1, value, 1); logic(value, 1)
        case 0x14544: pc = 83270; let e0 = resolve(.immediate(1), 4); let source = get(e0, 4); let e1 = resolve(.reg(2), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x14546: pc = 83274; pc = (83272 + Int(sign(word(83272), 2)))
        case 0x1454a: pc = 83276; r[1] = UInt32(bitPattern: sign(byte(83275), 1)); logic(r[1], 4)
        case 0x1454c: pc = 83280; push(83280); pc = (83278 + Int(sign(word(83278), 2)))
        case 0x14550: pc = 83282; r[6] = UInt32(bitPattern: sign(byte(83281), 1)); logic(r[6], 4)
        case 0x14552: pc = 83284; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x14554: pc = 83288; push(83288); pc = (83286 + Int(sign(word(83286), 2)))
        case 0x14558: pc = 83290; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x1455a: pc = 83292; if condition(10) { pc = (83292 + Int(sign(byte(83291), 1))) }
        case 0x1455c: pc = 83296; let e0 = resolve(.immediate(word(83294)), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x14560: pc = 83300; let e0 = resolve(.reg(7), 1); let value = get(e0, 1); let e1 = resolve(.indexed(10, 4, false, 0), 1); put(e1, value, 1); logic(value, 1)
        case 0x14564: pc = 83302; let e0 = resolve(.immediate(1), 4); let source = get(e0, 4); let e1 = resolve(.reg(2), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x14566: pc = 83306; if !condition(1) {     setRegister(6, r[6] &- 1, 2);     if r[6] & 65535 != 65535 { pc = (83304 + Int(sign(word(83304), 2))) } }
        case 0x1456a: pc = 83310; pc = (83308 + Int(sign(word(83308), 2)))
        case 0x1456e: pc = 83312; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x14570: pc = 83314; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x14572: pc = 83318; let e0 = resolve(.immediate(word(83316)), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x14576: pc = 83320; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x14578: pc = 83322; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x1457a: pc = 83324; if condition(10) { pc = (83324 + Int(sign(byte(83323), 1))) }
        case 0x1457c: pc = 83328; let e0 = resolve(.immediate(word(83326)), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x14580: pc = 83332; let e0 = resolve(.indexed(10, 3, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.reg(7), 1); put(e1, value, 1); logic(value, 1)
        case 0x14584: pc = 83334; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x14586: pc = 83336; if condition(10) { pc = (83336 + Int(sign(byte(83335), 1))) }
        case 0x14588: pc = 83340; let e0 = resolve(.immediate(word(83338)), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x1458c: pc = 83344; let e0 = resolve(.reg(7), 1); let value = get(e0, 1); let e1 = resolve(.indexed(10, 4, false, 0), 1); put(e1, value, 1); logic(value, 1)
        case 0x14590: pc = 83346; let e0 = resolve(.immediate(1), 4); let source = get(e0, 4); let e1 = resolve(.reg(2), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x14592: pc = 83350; if !condition(1) {     setRegister(6, r[6] &- 1, 2);     if r[6] & 65535 != 65535 { pc = (83348 + Int(sign(word(83348), 2))) } }
        case 0x14596: pc = 83354; pc = (83352 + Int(sign(word(83352), 2)))
        case 0x1459a: pc = 83356; let e0 = resolve(.reg(9), 4); r[11] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x1459c: pc = 83358; let e0 = resolve(.reg(10), 4); r[13] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x1459e: pc = 83364; let e0 = resolve(.reg(11), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(83360)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x145a4: pc = 83370; let e0 = resolve(.reg(13), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(83366)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x145aa: pc = 83374; let e0 = resolve(.immediate(word(83372)), 2); let source = get(e0, 2); let e1 = resolve(.reg(13), 2); let destination = get(e1, 2); _ = source; _ = destination; r[13] = r[13] &+ UInt32(bitPattern: sign(source, 2))
        case 0x145ae: pc = 83380; let e0 = resolve(.reg(13), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(83376)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x145b4: pc = 83384; let e0 = resolve(.immediate(word(83382)), 2); let source = get(e0, 2); let e1 = resolve(.reg(13), 2); let destination = get(e1, 2); _ = source; _ = destination; r[13] = r[13] &+ UInt32(bitPattern: sign(source, 2))
        case 0x145b8: pc = 83390; let e0 = resolve(.reg(13), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(83386)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x145be: pc = 83394; let e0 = resolve(.immediate(word(83392)), 2); let source = get(e0, 2); let e1 = resolve(.reg(13), 2); let destination = get(e1, 2); _ = source; _ = destination; r[13] = r[13] &+ UInt32(bitPattern: sign(source, 2))
        case 0x145c2: pc = 83400; let e0 = resolve(.reg(13), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(83396)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x145c8: pc = 83404; let e0 = resolve(.immediate(word(83402)), 2); let source = get(e0, 2); let e1 = resolve(.reg(13), 2); let destination = get(e1, 2); _ = source; _ = destination; r[13] = r[13] &+ UInt32(bitPattern: sign(source, 2))
        case 0x145cc: pc = 83410; let e0 = resolve(.reg(13), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(83406)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x145d2: pc = 83412; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x145d4: pc = 83414; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x145d6: pc = 83420; let e0 = resolve(.indirect(8), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(83416)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x145dc: pc = 83422; let e0 = resolve(.post(8), 4); let source = get(e0, 4); let e1 = resolve(.reg(11), 4); let destination = get(e1, 4); _ = source; _ = destination; r[11] = r[11] &+ source
        case 0x145de: pc = 83428; let e0 = resolve(.memory(Int(long(83424)) & 0xffffff), 4); r[12] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x145e4: pc = 83430; r[7] = UInt32(bitPattern: sign(byte(83429), 1)); logic(r[7], 4)
        case 0x145e6: pc = 83432; let e0 = resolve(.post(8), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x145e8: pc = 83434; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.reg(1), 1); put(e1, value, 1); logic(value, 1)
        case 0x145ea: pc = 83436; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 1); let value = shift(get(e1, 1), count, 1, 2); put(e1, value, 1)
        case 0x145ec: pc = 83440; let e0 = resolve(.immediate(word(83438)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination & source; put(e1, value, 1); logic(value, 1)
        case 0x145f0: pc = 83442; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.post(12), 1); put(e1, value, 1); logic(value, 1)
        case 0x145f2: pc = 83444; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.post(12), 1); put(e1, value, 1); logic(value, 1)
        case 0x145f4: pc = 83448; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (83446 + Int(sign(word(83446), 2))) } }
        case 0x145f8: pc = 83454; let e0 = resolve(.memory(Int(long(83450)) & 0xffffff), 4); r[12] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x145fe: pc = 83456; r[7] = UInt32(bitPattern: sign(byte(83455), 1)); logic(r[7], 4)
        default: fail("Untranslated game address")
        }
    }
}
