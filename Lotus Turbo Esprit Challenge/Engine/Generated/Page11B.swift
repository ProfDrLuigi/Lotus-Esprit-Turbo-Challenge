// Generated 68000 game labels $011B00–$011BFF.
extension LotusMachine {
    func page11b() {
        switch pc {
        case 0x11b00: pc = 72456; let e0 = resolve(.immediate(word(72450)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(72452)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11b08: pc = 72462; let e0 = resolve(.memory(Int(long(72458)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11b0e: pc = 72468; let e0 = resolve(.memory(Int(long(72464)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11b14: pc = 72474; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(72470)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x11b1a: pc = 72480; let e0 = resolve(.memory(Int(long(72476)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x11b20: pc = 72486; let e0 = resolve(.memory(Int(long(72482)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x11b26: pc = 72488; if condition(7) { pc = (72488 + Int(sign(byte(72487), 1))) }
        case 0x11b28: pc = 72492; push(72492); pc = (72490 + Int(sign(word(72490), 2)))
        case 0x11b2c: pc = 72498; let e0 = resolve(.memory(Int(long(72494)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11b32: pc = 72502; if condition(6) { pc = (72500 + Int(sign(word(72500), 2))) }
        case 0x11b36: pc = 72506; push(72506); pc = (72504 + Int(sign(word(72504), 2)))
        case 0x11b3a: pc = 72512; let e0 = resolve(.memory(Int(long(72508)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11b40: pc = 72516; if condition(6) { pc = (72514 + Int(sign(word(72514), 2))) }
        case 0x11b44: pc = 72520; push(72520); pc = (72518 + Int(sign(word(72518), 2)))
        case 0x11b48: pc = 72526; let e0 = resolve(.memory(Int(long(72522)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11b4e: pc = 72530; if condition(6) { pc = (72528 + Int(sign(word(72528), 2))) }
        case 0x11b52: pc = 72536; let e0 = resolve(.memory(Int(long(72532)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11b58: pc = 72538; if condition(7) { pc = (72538 + Int(sign(byte(72537), 1))) }
        case 0x11b5a: pc = 72542; pc = (72540 + Int(sign(word(72540), 2)))
        case 0x11b5e: pc = 72548; let e0 = resolve(.memory(Int(long(72544)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11b64: pc = 72550; if condition(7) { pc = (72550 + Int(sign(byte(72549), 1))) }
        case 0x11b66: pc = 72554; push(72554); pc = (72552 + Int(sign(word(72552), 2)))
        case 0x11b6a: pc = 72558; push(72558); pc = (72556 + Int(sign(word(72556), 2)))
        case 0x11b6e: pc = 72564; let e0 = resolve(.memory(Int(long(72560)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11b74: pc = 72566; if condition(7) { pc = (72566 + Int(sign(byte(72565), 1))) }
        case 0x11b76: pc = 72568; pc = (72568 + Int(sign(byte(72567), 1)))
        case 0x11b78: pc = 72572; push(72572); pc = (72570 + Int(sign(word(72570), 2)))
        case 0x11b7c: pc = 72576; push(72576); pc = (72574 + Int(sign(word(72574), 2)))
        case 0x11b80: pc = 72582; let e0 = resolve(.memory(Int(long(72578)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11b86: pc = 72584; if condition(7) { pc = (72584 + Int(sign(byte(72583), 1))) }
        case 0x11b88: pc = 72586; pc = (72586 + Int(sign(byte(72585), 1)))
        case 0x11b8a: pc = 72592; let e0 = resolve(.memory(Int(long(72588)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x11b90: pc = 72596; push(72596); pc = (72594 + Int(sign(word(72594), 2)))
        case 0x11b94: pc = 72600; push(72600); pc = (72598 + Int(sign(word(72598), 2)))
        case 0x11b98: pc = 72606; let e0 = resolve(.memory(Int(long(72602)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x11b9e: pc = 72608; r[0] = UInt32(bitPattern: sign(byte(72607), 1)); logic(r[0], 4)
        case 0x11ba0: pc = 72612; push(72612); pc = (72610 + Int(sign(word(72610), 2)))
        case 0x11ba4: pc = 72616; push(72616); pc = (72614 + Int(sign(word(72614), 2)))
        case 0x11ba8: pc = 72624; let e0 = resolve(.immediate(word(72618)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(72620)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11bb0: pc = 72632; let e0 = resolve(.immediate(word(72626)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(72628)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11bb8: pc = 72640; let e0 = resolve(.immediate(word(72634)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(72636)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11bc0: pc = 72648; let e0 = resolve(.immediate(word(72642)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(72644)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11bc8: pc = 72654; let e0 = resolve(.memory(Int(long(72650)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11bce: pc = 72660; let e0 = resolve(.memory(Int(long(72656)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11bd4: pc = 72664; push(72664); pc = (72662 + Int(sign(word(72662), 2)))
        case 0x11bd8: pc = 72668; push(72668); pc = (72666 + Int(sign(word(72666), 2)))
        case 0x11bdc: pc = 72674; let e0 = resolve(.memory(Int(long(72670)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11be2: pc = 72676; if condition(7) { pc = (72676 + Int(sign(byte(72675), 1))) }
        case 0x11be4: pc = 72680; pc = (72678 + Int(sign(word(72678), 2)))
        case 0x11be8: pc = 72684; push(72684); pc = (72682 + Int(sign(word(72682), 2)))
        case 0x11bec: pc = 72688; push(72688); pc = (72686 + Int(sign(word(72686), 2)))
        case 0x11bf0: pc = 72694; let e0 = resolve(.memory(Int(long(72690)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x11bf6: pc = 72698; push(72698); pc = (72696 + Int(sign(word(72696), 2)))
        case 0x11bfa: pc = 72702; push(72702); pc = (72700 + Int(sign(word(72700), 2)))
        case 0x11bfe: pc = 72708; let e0 = resolve(.memory(Int(long(72704)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        default: fail("Untranslated game address")
        }
    }
}
