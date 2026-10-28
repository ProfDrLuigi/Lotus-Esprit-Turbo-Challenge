// Generated 68000 game labels $018800–$0188FF.
extension LotusMachine {
    func page188() {
        switch pc {
        case 0x18802: pc = 100360; let e0 = resolve(.memory(Int(long(100356)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x18808: pc = 100364; let e0 = resolve(.immediate(word(100362)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x1880c: pc = 100366; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1880e: pc = 100368; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18810: pc = 100374; let e0 = resolve(.memory(Int(long(100370)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x18816: pc = 100378; let e0 = resolve(.indexed(9, 6, false, 0), 4); r[9] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x1881a: pc = 100386; let e0 = resolve(.immediate(word(100380)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100382)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18822: pc = 100388; pc = (100388 + Int(sign(byte(100387), 1)))
        case 0x18824: pc = 100398; let e0 = resolve(.memory(Int(long(100390)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100394)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1882e: pc = 100408; let e0 = resolve(.memory(Int(long(100400)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100404)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18838: pc = 100414; let e0 = resolve(.immediate(long(100410)), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x1883e: pc = 100420; let e0 = resolve(.memory(Int(long(100416)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x18844: pc = 100424; let e0 = resolve(.immediate(word(100422)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x18848: pc = 100426; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1884a: pc = 100428; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1884c: pc = 100434; let e0 = resolve(.memory(Int(long(100430)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x18852: pc = 100438; let e0 = resolve(.indexed(9, 6, false, 0), 4); r[9] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x18856: pc = 100446; let e0 = resolve(.immediate(word(100440)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100442)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1885e: pc = 100450; let e0 = resolve(.immediate(word(100448)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x18862: pc = 100454; if condition(4) { pc = (100452 + Int(sign(word(100452), 2))) }
        case 0x18866: pc = 100460; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(100456)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x1886c: pc = 100466; let e0 = resolve(.memory(Int(long(100462)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x18872: pc = 100470; if condition(4) { pc = (100468 + Int(sign(word(100468), 2))) }
        case 0x18876: pc = 100472; let e0 = resolve(.immediate(1), 4); let count = get(e0, 4); let e1 = resolve(.reg(2), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x18878: pc = 100474; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x1887a: pc = 100476; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1887c: pc = 100478; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x1887e: pc = 100480; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18880: pc = 100482; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18882: pc = 100488; let e0 = resolve(.memory(Int(long(100484)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x18888: pc = 100496; let e0 = resolve(.indexed(8, 4, false, 4), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100492)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18890: pc = 100504; let e0 = resolve(.indexed(8, 4, false, 6), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100500)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18898: pc = 100508; let e0 = resolve(.indexed(8, 4, false, 8), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x1889c: pc = 100512; let e0 = resolve(.indexed(8, 4, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.reg(5), 2); put(e1, value, 2); logic(value, 2)
        case 0x188a0: pc = 100514; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x188a2: pc = 100516; let e0 = resolve(.reg(3), 2); let source = get(e0, 2); r[2] = UInt32(bitPattern: sign(r[2], 2) &* sign(source, 2)); logic(r[2], 4)
        case 0x188a4: pc = 100518; let e0 = resolve(.reg(2), 4); let source = get(e0, 4); let e1 = resolve(.reg(2), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x188a6: pc = 100520; r[2] = (r[2] << 16) | (r[2] >> 16); logic(r[2], 4)
        case 0x188a8: pc = 100522; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x188aa: pc = 100528; let e0 = resolve(.memory(Int(long(100524)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x188b0: pc = 100530; let e0 = resolve(.immediate(3), 4); let count = get(e0, 4); let e1 = resolve(.reg(1), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x188b2: pc = 100532; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x188b4: pc = 100536; let e0 = resolve(.indexed(8, 4, false, 10), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x188b8: pc = 100540; let e0 = resolve(.indexed(8, 4, false, 2), 2); let value = get(e0, 2); let e1 = resolve(.reg(5), 2); put(e1, value, 2); logic(value, 2)
        case 0x188bc: pc = 100542; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x188be: pc = 100544; let e0 = resolve(.reg(3), 2); let source = get(e0, 2); r[2] = UInt32(bitPattern: sign(r[2], 2) &* sign(source, 2)); logic(r[2], 4)
        case 0x188c0: pc = 100546; let e0 = resolve(.reg(2), 4); let source = get(e0, 4); let e1 = resolve(.reg(2), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x188c2: pc = 100548; r[2] = (r[2] << 16) | (r[2] >> 16); logic(r[2], 4)
        case 0x188c4: pc = 100550; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x188c6: pc = 100556; let e0 = resolve(.memory(Int(long(100552)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x188cc: pc = 100560; let e0 = resolve(.indexed(8, 0, false, 2), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x188d0: pc = 100564; let e0 = resolve(.indexed(8, 0, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.reg(5), 2); put(e1, value, 2); logic(value, 2)
        case 0x188d4: pc = 100566; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x188d6: pc = 100568; let e0 = resolve(.reg(3), 2); let source = get(e0, 2); r[4] = UInt32(bitPattern: sign(r[4], 2) &* sign(source, 2)); logic(r[4], 4)
        case 0x188d8: pc = 100570; let e0 = resolve(.reg(4), 4); let source = get(e0, 4); let e1 = resolve(.reg(4), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x188da: pc = 100572; r[4] = (r[4] << 16) | (r[4] >> 16); logic(r[4], 4)
        case 0x188dc: pc = 100574; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x188de: pc = 100576; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(4), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x188e0: pc = 100578; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); r[1] = UInt32(bitPattern: sign(r[1], 2) &* sign(source, 2)); logic(r[1], 4)
        case 0x188e2: pc = 100580; r[1] = (r[1] << 16) | (r[1] >> 16); logic(r[1], 4)
        case 0x188e4: pc = 100584; let e0 = resolve(.immediate(word(100582)), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x188e8: pc = 100586; if condition(5) { pc = (100586 + Int(sign(byte(100585), 1))) }
        case 0x188ea: pc = 100590; let e0 = resolve(.immediate(word(100588)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x188ee: pc = 100592; pc = (100592 + Int(sign(byte(100591), 1)))
        case 0x188f0: pc = 100598; let e0 = resolve(.memory(Int(long(100594)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x188f6: pc = 100602; if condition(4) { pc = (100600 + Int(sign(word(100600), 2))) }
        case 0x188fa: pc = 100604; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x188fc: pc = 100606; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x188fe: pc = 100608; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        default: fail("Untranslated game address")
        }
    }
}
