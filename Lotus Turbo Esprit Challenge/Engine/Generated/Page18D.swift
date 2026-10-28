// Generated 68000 game labels $018D00–$018DFF.
extension LotusMachine {
    func page18d() {
        switch pc {
        case 0x18d02: pc = 101636; if condition(5) { pc = (101636 + Int(sign(byte(101635), 1))) }
        case 0x18d04: pc = 101640; let e0 = resolve(.immediate(word(101638)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x18d08: pc = 101642; r[1] = UInt32(bitPattern: sign(byte(101641), 1)); logic(r[1], 4)
        case 0x18d0a: pc = 101648; let e0 = resolve(.memory(Int(long(101644)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x18d10: pc = 101654; let e0 = resolve(.memory(Int(long(101650)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x18d16: pc = 101660; let e0 = resolve(.memory(Int(long(101656)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x18d1c: pc = 101662; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x18d1e: pc = 101664; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ UInt32(bitPattern: sign(source, 2))
        case 0x18d20: pc = 101666; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(10), 2); let destination = get(e1, 2); _ = source; _ = destination; r[10] = r[10] &+ UInt32(bitPattern: sign(source, 2))
        case 0x18d22: pc = 101670; let e0 = resolve(.immediate(word(101668)), 2); let source = get(e0, 2); r[0] = (r[0] & 65535) &* source; logic(r[0], 4)
        case 0x18d26: pc = 101676; let e0 = resolve(.immediate(long(101672)), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x18d2c: pc = 101678; let e0 = resolve(.reg(1), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x18d2e: pc = 101680; let e0 = resolve(.reg(0), 4); r[12] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x18d30: pc = 101682; let e0 = resolve(.indirect(12), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x18d32: pc = 101686; let e0 = resolve(.indirect(12), 1); let value = get(e0, 1); let e1 = resolve(.offset(8, Int(sign(word(101684), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18d36: pc = 101690; let e0 = resolve(.indirect(12), 1); let value = get(e0, 1); let e1 = resolve(.offset(8, Int(sign(word(101688), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18d3a: pc = 101696; let e0 = resolve(.offset(12, Int(sign(word(101692), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(8, Int(sign(word(101694), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18d40: pc = 101702; let e0 = resolve(.offset(12, Int(sign(word(101698), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(8, Int(sign(word(101700), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18d46: pc = 101708; let e0 = resolve(.offset(12, Int(sign(word(101704), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(8, Int(sign(word(101706), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18d4c: pc = 101710; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(12), 2); let destination = get(e1, 2); _ = source; _ = destination; r[12] = r[12] &+ source
        case 0x18d4e: pc = 101712; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x18d50: pc = 101714; let e0 = resolve(.indirect(12), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x18d52: pc = 101718; let e0 = resolve(.indirect(12), 1); let value = get(e0, 1); let e1 = resolve(.offset(8, Int(sign(word(101716), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18d56: pc = 101722; let e0 = resolve(.indirect(12), 1); let value = get(e0, 1); let e1 = resolve(.offset(8, Int(sign(word(101720), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18d5a: pc = 101728; let e0 = resolve(.offset(12, Int(sign(word(101724), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(8, Int(sign(word(101726), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18d60: pc = 101734; let e0 = resolve(.offset(12, Int(sign(word(101730), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(8, Int(sign(word(101732), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18d66: pc = 101740; let e0 = resolve(.offset(12, Int(sign(word(101736), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(8, Int(sign(word(101738), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18d6c: pc = 101742; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(12), 2); let destination = get(e1, 2); _ = source; _ = destination; r[12] = r[12] &+ source
        case 0x18d6e: pc = 101744; let e0 = resolve(.indirect(12), 1); let value = get(e0, 1); let e1 = resolve(.indirect(9), 1); put(e1, value, 1); logic(value, 1)
        case 0x18d70: pc = 101748; let e0 = resolve(.indirect(12), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(101746), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18d74: pc = 101752; let e0 = resolve(.indirect(12), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(101750), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18d78: pc = 101758; let e0 = resolve(.offset(12, Int(sign(word(101754), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(101756), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18d7e: pc = 101764; let e0 = resolve(.offset(12, Int(sign(word(101760), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(101762), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18d84: pc = 101770; let e0 = resolve(.offset(12, Int(sign(word(101766), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(101768), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18d8a: pc = 101772; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(12), 2); let destination = get(e1, 2); _ = source; _ = destination; r[12] = r[12] &+ source
        case 0x18d8c: pc = 101774; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ source
        case 0x18d8e: pc = 101776; let e0 = resolve(.indirect(12), 1); let value = get(e0, 1); let e1 = resolve(.indirect(9), 1); put(e1, value, 1); logic(value, 1)
        case 0x18d90: pc = 101780; let e0 = resolve(.indirect(12), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(101778), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18d94: pc = 101784; let e0 = resolve(.indirect(12), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(101782), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18d98: pc = 101790; let e0 = resolve(.offset(12, Int(sign(word(101786), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(101788), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18d9e: pc = 101796; let e0 = resolve(.offset(12, Int(sign(word(101792), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(101794), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18da4: pc = 101802; let e0 = resolve(.offset(12, Int(sign(word(101798), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(101800), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18daa: pc = 101804; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(12), 2); let destination = get(e1, 2); _ = source; _ = destination; r[12] = r[12] &+ source
        case 0x18dac: pc = 101806; let e0 = resolve(.indirect(12), 1); let value = get(e0, 1); let e1 = resolve(.indirect(10), 1); put(e1, value, 1); logic(value, 1)
        case 0x18dae: pc = 101810; let e0 = resolve(.indirect(12), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(101808), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18db2: pc = 101814; let e0 = resolve(.indirect(12), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(101812), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18db6: pc = 101820; let e0 = resolve(.offset(12, Int(sign(word(101816), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(101818), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18dbc: pc = 101826; let e0 = resolve(.offset(12, Int(sign(word(101822), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(101824), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18dc2: pc = 101832; let e0 = resolve(.offset(12, Int(sign(word(101828), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(101830), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18dc8: pc = 101834; pc = Int(pop())
        case 0x18dca: pc = 101840; let e0 = resolve(.memory(Int(long(101836)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x18dd0: pc = 101842; pc = (101842 + Int(sign(byte(101841), 1)))
        case 0x18dd2: pc = 101848; let e0 = resolve(.memory(Int(long(101844)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x18dd8: pc = 101852; let e0 = resolve(.immediate(word(101850)), 2); let source = get(e0, 2); r[0] = (r[0] & 65535) &* source; logic(r[0], 4)
        case 0x18ddc: pc = 101858; let e0 = resolve(.immediate(long(101854)), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x18de2: pc = 101860; let e0 = resolve(.reg(0), 4); r[12] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x18de4: pc = 101864; let e0 = resolve(.offset(8, Int(sign(word(101862), 2))), 4); r[11] = UInt32(truncatingIfNeeded: e0.address)
        case 0x18de8: pc = 101866; let e0 = resolve(.indirect(12), 1); let value = get(e0, 1); let e1 = resolve(.indirect(11), 1); put(e1, value, 1); logic(value, 1)
        case 0x18dea: pc = 101872; let e0 = resolve(.offset(12, Int(sign(word(101868), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(11, Int(sign(word(101870), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18df0: pc = 101878; let e0 = resolve(.offset(12, Int(sign(word(101874), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(11, Int(sign(word(101876), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18df6: pc = 101884; let e0 = resolve(.offset(12, Int(sign(word(101880), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(11, Int(sign(word(101882), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18dfc: pc = 101890; let e0 = resolve(.offset(12, Int(sign(word(101886), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(11, Int(sign(word(101888), 2))), 1); put(e1, value, 1); logic(value, 1)
        default: fail("Untranslated game address")
        }
    }
}
