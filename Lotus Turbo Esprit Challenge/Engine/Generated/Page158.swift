// Generated 68000 game labels $015800–$0158FF.
extension LotusMachine {
    func page158() {
        switch pc {
        case 0x15800: pc = 88066; if condition(11) { pc = (88066 + Int(sign(byte(88065), 1))) }
        case 0x15802: pc = 88068; let e0 = resolve(.immediate(1), 4); let count = get(e0, 4); let e1 = resolve(.reg(1), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x15804: pc = 88072; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(88070), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x15808: pc = 88074; pc = Int(pop())
        case 0x1580a: pc = 88082; let e0 = resolve(.immediate(word(88076)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(88078)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x15812: pc = 88086; let e0 = resolve(.offset(12, Int(sign(word(88084), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x15816: pc = 88088; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15818: pc = 88090; let e0 = resolve(.immediate(8), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x1581a: pc = 88092; let e0 = resolve(.immediate(1), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x1581c: pc = 88096; let e0 = resolve(.immediate(word(88094)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15820: pc = 88100; let e0 = resolve(.immediate(word(88098)), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x15824: pc = 88102; let e0 = resolve(.reg(2), 2); logic(get(e0, 2), 2)
        case 0x15826: pc = 88104; if condition(11) { pc = (88104 + Int(sign(byte(88103), 1))) }
        case 0x15828: pc = 88106; let e0 = resolve(.reg(0), 2); let value = subtract(0, get(e0, 2), 2, extend: false); put(e0, value, 2)
        case 0x1582a: pc = 88108; let e0 = resolve(.reg(1), 2); let value = subtract(0, get(e0, 2), 2, extend: false); put(e0, value, 2)
        case 0x1582c: pc = 88112; let e0 = resolve(.offset(12, Int(sign(word(88110), 2))), 2); logic(get(e0, 2), 2)
        case 0x15830: pc = 88114; if condition(6) { pc = (88114 + Int(sign(byte(88113), 1))) }
        case 0x15832: pc = 88118; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(88116), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15836: pc = 88122; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(88120), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1583a: pc = 88124; pc = Int(pop())
        case 0x1583c: pc = 88132; let e0 = resolve(.immediate(word(88126)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(88128)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x15844: pc = 88136; let e0 = resolve(.offset(12, Int(sign(word(88134), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x15848: pc = 88138; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1584a: pc = 88140; let e0 = resolve(.immediate(1), 4); let count = get(e0, 4); let e1 = resolve(.reg(1), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x1584c: pc = 88144; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(88142), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15850: pc = 88146; let e0 = resolve(.immediate(8), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x15852: pc = 88148; let e0 = resolve(.immediate(1), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x15854: pc = 88152; let e0 = resolve(.immediate(word(88150)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15858: pc = 88156; let e0 = resolve(.immediate(word(88154)), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x1585c: pc = 88158; let e0 = resolve(.reg(2), 2); logic(get(e0, 2), 2)
        case 0x1585e: pc = 88160; if condition(11) { pc = (88160 + Int(sign(byte(88159), 1))) }
        case 0x15860: pc = 88162; let e0 = resolve(.reg(0), 2); let value = subtract(0, get(e0, 2), 2, extend: false); put(e0, value, 2)
        case 0x15862: pc = 88164; let e0 = resolve(.reg(1), 2); let value = subtract(0, get(e0, 2), 2, extend: false); put(e0, value, 2)
        case 0x15864: pc = 88168; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(88166), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15868: pc = 88172; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(88170), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1586c: pc = 88174; pc = Int(pop())
        case 0x1586e: pc = 88178; let e0 = resolve(.immediate(word(88176)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x15870: pc = 88182; let e0 = resolve(.memory(Int(long(88178)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x15872: pc = 88182; let e0 = resolve(.immediate(word(88180)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x15876: pc = 88184; r[1] = UInt32(bitPattern: sign(byte(88183), 1)); logic(r[1], 4)
        case 0x15878: pc = 88190; let e0 = resolve(.memory(Int(long(88186)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x1587e: pc = 88192; r[1] = (r[1] << 16) | (r[1] >> 16); logic(r[1], 4)
        case 0x15880: pc = 88198; let e0 = resolve(.memory(Int(long(88194)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x15886: pc = 88202; let e0 = resolve(.offset(12, Int(sign(word(88200), 2))), 4); let value = get(e0, 4); let e1 = resolve(.reg(5), 4); put(e1, value, 4); logic(value, 4)
        case 0x1588a: pc = 88204; let e0 = resolve(.indirect(8), 4); let value = get(e0, 4); let e1 = resolve(.reg(3), 4); put(e1, value, 4); logic(value, 4)
        case 0x1588c: pc = 88208; let e0 = resolve(.offset(8, Int(sign(word(88206), 2))), 4); let value = get(e0, 4); let e1 = resolve(.reg(4), 4); put(e1, value, 4); logic(value, 4)
        case 0x15890: pc = 88210; let e0 = resolve(.reg(5), 4); let value = get(e0, 4); let e1 = resolve(.reg(6), 4); put(e1, value, 4); logic(value, 4)
        case 0x15892: pc = 88216; let e0 = resolve(.immediate(long(88212)), 4); let source = get(e0, 4); let e1 = resolve(.reg(5), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4); put(e1, value, 4)
        case 0x15898: pc = 88222; let e0 = resolve(.immediate(long(88218)), 4); let source = get(e0, 4); let e1 = resolve(.reg(6), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x1589e: pc = 88224; let e0 = resolve(.reg(3), 4); let source = get(e0, 4); let e1 = resolve(.reg(5), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x158a0: pc = 88226; if condition(11) { pc = (88226 + Int(sign(byte(88225), 1))) }
        case 0x158a2: pc = 88228; let e0 = resolve(.reg(1), 4); let source = get(e0, 4); let e1 = resolve(.reg(5), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4); put(e1, value, 4)
        case 0x158a4: pc = 88230; let e0 = resolve(.reg(1), 4); let source = get(e0, 4); let e1 = resolve(.reg(6), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4); put(e1, value, 4)
        case 0x158a6: pc = 88232; pc = (88232 + Int(sign(byte(88231), 1)))
        case 0x158a8: pc = 88234; let e0 = resolve(.reg(4), 4); let source = get(e0, 4); let e1 = resolve(.reg(6), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x158aa: pc = 88236; if condition(10) { pc = (88236 + Int(sign(byte(88235), 1))) }
        case 0x158ac: pc = 88238; let e0 = resolve(.reg(1), 4); let source = get(e0, 4); let e1 = resolve(.reg(5), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x158ae: pc = 88240; let e0 = resolve(.reg(1), 4); let source = get(e0, 4); let e1 = resolve(.reg(6), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x158b0: pc = 88242; pc = (88242 + Int(sign(byte(88241), 1)))
        case 0x158b2: pc = 88248; let e0 = resolve(.memory(Int(long(88244)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x158b8: pc = 88250; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x158ba: pc = 88252; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x158bc: pc = 88254; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.reg(4), 4); put(e1, value, 4); logic(value, 4)
        case 0x158be: pc = 88256; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x158c0: pc = 88258; let e0 = resolve(.reg(5), 4); let source = get(e0, 4); let e1 = resolve(.reg(1), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x158c2: pc = 88260; if condition(11) { pc = (88260 + Int(sign(byte(88259), 1))) }
        case 0x158c4: pc = 88262; let e0 = resolve(.reg(6), 4); let source = get(e0, 4); let e1 = resolve(.reg(1), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4); put(e1, value, 4)
        case 0x158c6: pc = 88264; if condition(11) { pc = (88264 + Int(sign(byte(88263), 1))) }
        case 0x158c8: pc = 88268; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (88266 + Int(sign(word(88266), 2))) } }
        case 0x158cc: pc = 88270; pc = Int(pop())
        case 0x158ce: pc = 88272; let e0 = resolve(.reg(4), 4); let value = get(e0, 4); let e1 = resolve(.reg(2), 4); put(e1, value, 4); logic(value, 4)
        case 0x158d0: pc = 88274; r[2] = (r[2] << 16) | (r[2] >> 16); logic(r[2], 4)
        case 0x158d2: pc = 88278; let e0 = resolve(.offset(12, Int(sign(word(88276), 2))), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x158d6: pc = 88282; let e0 = resolve(.immediate(word(88280)), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x158da: pc = 88284; if condition(11) { pc = (88284 + Int(sign(byte(88283), 1))) }
        case 0x158dc: pc = 88288; let e0 = resolve(.immediate(word(88286)), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x158e0: pc = 88290; if condition(10) { pc = (88290 + Int(sign(byte(88289), 1))) }
        case 0x158e2: pc = 88296; let e0 = resolve(.immediate(long(88292)), 4); let source = get(e0, 4); let e1 = resolve(.reg(1), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x158e8: pc = 88298; if condition(11) { pc = (88298 + Int(sign(byte(88297), 1))) }
        case 0x158ea: pc = 88302; let e0 = resolve(.offset(12, Int(sign(word(88300), 2))), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x158ee: pc = 88304; if condition(5) { pc = (88304 + Int(sign(byte(88303), 1))) }
        case 0x158f0: pc = 88306; let e0 = resolve(.reg(2), 2); logic(get(e0, 2), 2)
        case 0x158f2: pc = 88308; if condition(10) { pc = (88308 + Int(sign(byte(88307), 1))) }
        case 0x158f4: pc = 88312; let e0 = resolve(.immediate(word(88310)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x158f8: pc = 88316; let e0 = resolve(.offset(8, Int(sign(word(88314), 2))), 2); logic(get(e0, 2), 2)
        case 0x158fc: pc = 88318; if condition(11) { pc = (88318 + Int(sign(byte(88317), 1))) }
        case 0x158fe: pc = 88322; let e0 = resolve(.offset(8, Int(sign(word(88320), 2))), 2); let value = subtract(0, get(e0, 2), 2, extend: false); put(e0, value, 2)
        default: fail("Untranslated game address")
        }
    }
}
