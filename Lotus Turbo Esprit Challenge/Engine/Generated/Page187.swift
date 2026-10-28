// Generated 68000 game labels $018700–$0187FF.
extension LotusMachine {
    func page187() {
        switch pc {
        case 0x18704: pc = 100106; let e0 = resolve(.memory(Int(long(100102)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1870a: pc = 100112; let e0 = resolve(.immediate(long(100108)), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x18710: pc = 100120; let e0 = resolve(.immediate(word(100114)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100116)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18718: pc = 100126; let e0 = resolve(.memory(Int(long(100122)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x1871e: pc = 100132; let e0 = resolve(.memory(Int(long(100128)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18724: pc = 100134; r[2] = UInt32(bitPattern: sign(byte(100133), 1)); logic(r[2], 4)
        case 0x18726: pc = 100136; r[7] = UInt32(bitPattern: sign(byte(100135), 1)); logic(r[7], 4)
        case 0x18728: pc = 100140; push(100140); pc = (100138 + Int(sign(word(100138), 2)))
        case 0x1872c: pc = 100148; let e0 = resolve(.immediate(word(100142)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(100144)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x18734: pc = 100150; if condition(6) { pc = (100150 + Int(sign(byte(100149), 1))) }
        case 0x18736: pc = 100156; let e0 = resolve(.memory(Int(long(100152)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1873c: pc = 100158; pc = (100158 + Int(sign(byte(100157), 1)))
        case 0x1873e: pc = 100166; let e0 = resolve(.immediate(word(100160)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.memory(Int(long(100162)) & 0xffffff), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x18746: pc = 100168; if condition(7) { pc = (100168 + Int(sign(byte(100167), 1))) }
        case 0x18748: pc = 100174; let e0 = resolve(.memory(Int(long(100170)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1874e: pc = 100180; let e0 = resolve(.immediate(long(100176)), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x18754: pc = 100188; let e0 = resolve(.immediate(word(100182)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100184)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1875c: pc = 100194; let e0 = resolve(.memory(Int(long(100190)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x18762: pc = 100200; let e0 = resolve(.memory(Int(long(100196)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18768: pc = 100202; r[2] = UInt32(bitPattern: sign(byte(100201), 1)); logic(r[2], 4)
        case 0x1876a: pc = 100208; let e0 = resolve(.memory(Int(long(100204)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x18770: pc = 100212; push(100212); pc = (100210 + Int(sign(word(100210), 2)))
        case 0x18774: pc = 100218; let e0 = resolve(.memory(Int(long(100214)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1877a: pc = 100224; let e0 = resolve(.immediate(long(100220)), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x18780: pc = 100232; let e0 = resolve(.immediate(word(100226)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100228)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18788: pc = 100238; let e0 = resolve(.memory(Int(long(100234)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x1878e: pc = 100244; let e0 = resolve(.memory(Int(long(100240)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18794: pc = 100246; r[2] = UInt32(bitPattern: sign(byte(100245), 1)); logic(r[2], 4)
        case 0x18796: pc = 100252; let e0 = resolve(.memory(Int(long(100248)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x1879c: pc = 100256; push(100256); pc = (100254 + Int(sign(word(100254), 2)))
        case 0x187a0: pc = 100258; pc = Int(pop())
        case 0x187a2: pc = 100268; let e0 = resolve(.memory(Int(long(100260)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100264)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x187ac: pc = 100278; let e0 = resolve(.memory(Int(long(100270)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100274)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x187b6: pc = 100284; let e0 = resolve(.immediate(long(100280)), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x187bc: pc = 100290; let e0 = resolve(.immediate(long(100286)), 4); r[9] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x187c2: pc = 100294; pc = (100292 + Int(sign(word(100292), 2)))
        case 0x187c6: pc = 100304; let e0 = resolve(.memory(Int(long(100296)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100300)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x187d0: pc = 100314; let e0 = resolve(.memory(Int(long(100306)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100310)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x187da: pc = 100320; let e0 = resolve(.immediate(long(100316)), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x187e0: pc = 100326; let e0 = resolve(.immediate(long(100322)), 4); r[9] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x187e6: pc = 100328; pc = (100328 + Int(sign(byte(100327), 1)))
        case 0x187e8: pc = 100338; let e0 = resolve(.memory(Int(long(100330)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100334)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x187f2: pc = 100348; let e0 = resolve(.memory(Int(long(100340)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(100344)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x187fc: pc = 100354; let e0 = resolve(.immediate(long(100350)), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        default: fail("Untranslated game address")
        }
    }
}
