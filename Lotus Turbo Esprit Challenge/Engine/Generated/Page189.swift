// Generated 68000 game labels $018900–$0189FF.
extension LotusMachine {
    func page189() {
        switch pc {
        case 0x18900: pc = 100610; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18902: pc = 100616; let e0 = resolve(.memory(Int(long(100612)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x18908: pc = 100624; let e0 = resolve(.indexed(8, 2, false, 4), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100620)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18910: pc = 100632; let e0 = resolve(.indexed(8, 2, false, 6), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100628)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18918: pc = 100638; let e0 = resolve(.memory(Int(long(100634)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x1891e: pc = 100640; let e0 = resolve(.immediate(3), 4); let count = get(e0, 4); let e1 = resolve(.reg(1), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x18920: pc = 100646; let e0 = resolve(.memory(Int(long(100642)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x18926: pc = 100650; let e0 = resolve(.indexed(8, 2, false, 0), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x1892a: pc = 100654; let e0 = resolve(.indexed(8, 2, false, 2), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x1892e: pc = 100660; let e0 = resolve(.memory(Int(long(100656)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x18934: pc = 100664; let e0 = resolve(.indexed(8, 0, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x18938: pc = 100666; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1893a: pc = 100668; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); r[1] = UInt32(bitPattern: sign(r[1], 2) &* sign(source, 2)); logic(r[1], 4)
        case 0x1893c: pc = 100670; r[1] = (r[1] << 16) | (r[1] >> 16); logic(r[1], 4)
        case 0x1893e: pc = 100674; let e0 = resolve(.immediate(word(100672)), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x18942: pc = 100676; if condition(5) { pc = (100676 + Int(sign(byte(100675), 1))) }
        case 0x18944: pc = 100678; r[2] = UInt32(bitPattern: sign(byte(100677), 1)); logic(r[2], 4)
        case 0x18946: pc = 100684; let e0 = resolve(.memory(Int(long(100680)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1894c: pc = 100686; if condition(11) { pc = (100686 + Int(sign(byte(100685), 1))) }
        case 0x1894e: pc = 100688; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x18950: pc = 100690; let e0 = resolve(.immediate(3), 4); let count = get(e0, 4); let e1 = resolve(.reg(7), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x18952: pc = 100692; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18954: pc = 100694; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x18956: pc = 100696; let e0 = resolve(.reg(6), 2); let value = subtract(0, get(e0, 2), 2, extend: false); put(e0, value, 2)
        case 0x18958: pc = 100700; let e0 = resolve(.immediate(word(100698)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1895c: pc = 100702; let e0 = resolve(.immediate(2), 4); let count = get(e0, 4); let e1 = resolve(.reg(6), 2); let value = shift(get(e1, 2), count, 2, 0); put(e1, value, 2)
        case 0x1895e: pc = 100708; let e0 = resolve(.memory(Int(long(100704)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x18964: pc = 100710; if condition(6) { pc = (100710 + Int(sign(byte(100709), 1))) }
        case 0x18966: pc = 100716; let e0 = resolve(.memory(Int(long(100712)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x1896c: pc = 100718; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1896e: pc = 100724; let e0 = resolve(.memory(Int(long(100720)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x18974: pc = 100726; let e0 = resolve(.reg(4), 2); let value = subtract(0, get(e0, 2), 2, extend: false); put(e0, value, 2)
        case 0x18976: pc = 100728; let e0 = resolve(.immediate(2), 4); let count = get(e0, 4); let e1 = resolve(.reg(4), 2); let value = shift(get(e1, 2), count, 2, 0); put(e1, value, 2)
        case 0x18978: pc = 100730; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1897a: pc = 100732; let e0 = resolve(.immediate(3), 4); let count = get(e0, 4); let e1 = resolve(.reg(6), 2); let value = shift(get(e1, 2), count, 2, 0); put(e1, value, 2)
        case 0x1897c: pc = 100734; let e0 = resolve(.reg(6), 2); logic(get(e0, 2), 2)
        case 0x1897e: pc = 100736; if condition(10) { pc = (100736 + Int(sign(byte(100735), 1))) }
        case 0x18980: pc = 100738; r[6] = UInt32(bitPattern: sign(byte(100737), 1)); logic(r[6], 4)
        case 0x18982: pc = 100742; let e0 = resolve(.immediate(word(100740)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x18986: pc = 100744; if condition(11) { pc = (100744 + Int(sign(byte(100743), 1))) }
        case 0x18988: pc = 100746; r[6] = UInt32(bitPattern: sign(byte(100745), 1)); logic(r[6], 4)
        case 0x1898a: pc = 100752; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100748)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18990: pc = 100754; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18992: pc = 100760; let e0 = resolve(.memory(Int(long(100756)) & 0xffffff), 4); r[11] = UInt32(truncatingIfNeeded: e0.address)
        case 0x18998: pc = 100764; let e0 = resolve(.indexed(11, 7, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.reg(7), 1); put(e1, value, 1); logic(value, 1)
        case 0x1899c: pc = 100768; let e0 = resolve(.immediate(word(100766)), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x189a0: pc = 100774; let e0 = resolve(.memory(Int(long(100770)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x189a6: pc = 100776; pc = (100776 + Int(sign(byte(100775), 1)))
        case 0x189a8: pc = 100778; pc = Int(pop())
        case 0x189aa: pc = 100782; let e0 = resolve(.immediate(word(100780)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x189ac: pc = 100784; let e0 = resolve(.immediate(word(100782)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x189ae: pc = 100784; let e0 = resolve(.reg(12), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x189b0: pc = 100790; let e0 = resolve(.memory(Int(long(100786)) & 0xffffff), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4); put(e1, value, 4)
        case 0x189b6: pc = 100796; let e0 = resolve(.immediate(long(100792)), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x189bc: pc = 100800; if condition(4) { pc = (100798 + Int(sign(word(100798), 2))) }
        case 0x189c0: pc = 100802; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x189c2: pc = 100804; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x189c4: pc = 100806; let e0 = resolve(.reg(9), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x189c6: pc = 100810; let e0 = resolve(.indexed(8, 7, false, 0), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x189ca: pc = 100812; let e0 = resolve(.reg(9), 4); let source = get(e0, 4); let e1 = resolve(.reg(8), 4); let destination = get(e1, 4); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x189cc: pc = 100814; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x189ce: pc = 100816; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x189d0: pc = 100822; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(100818)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x189d6: pc = 100824; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(5), 2); put(e1, value, 2); logic(value, 2)
        case 0x189d8: pc = 100826; let e0 = resolve(.reg(3), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x189da: pc = 100828; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x189dc: pc = 100830; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x189de: pc = 100832; pc = (100832 + Int(sign(byte(100831), 1)))
        case 0x189e0: pc = 100834; let e0 = resolve(.reg(12), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x189e2: pc = 100840; let e0 = resolve(.memory(Int(long(100836)) & 0xffffff), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4); put(e1, value, 4)
        case 0x189e8: pc = 100846; let e0 = resolve(.immediate(long(100842)), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x189ee: pc = 100850; if condition(4) { pc = (100848 + Int(sign(word(100848), 2))) }
        case 0x189f2: pc = 100854; let e0 = resolve(.immediate(word(100852)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x189f6: pc = 100856; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x189f8: pc = 100858; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x189fa: pc = 100860; let e0 = resolve(.reg(9), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x189fc: pc = 100864; let e0 = resolve(.indexed(8, 7, false, 0), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        default: fail("Untranslated game address")
        }
    }
}
