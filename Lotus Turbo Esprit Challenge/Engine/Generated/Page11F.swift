// Generated 68000 game labels $011F00–$011FFF.
extension LotusMachine {
    func page11f() {
        switch pc {
        case 0x11f02: pc = 73476; if condition(7) { pc = (73476 + Int(sign(byte(73475), 1))) }
        case 0x11f04: pc = 73484; let e0 = resolve(.immediate(word(73478)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(73480)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x11f0c: pc = 73486; if condition(6) { pc = (73486 + Int(sign(byte(73485), 1))) }
        case 0x11f0e: pc = 73490; push(73490); pc = (73488 + Int(sign(word(73488), 2)))
        case 0x11f12: pc = 73496; let e0 = resolve(.memory(Int(long(73492)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11f18: pc = 73498; if condition(11) { pc = (73498 + Int(sign(byte(73497), 1))) }
        case 0x11f1a: pc = 73502; push(73502); pc = (73500 + Int(sign(word(73500), 2)))
        case 0x11f1e: pc = 73506; push(73506); pc = (73504 + Int(sign(word(73504), 2)))
        case 0x11f22: pc = 73512; let e0 = resolve(.memory(Int(long(73508)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11f28: pc = 73518; let e0 = resolve(.memory(Int(long(73514)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11f2e: pc = 73524; let e0 = resolve(.memory(Int(long(73520)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x11f34: pc = 73526; if condition(11) { pc = (73526 + Int(sign(byte(73525), 1))) }
        case 0x11f36: pc = 73530; push(73530); pc = (73528 + Int(sign(word(73528), 2)))
        case 0x11f3a: pc = 73536; let e0 = resolve(.memory(Int(long(73532)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x11f40: pc = 73538; if condition(11) { pc = (73538 + Int(sign(byte(73537), 1))) }
        case 0x11f42: pc = 73542; push(73542); pc = (73540 + Int(sign(word(73540), 2)))
        case 0x11f46: pc = 73550; let e0 = resolve(.immediate(word(73544)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(73546)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11f4e: pc = 73558; let e0 = resolve(.immediate(word(73552)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(73554)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11f56: pc = 73564; let e0 = resolve(.memory(Int(long(73560)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11f5c: pc = 73566; if condition(11) { pc = (73566 + Int(sign(byte(73565), 1))) }
        case 0x11f5e: pc = 73572; let e0 = resolve(.memory(Int(long(73568)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11f64: pc = 73574; if condition(6) { pc = (73574 + Int(sign(byte(73573), 1))) }
        case 0x11f66: pc = 73580; let e0 = resolve(.memory(Int(long(73576)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11f6c: pc = 73582; if condition(7) { pc = (73582 + Int(sign(byte(73581), 1))) }
        case 0x11f6e: pc = 73588; let e0 = resolve(.immediate(long(73584)), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x11f74: pc = 73594; let e0 = resolve(.memory(Int(long(73590)) & 0xffffff), 2); let source = get(e0, 2); divide(0, source, signed: false)
        case 0x11f7a: pc = 73596; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x11f7c: pc = 73602; let e0 = resolve(.memory(Int(long(73598)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x11f82: pc = 73604; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x11f84: pc = 73608; let e0 = resolve(.immediate(word(73606)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x11f88: pc = 73610; if condition(4) { pc = (73610 + Int(sign(byte(73609), 1))) }
        case 0x11f8a: pc = 73614; let e0 = resolve(.immediate(word(73612)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x11f8e: pc = 73616; pc = (73616 + Int(sign(byte(73615), 1)))
        case 0x11f90: pc = 73622; let e0 = resolve(.immediate(long(73618)), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x11f96: pc = 73628; let e0 = resolve(.memory(Int(long(73624)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11f9c: pc = 73630; if condition(7) { pc = (73630 + Int(sign(byte(73629), 1))) }
        case 0x11f9e: pc = 73636; let e0 = resolve(.immediate(long(73632)), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x11fa4: pc = 73642; let e0 = resolve(.memory(Int(long(73638)) & 0xffffff), 2); let source = get(e0, 2); divide(1, source, signed: false)
        case 0x11faa: pc = 73644; r[1] = (r[1] << 16) | (r[1] >> 16); logic(r[1], 4)
        case 0x11fac: pc = 73650; let e0 = resolve(.memory(Int(long(73646)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x11fb2: pc = 73652; r[1] = (r[1] << 16) | (r[1] >> 16); logic(r[1], 4)
        case 0x11fb4: pc = 73656; let e0 = resolve(.immediate(word(73654)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x11fb8: pc = 73658; if condition(4) { pc = (73658 + Int(sign(byte(73657), 1))) }
        case 0x11fba: pc = 73662; let e0 = resolve(.immediate(word(73660)), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x11fbe: pc = 73664; pc = (73664 + Int(sign(byte(73663), 1)))
        case 0x11fc0: pc = 73670; let e0 = resolve(.immediate(long(73666)), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x11fc6: pc = 73674; push(73674); pc = (73672 + Int(sign(word(73672), 2)))
        case 0x11fca: pc = 73680; let e0 = resolve(.memory(Int(long(73676)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11fd0: pc = 73686; let e0 = resolve(.memory(Int(long(73682)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11fd6: pc = 73688; pc = Int(pop())
        case 0x11fd8: pc = 73694; let e0 = resolve(.memory(Int(long(73690)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11fde: pc = 73696; if condition(10) { pc = (73696 + Int(sign(byte(73695), 1))) }
        case 0x11fe0: pc = 73700; push(73700); pc = (73698 + Int(sign(word(73698), 2)))
        case 0x11fe4: pc = 73710; let e0 = resolve(.memory(Int(long(73702)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(73706)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11fee: pc = 73720; let e0 = resolve(.memory(Int(long(73712)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(73716)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11ff8: pc = 73728; let e0 = resolve(.immediate(word(73722)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(73724)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        default: fail("Untranslated game address")
        }
    }
}
