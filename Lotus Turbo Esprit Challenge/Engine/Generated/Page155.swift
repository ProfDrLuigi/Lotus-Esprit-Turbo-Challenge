// Generated 68000 game labels $015500–$0155FF.
extension LotusMachine {
    func page155() {
        switch pc {
        case 0x15502: pc = 87300; if condition(11) { pc = (87300 + Int(sign(byte(87299), 1))) }
        case 0x15504: pc = 87304; let e0 = resolve(.immediate(word(87302)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(1), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0; put(e1, value | flag, 4)
        case 0x15508: pc = 87308; let e0 = resolve(.immediate(word(87306)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1550c: pc = 87310; if condition(10) { pc = (87310 + Int(sign(byte(87309), 1))) }
        case 0x1550e: pc = 87314; let e0 = resolve(.immediate(word(87312)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(1), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0; put(e1, value | flag, 4)
        case 0x15512: pc = 87318; let e0 = resolve(.immediate(word(87316)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(1), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0; put(e1, value | flag, 4)
        case 0x15516: pc = 87324; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.memory(Int(long(87320)) & 0xffffff), 1); put(e1, value, 1); logic(value, 1)
        case 0x1551c: pc = 87326; pc = Int(pop())
        case 0x1551e: pc = 87332; let e0 = resolve(.memory(Int(long(87328)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15524: pc = 87334; let e0 = resolve(.reg(0), 2); let value = subtract(0, get(e0, 2), 2, extend: false); put(e0, value, 2)
        case 0x15526: pc = 87338; let e0 = resolve(.immediate(word(87336)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x1552a: pc = 87340; if condition(11) { pc = (87340 + Int(sign(byte(87339), 1))) }
        case 0x1552c: pc = 87342; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x1552e: pc = 87344; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 4); let value = shift(get(e1, 4), count, 4, 1); put(e1, value, 4)
        case 0x15530: pc = 87350; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.memory(Int(long(87346)) & 0xffffff), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x15536: pc = 87356; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.memory(Int(long(87352)) & 0xffffff), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x1553c: pc = 87362; let e0 = resolve(.memory(Int(long(87358)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x15542: pc = 87364; pc = Int(pop())
        case 0x15544: pc = 87370; let e0 = resolve(.memory(Int(long(87366)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1554a: pc = 87372; if condition(7) { pc = (87372 + Int(sign(byte(87371), 1))) }
        case 0x1554c: pc = 87378; let e0 = resolve(.memory(Int(long(87374)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x15552: pc = 87380; if condition(6) { pc = (87380 + Int(sign(byte(87379), 1))) }
        case 0x15554: pc = 87386; let e0 = resolve(.memory(Int(long(87382)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1555a: pc = 87388; if condition(6) { pc = (87388 + Int(sign(byte(87387), 1))) }
        case 0x1555c: pc = 87394; let e0 = resolve(.memory(Int(long(87390)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x15562: pc = 87396; if condition(7) { pc = (87396 + Int(sign(byte(87395), 1))) }
        case 0x15564: pc = 87402; let e0 = resolve(.memory(Int(long(87398)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1556a: pc = 87404; if condition(7) { pc = (87404 + Int(sign(byte(87403), 1))) }
        case 0x1556c: pc = 87410; let e0 = resolve(.memory(Int(long(87406)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x15572: pc = 87412; if condition(6) { pc = (87412 + Int(sign(byte(87411), 1))) }
        case 0x15574: pc = 87418; let e0 = resolve(.memory(Int(long(87414)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1557a: pc = 87420; if condition(6) { pc = (87420 + Int(sign(byte(87419), 1))) }
        case 0x1557c: pc = 87422; r[0] = UInt32(bitPattern: sign(byte(87421), 1)); logic(r[0], 4)
        case 0x1557e: pc = 87424; pc = Int(pop())
        case 0x15580: pc = 87426; r[0] = UInt32(bitPattern: sign(byte(87425), 1)); logic(r[0], 4)
        case 0x15582: pc = 87428; pc = Int(pop())
        case 0x15584: pc = 87434; let e0 = resolve(.memory(Int(long(87430)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1558a: pc = 87440; let e0 = resolve(.memory(Int(long(87436)) & 0xffffff), 4); r[11] = UInt32(truncatingIfNeeded: e0.address)
        case 0x15590: pc = 87446; let e0 = resolve(.memory(Int(long(87442)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x15596: pc = 87452; let e0 = resolve(.memory(Int(long(87448)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x1559c: pc = 87454; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x1559e: pc = 87456; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x155a0: pc = 87458; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ UInt32(bitPattern: sign(source, 2))
        case 0x155a2: pc = 87464; let e0 = resolve(.memory(Int(long(87460)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x155a8: pc = 87470; let e0 = resolve(.memory(Int(long(87466)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x155ae: pc = 87472; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x155b0: pc = 87474; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x155b2: pc = 87476; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x155b4: pc = 87478; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x155b6: pc = 87480; let e0 = resolve(.immediate(2), 4); let count = get(e0, 4); let e1 = resolve(.reg(2), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x155b8: pc = 87482; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x155ba: pc = 87486; let e0 = resolve(.offset(10, Int(sign(word(87484), 2))), 2); logic(get(e0, 2), 2)
        case 0x155be: pc = 87488; if condition(6) { pc = (87488 + Int(sign(byte(87487), 1))) }
        case 0x155c0: pc = 87492; let e0 = resolve(.offset(10, Int(sign(word(87490), 2))), 4); logic(get(e0, 4), 4)
        case 0x155c4: pc = 87494; if condition(6) { pc = (87494 + Int(sign(byte(87493), 1))) }
        case 0x155c6: pc = 87500; let e0 = resolve(.immediate(word(87496)), 2); let value = get(e0, 2); let e1 = resolve(.offset(10, Int(sign(word(87498), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x155cc: pc = 87504; let e0 = resolve(.offset(11, Int(sign(word(87502), 2))), 2); logic(get(e0, 2), 2)
        case 0x155d0: pc = 87506; if condition(6) { pc = (87506 + Int(sign(byte(87505), 1))) }
        case 0x155d2: pc = 87510; let e0 = resolve(.offset(11, Int(sign(word(87508), 2))), 4); logic(get(e0, 4), 4)
        case 0x155d6: pc = 87512; if condition(6) { pc = (87512 + Int(sign(byte(87511), 1))) }
        case 0x155d8: pc = 87518; let e0 = resolve(.immediate(word(87514)), 2); let value = get(e0, 2); let e1 = resolve(.offset(11, Int(sign(word(87516), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x155de: pc = 87524; let e0 = resolve(.memory(Int(long(87520)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x155e4: pc = 87532; let e0 = resolve(.immediate(word(87526)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(87528)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x155ec: pc = 87534; if condition(4) { pc = (87534 + Int(sign(byte(87533), 1))) }
        case 0x155ee: pc = 87538; let e0 = resolve(.offset(10, Int(sign(word(87536), 2))), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x155f2: pc = 87540; if condition(10) { pc = (87540 + Int(sign(byte(87539), 1))) }
        case 0x155f4: pc = 87544; let e0 = resolve(.offset(10, Int(sign(word(87542), 2))), 2); logic(get(e0, 2), 2)
        case 0x155f8: pc = 87546; if condition(7) { pc = (87546 + Int(sign(byte(87545), 1))) }
        case 0x155fa: pc = 87550; let e0 = resolve(.offset(10, Int(sign(word(87548), 2))), 4); logic(get(e0, 4), 4)
        case 0x155fe: pc = 87552; if condition(6) { pc = (87552 + Int(sign(byte(87551), 1))) }
        default: fail("Untranslated game address")
        }
    }
}
