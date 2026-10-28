// Generated 68000 game labels $018100–$0181FF.
extension LotusMachine {
    func page181() {
        switch pc {
        case 0x18100: pc = 98562; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x18102: pc = 98564; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x18104: pc = 98570; let e0 = resolve(.memory(Int(long(98566)) & 0xffffff), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x1810a: pc = 98576; let e0 = resolve(.memory(Int(long(98572)) & 0xffffff), 2); let source = get(e0, 2); divide(0, source, signed: false)
        case 0x18110: pc = 98578; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x18112: pc = 98584; let e0 = resolve(.immediate(long(98580)), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x18118: pc = 98586; if condition(4) { pc = (98586 + Int(sign(byte(98585), 1))) }
        case 0x1811a: pc = 98588; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 4); let value = shift(get(e1, 4), count, 4, 1); put(e1, value, 4)
        case 0x1811c: pc = 98594; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98590)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18122: pc = 98596; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x18124: pc = 98602; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98598)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1812a: pc = 98604; pc = Int(pop())
        case 0x1812c: pc = 98612; let e0 = resolve(.immediate(word(98606)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98608)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18134: pc = 98614; pc = Int(pop())
        case 0x18136: pc = 98620; let e0 = resolve(.memory(Int(long(98616)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1813c: pc = 98626; let e0 = resolve(.memory(Int(long(98622)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x18142: pc = 98628; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x18144: pc = 98630; setRegister(1, UInt32(bitPattern: sign(r[1], 1)), 2); logic(r[1], 2)
        case 0x18146: pc = 98632; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(1), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x18148: pc = 98636; let e0 = resolve(.immediate(word(98634)), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x1814c: pc = 98638; let e0 = resolve(.immediate(8), 4); let count = get(e0, 4); let e1 = resolve(.reg(2), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x1814e: pc = 98644; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98640)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18154: pc = 98650; let e0 = resolve(.memory(Int(long(98646)) & 0xffffff), 4); r[11] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1815a: pc = 98652; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x1815c: pc = 98654; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1815e: pc = 98658; let e0 = resolve(.indexed(11, 6, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x18162: pc = 98660; if condition(11) { pc = (98660 + Int(sign(byte(98659), 1))) }
        case 0x18164: pc = 98666; let e0 = resolve(.memory(Int(long(98662)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x1816a: pc = 98674; let e0 = resolve(.immediate(word(98668)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(98670)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x18172: pc = 98676; if condition(7) { pc = (98676 + Int(sign(byte(98675), 1))) }
        case 0x18174: pc = 98680; push(98680); pc = (98678 + Int(sign(word(98678), 2)))
        case 0x18178: pc = 98682; pc = Int(pop())
        case 0x1817a: pc = 98686; moveMultiple(135, Int(r[15]), 4, load: false, addressRegister: 15, predecrement: true, postincrement: false)
        case 0x1817e: pc = 98690; let e0 = resolve(.immediate(word(98688)), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x18182: pc = 98694; push(98694); pc = (98692 + Int(sign(word(98692), 2)))
        case 0x18186: pc = 98704; let e0 = resolve(.memory(Int(long(98696)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98700)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18190: pc = 98714; let e0 = resolve(.memory(Int(long(98706)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98710)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1819a: pc = 98718; moveMultiple(135, Int(r[15]), 4, load: true, addressRegister: 15, predecrement: false, postincrement: true)
        case 0x1819e: pc = 98722; moveMultiple(135, Int(r[15]), 4, load: false, addressRegister: 15, predecrement: true, postincrement: false)
        case 0x181a2: pc = 98726; let e0 = resolve(.immediate(word(98724)), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x181a6: pc = 98730; push(98730); pc = (98728 + Int(sign(word(98728), 2)))
        case 0x181aa: pc = 98740; let e0 = resolve(.memory(Int(long(98732)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98736)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x181b4: pc = 98750; let e0 = resolve(.memory(Int(long(98742)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98746)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x181be: pc = 98754; moveMultiple(135, Int(r[15]), 4, load: true, addressRegister: 15, predecrement: false, postincrement: true)
        case 0x181c2: pc = 98760; let e0 = resolve(.memory(Int(long(98756)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x181c8: pc = 98764; if condition(7) { pc = (98762 + Int(sign(word(98762), 2))) }
        case 0x181cc: pc = 98768; let e0 = resolve(.immediate(word(98766)), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x181d0: pc = 98772; if condition(11) { pc = (98770 + Int(sign(word(98770), 2))) }
        case 0x181d4: pc = 98774; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x181d6: pc = 98776; let e0 = resolve(.immediate(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x181d8: pc = 98778; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x181da: pc = 98784; let e0 = resolve(.memory(Int(long(98780)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x181e0: pc = 98790; let e0 = resolve(.memory(Int(long(98786)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x181e6: pc = 98794; let e0 = resolve(.indexed(8, 6, false, 0), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x181ea: pc = 98800; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98796)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x181f0: pc = 98804; let e0 = resolve(.indexed(8, 6, false, 40), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x181f4: pc = 98810; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98806)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x181fa: pc = 98818; let e0 = resolve(.indexed(8, 6, false, 20), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98814)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        default: fail("Untranslated game address")
        }
    }
}
