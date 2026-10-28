// Generated 68000 game labels $018000–$0180FF.
extension LotusMachine {
    func page180() {
        switch pc {
        case 0x18000: pc = 98310; let e0 = resolve(.memory(Int(long(98306)) & 0xffffff), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4); put(e1, value, 4)
        case 0x18006: pc = 98312; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x18008: pc = 98314; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x1800a: pc = 98316; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x1800c: pc = 98322; let e0 = resolve(.memory(Int(long(98318)) & 0xffffff), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x18012: pc = 98328; let e0 = resolve(.memory(Int(long(98324)) & 0xffffff), 2); let source = get(e0, 2); divide(0, source, signed: false)
        case 0x18018: pc = 98330; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1801a: pc = 98336; let e0 = resolve(.immediate(long(98332)), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x18020: pc = 98338; if condition(4) { pc = (98338 + Int(sign(byte(98337), 1))) }
        case 0x18022: pc = 98340; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 4); let value = shift(get(e1, 4), count, 4, 1); put(e1, value, 4)
        case 0x18024: pc = 98346; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98342)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1802a: pc = 98348; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x1802c: pc = 98354; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98350)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18032: pc = 98356; pc = Int(pop())
        case 0x18034: pc = 98364; let e0 = resolve(.immediate(word(98358)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98360)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1803c: pc = 98366; pc = Int(pop())
        case 0x1803e: pc = 98372; let e0 = resolve(.memory(Int(long(98368)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x18044: pc = 98374; if condition(7) { pc = (98374 + Int(sign(byte(98373), 1))) }
        case 0x18046: pc = 98380; let e0 = resolve(.memory(Int(long(98376)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1804c: pc = 98386; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98382)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18052: pc = 98392; let e0 = resolve(.memory(Int(long(98388)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x18058: pc = 98398; let e0 = resolve(.memory(Int(long(98394)) & 0xffffff), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4); put(e1, value, 4)
        case 0x1805e: pc = 98400; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x18060: pc = 98402; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x18062: pc = 98404; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x18064: pc = 98410; let e0 = resolve(.memory(Int(long(98406)) & 0xffffff), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x1806a: pc = 98416; let e0 = resolve(.memory(Int(long(98412)) & 0xffffff), 2); let source = get(e0, 2); divide(0, source, signed: false)
        case 0x18070: pc = 98418; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x18072: pc = 98424; let e0 = resolve(.immediate(long(98420)), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x18078: pc = 98426; if condition(4) { pc = (98426 + Int(sign(byte(98425), 1))) }
        case 0x1807a: pc = 98428; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 4); let value = shift(get(e1, 4), count, 4, 1); put(e1, value, 4)
        case 0x1807c: pc = 98434; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98430)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18082: pc = 98436; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x18084: pc = 98442; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98438)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1808a: pc = 98444; pc = Int(pop())
        case 0x1808c: pc = 98452; let e0 = resolve(.immediate(word(98446)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98448)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18094: pc = 98454; pc = Int(pop())
        case 0x18096: pc = 98460; let e0 = resolve(.memory(Int(long(98456)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1809c: pc = 98466; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98462)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x180a2: pc = 98472; let e0 = resolve(.memory(Int(long(98468)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x180a8: pc = 98478; let e0 = resolve(.memory(Int(long(98474)) & 0xffffff), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4); put(e1, value, 4)
        case 0x180ae: pc = 98480; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x180b0: pc = 98482; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x180b2: pc = 98484; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x180b4: pc = 98490; let e0 = resolve(.memory(Int(long(98486)) & 0xffffff), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x180ba: pc = 98496; let e0 = resolve(.memory(Int(long(98492)) & 0xffffff), 2); let source = get(e0, 2); divide(0, source, signed: false)
        case 0x180c0: pc = 98498; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x180c2: pc = 98504; let e0 = resolve(.immediate(long(98500)), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x180c8: pc = 98506; if condition(4) { pc = (98506 + Int(sign(byte(98505), 1))) }
        case 0x180ca: pc = 98508; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 4); let value = shift(get(e1, 4), count, 4, 1); put(e1, value, 4)
        case 0x180cc: pc = 98514; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98510)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x180d2: pc = 98516; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x180d4: pc = 98522; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98518)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x180da: pc = 98524; pc = Int(pop())
        case 0x180dc: pc = 98532; let e0 = resolve(.immediate(word(98526)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98528)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x180e4: pc = 98534; pc = Int(pop())
        case 0x180e6: pc = 98540; let e0 = resolve(.memory(Int(long(98536)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x180ec: pc = 98546; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98542)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x180f2: pc = 98552; let e0 = resolve(.memory(Int(long(98548)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x180f8: pc = 98558; let e0 = resolve(.memory(Int(long(98554)) & 0xffffff), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4); put(e1, value, 4)
        case 0x180fe: pc = 98560; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        default: fail("Untranslated game address")
        }
    }
}
