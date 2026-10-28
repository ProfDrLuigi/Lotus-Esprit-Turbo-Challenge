// Generated 68000 game labels $018F00–$018FFF.
extension LotusMachine {
    func page18f() {
        switch pc {
        case 0x18f02: pc = 102150; let e0 = resolve(.offset(10, Int(sign(word(102148), 2))), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x18f06: pc = 102156; let e0 = resolve(.memory(Int(long(102152)) & 0xffffff), 4); r[12] = UInt32(truncatingIfNeeded: e0.address)
        case 0x18f0c: pc = 102160; let e0 = resolve(.indexed(12, 0, false, 0), 4); r[12] = UInt32(truncatingIfNeeded: e0.address)
        case 0x18f10: pc = 102162; r[0] = UInt32(bitPattern: sign(byte(102161), 1)); logic(r[0], 4)
        case 0x18f12: pc = 102168; let e0 = resolve(.offset(12, Int(sign(word(102164), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(8, Int(sign(word(102166), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18f18: pc = 102174; let e0 = resolve(.offset(12, Int(sign(word(102170), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(8, Int(sign(word(102172), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18f1e: pc = 102180; let e0 = resolve(.offset(12, Int(sign(word(102176), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(8, Int(sign(word(102178), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18f24: pc = 102186; let e0 = resolve(.offset(12, Int(sign(word(102182), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(8, Int(sign(word(102184), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18f2a: pc = 102192; let e0 = resolve(.offset(12, Int(sign(word(102188), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(102190), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18f30: pc = 102198; let e0 = resolve(.offset(12, Int(sign(word(102194), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(102196), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18f36: pc = 102204; let e0 = resolve(.offset(12, Int(sign(word(102200), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(102202), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18f3c: pc = 102210; let e0 = resolve(.offset(12, Int(sign(word(102206), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(102208), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18f42: pc = 102216; let e0 = resolve(.offset(12, Int(sign(word(102212), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(102214), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18f48: pc = 102222; let e0 = resolve(.offset(12, Int(sign(word(102218), 2))), 1); let value = get(e0, 1); let e1 = resolve(.offset(10, Int(sign(word(102220), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x18f4e: pc = 102224; let e0 = resolve(.immediate(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(12), 2); let destination = get(e1, 2); _ = source; _ = destination; r[12] = r[12] &+ source
        case 0x18f50: pc = 102226; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x18f52: pc = 102228; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ source
        case 0x18f54: pc = 102230; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(10), 2); let destination = get(e1, 2); _ = source; _ = destination; r[10] = r[10] &+ source
        case 0x18f56: pc = 102234; if !condition(1) {     setRegister(0, r[0] &- 1, 2);     if r[0] & 65535 != 65535 { pc = (102232 + Int(sign(word(102232), 2))) } }
        case 0x18f5a: pc = 102236; pc = Int(pop())
        case 0x18f5c: pc = 102242; let e0 = resolve(.memory(Int(long(102238)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x18f62: pc = 102248; let e0 = resolve(.memory(Int(long(102244)) & 0xffffff), 4); r[12] = UInt32(truncatingIfNeeded: e0.address)
        case 0x18f68: pc = 102250; push(102250); pc = (102250 + Int(sign(byte(102249), 1)))
        case 0x18f6a: pc = 102254; if condition(7) { pc = (102252 + Int(sign(word(102252), 2))) }
        case 0x18f6e: pc = 102260; let e0 = resolve(.memory(Int(long(102256)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x18f74: pc = 102266; let e0 = resolve(.memory(Int(long(102262)) & 0xffffff), 4); r[9] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x18f7a: pc = 102268; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x18f7c: pc = 102270; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ UInt32(bitPattern: sign(source, 2))
        case 0x18f7e: pc = 102274; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(102272), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x18f82: pc = 102278; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(102276), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x18f86: pc = 102284; let e0 = resolve(.memory(Int(long(102280)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x18f8c: pc = 102286; if condition(7) { pc = (102286 + Int(sign(byte(102285), 1))) }
        case 0x18f8e: pc = 102290; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(9, Int(sign(word(102288), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x18f92: pc = 102294; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(9, Int(sign(word(102292), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x18f96: pc = 102296; pc = Int(pop())
        case 0x18f98: pc = 102302; let e0 = resolve(.memory(Int(long(102298)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x18f9e: pc = 102308; let e0 = resolve(.memory(Int(long(102304)) & 0xffffff), 4); r[12] = UInt32(truncatingIfNeeded: e0.address)
        case 0x18fa4: pc = 102310; push(102310); pc = (102310 + Int(sign(byte(102309), 1)))
        case 0x18fa6: pc = 102314; if condition(7) { pc = (102312 + Int(sign(word(102312), 2))) }
        case 0x18faa: pc = 102320; let e0 = resolve(.memory(Int(long(102316)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x18fb0: pc = 102326; let e0 = resolve(.memory(Int(long(102322)) & 0xffffff), 4); r[9] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x18fb6: pc = 102328; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x18fb8: pc = 102330; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ UInt32(bitPattern: sign(source, 2))
        case 0x18fba: pc = 102334; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(102332), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x18fbe: pc = 102338; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(102336), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x18fc2: pc = 102342; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(9, Int(sign(word(102340), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x18fc6: pc = 102346; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(9, Int(sign(word(102344), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x18fca: pc = 102348; pc = Int(pop())
        case 0x18fcc: pc = 102354; let e0 = resolve(.memory(Int(long(102350)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x18fd2: pc = 102360; let e0 = resolve(.immediate(long(102356)), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination & source; put(e1, value, 4); logic(value, 4)
        case 0x18fd8: pc = 102366; let e0 = resolve(.memory(Int(long(102362)) & 0xffffff), 2); let source = get(e0, 2); divide(0, source, signed: false)
        case 0x18fde: pc = 102368; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x18fe0: pc = 102370; if condition(6) { pc = (102370 + Int(sign(byte(102369), 1))) }
        case 0x18fe2: pc = 102372; let e0 = resolve(.indirect(12), 2); logic(get(e0, 2), 2)
        case 0x18fe4: pc = 102374; if condition(10) { pc = (102374 + Int(sign(byte(102373), 1))) }
        case 0x18fe6: pc = 102380; let e0 = resolve(.memory(Int(long(102376)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x18fec: pc = 102384; let e0 = resolve(.immediate(word(102382)), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x18ff0: pc = 102388; let e0 = resolve(.immediate(word(102386)), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination ^ source; put(e1, value, 2); logic(value, 2)
        case 0x18ff4: pc = 102392; let e0 = resolve(.immediate(word(102390)), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18ff8: pc = 102394; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.indirect(12), 2); put(e1, value, 2); logic(value, 2)
        case 0x18ffa: pc = 102396; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x18ffc: pc = 102398; if condition(5) { pc = (102398 + Int(sign(byte(102397), 1))) }
        case 0x18ffe: pc = 102400; if condition(7) { pc = (102400 + Int(sign(byte(102399), 1))) }
        default: fail("Untranslated game address")
        }
    }
}
