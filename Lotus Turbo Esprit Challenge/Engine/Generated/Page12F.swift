// Generated 68000 game labels $012F00–$012FFF.
extension LotusMachine {
    func page12f() {
        switch pc {
        case 0x12f02: pc = 77572; if condition(6) { pc = (77572 + Int(sign(byte(77571), 1))) }
        case 0x12f04: pc = 77578; let e0 = resolve(.memory(Int(long(77574)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x12f0a: pc = 77584; let e0 = resolve(.memory(Int(long(77580)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x12f10: pc = 77586; if condition(6) { pc = (77586 + Int(sign(byte(77585), 1))) }
        case 0x12f12: pc = 77594; let e0 = resolve(.immediate(word(77588)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(77590)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x12f1a: pc = 77602; let e0 = resolve(.immediate(word(77596)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(77598)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x12f22: pc = 77606; push(77606); pc = (77604 + Int(sign(word(77604), 2)))
        case 0x12f26: pc = 77610; push(77610); pc = (77608 + Int(sign(word(77608), 2)))
        case 0x12f2a: pc = 77618; let e0 = resolve(.immediate(word(77612)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(77614)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x12f32: pc = 77622; push(77622); pc = (77620 + Int(sign(word(77620), 2)))
        case 0x12f36: pc = 77630; let e0 = resolve(.immediate(word(77624)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(77626)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x12f3e: pc = 77632; if condition(6) { pc = (77632 + Int(sign(byte(77631), 1))) }
        case 0x12f40: pc = 77636; push(77636); pc = (77634 + Int(sign(word(77634), 2)))
        case 0x12f44: pc = 77642; let e0 = resolve(.memory(Int(long(77638)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x12f4a: pc = 77648; let e0 = resolve(.memory(Int(long(77644)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x12f50: pc = 77652; push(77652); pc = (77650 + Int(sign(word(77650), 2)))
        case 0x12f54: pc = 77660; let e0 = resolve(.immediate(word(77654)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(77656)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x12f5c: pc = 77662; if condition(5) { pc = (77662 + Int(sign(byte(77661), 1))) }
        case 0x12f5e: pc = 77668; let e0 = resolve(.memory(Int(long(77664)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x12f64: pc = 77670; if condition(6) { pc = (77670 + Int(sign(byte(77669), 1))) }
        case 0x12f66: pc = 77674; push(77674); pc = (77672 + Int(sign(word(77672), 2)))
        case 0x12f6a: pc = 77684; let e0 = resolve(.memory(Int(long(77676)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(77680)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x12f74: pc = 77694; let e0 = resolve(.memory(Int(long(77686)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(77690)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x12f7e: pc = 77702; let e0 = resolve(.immediate(word(77696)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(77698)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x12f86: pc = 77710; let e0 = resolve(.immediate(word(77704)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(77706)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x12f8e: pc = 77712; pc = Int(pop())
        case 0x12f90: pc = 77720; let e0 = resolve(.immediate(word(77714)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(77716)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x12f98: pc = 77722; pc = Int(pop())
        case 0x12f9a: pc = 77726; let e0 = resolve(.immediate(word(77724)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x12f9c: pc = 77728; let e0 = resolve(.immediate(word(77726)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x12f9e: pc = 77728; let e0 = resolve(.reg(3), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.indirect(8), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0; put(e1, value | flag, 1)
        case 0x12fa0: pc = 77730; let e0 = resolve(.reg(3), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.indirect(8), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0; put(e1, value | flag, 1)
        case 0x12fa2: pc = 77736; let e0 = resolve(.memory(Int(long(77732)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x12fa8: pc = 77742; let e0 = resolve(.memory(Int(long(77738)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x12fae: pc = 77746; push(77746); pc = (77744 + Int(sign(word(77744), 2)))
        case 0x12fb2: pc = 77752; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(77748)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x12fb8: pc = 77758; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(77754)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x12fbe: pc = 77764; let e0 = resolve(.memory(Int(long(77760)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x12fc4: pc = 77770; let e0 = resolve(.memory(Int(long(77766)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x12fca: pc = 77774; push(77774); pc = (77772 + Int(sign(word(77772), 2)))
        case 0x12fce: pc = 77780; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(77776)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x12fd4: pc = 77786; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(77782)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x12fda: pc = 77788; pc = Int(pop())
        case 0x12fdc: pc = 77790; let e0 = resolve(.reg(1), 2); logic(get(e0, 2), 2)
        case 0x12fde: pc = 77792; if condition(7) { pc = (77792 + Int(sign(byte(77791), 1))) }
        case 0x12fe0: pc = 77796; let e0 = resolve(.immediate(word(77794)), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x12fe4: pc = 77798; if condition(5) { pc = (77798 + Int(sign(byte(77797), 1))) }
        case 0x12fe6: pc = 77802; push(77802); pc = (77800 + Int(sign(word(77800), 2)))
        case 0x12fea: pc = 77806; let e0 = resolve(.immediate(word(77804)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x12fee: pc = 77808; if condition(4) { pc = (77808 + Int(sign(byte(77807), 1))) }
        case 0x12ff0: pc = 77810; let e0 = resolve(.reg(1), 2); let value = ~get(e0, 2); put(e0, value, 2); logic(value, 2)
        case 0x12ff2: pc = 77812; pc = (77812 + Int(sign(byte(77811), 1)))
        case 0x12ff4: pc = 77816; let e0 = resolve(.immediate(word(77814)), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x12ff8: pc = 77818; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x12ffa: pc = 77822; let e0 = resolve(.immediate(word(77820)), 2); let source = get(e0, 2); r[3] = (r[3] & 65535) &* source; logic(r[3], 4)
        case 0x12ffe: pc = 77824; r[3] = (r[3] << 16) | (r[3] >> 16); logic(r[3], 4)
        default: fail("Untranslated game address")
        }
    }
}
