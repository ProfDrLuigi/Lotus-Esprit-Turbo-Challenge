// Generated 68000 game labels $016400–$0164FF.
extension LotusMachine {
    func page164() {
        switch pc {
        case 0x16400: pc = 91138; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ UInt32(bitPattern: sign(source, 2))
        case 0x16402: pc = 91144; let e0 = resolve(.indexed(11, 6, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(91142), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x16408: pc = 91148; let e0 = resolve(.reg(8), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(91146), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x1640c: pc = 91152; let e0 = resolve(.reg(9), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(91150), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x16410: pc = 91158; let e0 = resolve(.immediate(word(91154)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(91156), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x16416: pc = 91162; let e0 = resolve(.immediate(word(91160)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x1641a: pc = 91164; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1641c: pc = 91168; let e0 = resolve(.immediate(word(91166)), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16420: pc = 91172; if condition(6) { pc = (91170 + Int(sign(word(91170), 2))) }
        case 0x16424: pc = 91176; let e0 = resolve(.immediate(word(91174)), 1); let value = get(e0, 1); let e1 = resolve(.post(10), 1); put(e1, value, 1); logic(value, 1)
        case 0x16428: pc = 91178; pc = Int(pop())
        case 0x1642a: pc = 91184; let e0 = resolve(.immediate(long(91180)), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x16430: pc = 91190; let e0 = resolve(.memory(Int(long(91186)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x16436: pc = 91192; if condition(7) { pc = (91192 + Int(sign(byte(91191), 1))) }
        case 0x16438: pc = 91196; let e0 = resolve(.immediate(word(91194)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1643c: pc = 91198; if condition(7) { pc = (91198 + Int(sign(byte(91197), 1))) }
        case 0x1643e: pc = 91204; let e0 = resolve(.immediate(long(91200)), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x16444: pc = 91210; let e0 = resolve(.memory(Int(long(91206)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1644a: pc = 91216; let e0 = resolve(.memory(Int(long(91212)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x16450: pc = 91222; let e0 = resolve(.memory(Int(long(91218)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x16456: pc = 91228; let e0 = resolve(.memory(Int(long(91224)) & 0xffffff), 4); r[11] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1645c: pc = 91230; pc = (91230 + Int(sign(byte(91229), 1)))
        case 0x1645e: pc = 91236; let e0 = resolve(.immediate(long(91232)), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x16464: pc = 91242; let e0 = resolve(.memory(Int(long(91238)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1646a: pc = 91248; let e0 = resolve(.memory(Int(long(91244)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x16470: pc = 91254; let e0 = resolve(.memory(Int(long(91250)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x16476: pc = 91260; let e0 = resolve(.memory(Int(long(91256)) & 0xffffff), 4); r[11] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1647c: pc = 91262; pc = (91262 + Int(sign(byte(91261), 1)))
        case 0x1647e: pc = 91268; let e0 = resolve(.immediate(long(91264)), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x16484: pc = 91274; let e0 = resolve(.memory(Int(long(91270)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1648a: pc = 91280; let e0 = resolve(.memory(Int(long(91276)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x16490: pc = 91286; let e0 = resolve(.memory(Int(long(91282)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x16496: pc = 91292; let e0 = resolve(.memory(Int(long(91288)) & 0xffffff), 4); r[11] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1649c: pc = 91298; let e0 = resolve(.memory(Int(long(91294)) & 0xffffff), 4); r[12] = UInt32(truncatingIfNeeded: e0.address)
        case 0x164a2: pc = 91304; let e0 = resolve(.memory(Int(long(91300)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(5), 2); put(e1, value, 2); logic(value, 2)
        case 0x164a8: pc = 91310; let e0 = resolve(.memory(Int(long(91306)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x164ae: pc = 91314; let e0 = resolve(.immediate(word(91312)), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x164b2: pc = 91318; pc = (91316 + Int(sign(word(91316), 2)))
        case 0x164b6: pc = 91324; let e0 = resolve(.immediate(long(91320)), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x164bc: pc = 91330; let e0 = resolve(.memory(Int(long(91326)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x164c2: pc = 91332; if condition(7) { pc = (91332 + Int(sign(byte(91331), 1))) }
        case 0x164c4: pc = 91336; let e0 = resolve(.immediate(word(91334)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x164c8: pc = 91338; if condition(7) { pc = (91338 + Int(sign(byte(91337), 1))) }
        case 0x164ca: pc = 91344; let e0 = resolve(.immediate(long(91340)), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x164d0: pc = 91350; let e0 = resolve(.memory(Int(long(91346)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x164d6: pc = 91356; let e0 = resolve(.memory(Int(long(91352)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x164dc: pc = 91362; let e0 = resolve(.memory(Int(long(91358)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x164e2: pc = 91368; let e0 = resolve(.memory(Int(long(91364)) & 0xffffff), 4); r[11] = UInt32(truncatingIfNeeded: e0.address)
        case 0x164e8: pc = 91370; pc = (91370 + Int(sign(byte(91369), 1)))
        case 0x164ea: pc = 91376; let e0 = resolve(.immediate(long(91372)), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x164f0: pc = 91382; let e0 = resolve(.memory(Int(long(91378)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x164f6: pc = 91388; let e0 = resolve(.memory(Int(long(91384)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x164fc: pc = 91394; let e0 = resolve(.memory(Int(long(91390)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        default: fail("Untranslated game address")
        }
    }
}
