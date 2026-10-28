// Generated 68000 game labels $019300–$0193FF.
extension LotusMachine {
    func page193() {
        switch pc {
        case 0x19302: pc = 103172; if condition(11) { pc = (103172 + Int(sign(byte(103171), 1))) }
        case 0x19304: pc = 103176; let e0 = resolve(.immediate(word(103174)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x19308: pc = 103180; let e0 = resolve(.immediate(word(103178)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1930c: pc = 103182; if condition(10) { pc = (103182 + Int(sign(byte(103181), 1))) }
        case 0x1930e: pc = 103186; let e0 = resolve(.immediate(word(103184)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x19312: pc = 103192; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(103188)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x19318: pc = 103194; pc = Int(pop())
        default: fail("Untranslated game address")
        }
    }
}
