// Generated 68000 game labels $017D00–$017DFF.
extension LotusMachine {
    func page17d() {
        switch pc {
        case 0x17d04: pc = 97542; r[1] = UInt32(bitPattern: sign(byte(97541), 1)); logic(r[1], 4)
        case 0x17d06: pc = 97544; r[2] = UInt32(bitPattern: sign(byte(97543), 1)); logic(r[2], 4)
        case 0x17d08: pc = 97546; r[7] = UInt32(bitPattern: sign(byte(97545), 1)); logic(r[7], 4)
        case 0x17d0a: pc = 97550; push(97550); pc = (97548 + Int(sign(word(97548), 2)))
        case 0x17d0e: pc = 97552; pc = Int(pop())
        case 0x17d10: pc = 97558; let e0 = resolve(.memory(Int(long(97554)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x17d16: pc = 97560; if condition(7) { pc = (97560 + Int(sign(byte(97559), 1))) }
        case 0x17d18: pc = 97562; r[7] = UInt32(bitPattern: sign(byte(97561), 1)); logic(r[7], 4)
        case 0x17d1a: pc = 97566; let e0 = resolve(.immediate(word(97564)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x17d1e: pc = 97568; pc = (97568 + Int(sign(byte(97567), 1)))
        case 0x17d20: pc = 97576; let e0 = resolve(.immediate(word(97570)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(97572)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x17d28: pc = 97578; if condition(10) { pc = (97578 + Int(sign(byte(97577), 1))) }
        case 0x17d2a: pc = 97584; let e0 = resolve(.memory(Int(long(97580)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x17d30: pc = 97588; let e0 = resolve(.immediate(word(97586)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x17d34: pc = 97590; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x17d36: pc = 97594; let e0 = resolve(.immediate(word(97592)), 2); let source = get(e0, 2); divide(0, source, signed: false)
        case 0x17d3a: pc = 97596; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x17d3c: pc = 97602; let e0 = resolve(.memory(Int(long(97598)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x17d42: pc = 97606; let e0 = resolve(.indexed(9, 0, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x17d46: pc = 97610; let e0 = resolve(.immediate(word(97608)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x17d4a: pc = 97612; pc = (97612 + Int(sign(byte(97611), 1)))
        case 0x17d4c: pc = 97618; let e0 = resolve(.memory(Int(long(97614)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x17d52: pc = 97622; let e0 = resolve(.immediate(word(97620)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x17d56: pc = 97624; if condition(7) { pc = (97624 + Int(sign(byte(97623), 1))) }
        case 0x17d58: pc = 97626; let e0 = resolve(.reg(2), 4); logic(get(e0, 4), 4)
        case 0x17d5a: pc = 97628; if condition(6) { pc = (97628 + Int(sign(byte(97627), 1))) }
        case 0x17d5c: pc = 97630; r[7] = UInt32(bitPattern: sign(byte(97629), 1)); logic(r[7], 4)
        case 0x17d5e: pc = 97634; let e0 = resolve(.immediate(word(97632)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x17d62: pc = 97636; pc = (97636 + Int(sign(byte(97635), 1)))
        case 0x17d64: pc = 97638; let e0 = resolve(.reg(3), 2); logic(get(e0, 2), 2)
        case 0x17d66: pc = 97640; if condition(7) { pc = (97640 + Int(sign(byte(97639), 1))) }
        case 0x17d68: pc = 97642; let e0 = resolve(.reg(4), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x17d6a: pc = 97646; let e0 = resolve(.immediate(word(97644)), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x17d6e: pc = 97648; if condition(5) { pc = (97648 + Int(sign(byte(97647), 1))) }
        case 0x17d70: pc = 97650; r[7] = UInt32(bitPattern: sign(byte(97649), 1)); logic(r[7], 4)
        case 0x17d72: pc = 97654; let e0 = resolve(.immediate(word(97652)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x17d76: pc = 97656; pc = (97656 + Int(sign(byte(97655), 1)))
        case 0x17d78: pc = 97658; let e0 = resolve(.immediate(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x17d7a: pc = 97662; let e0 = resolve(.immediate(word(97660)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x17d7e: pc = 97664; pc = (97664 + Int(sign(byte(97663), 1)))
        case 0x17d80: pc = 97666; let e0 = resolve(.reg(5), 2); logic(get(e0, 2), 2)
        case 0x17d82: pc = 97668; if condition(7) { pc = (97668 + Int(sign(byte(97667), 1))) }
        case 0x17d84: pc = 97672; let e0 = resolve(.immediate(word(97670)), 2); let source = get(e0, 2); let e1 = resolve(.reg(5), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x17d88: pc = 97674; if condition(4) { pc = (97674 + Int(sign(byte(97673), 1))) }
        case 0x17d8a: pc = 97676; r[7] = UInt32(bitPattern: sign(byte(97675), 1)); logic(r[7], 4)
        case 0x17d8c: pc = 97680; let e0 = resolve(.immediate(word(97678)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x17d90: pc = 97682; pc = (97682 + Int(sign(byte(97681), 1)))
        case 0x17d92: pc = 97684; pc = (97684 + Int(sign(byte(97683), 1)))
        case 0x17d94: pc = 97686; let e0 = resolve(.reg(7), 2); logic(get(e0, 2), 2)
        case 0x17d96: pc = 97688; if condition(11) { pc = (97688 + Int(sign(byte(97687), 1))) }
        case 0x17d98: pc = 97694; let e0 = resolve(.memory(Int(long(97690)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x17d9e: pc = 97696; let e0 = resolve(.reg(1), 2); put(e0, 0, 2); logic(0, 2)
        case 0x17da0: pc = 97704; let e0 = resolve(.immediate(word(97698)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(97700)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x17da8: pc = 97708; push(97708); pc = (97706 + Int(sign(word(97706), 2)))
        case 0x17dac: pc = 97710; pc = Int(pop())
        case 0x17dae: pc = 97716; let e0 = resolve(.memory(Int(long(97712)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x17db4: pc = 97720; if condition(6) { pc = (97718 + Int(sign(word(97718), 2))) }
        case 0x17db8: pc = 97726; let e0 = resolve(.memory(Int(long(97722)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x17dbe: pc = 97732; let e0 = resolve(.memory(Int(long(97728)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x17dc4: pc = 97734; let e0 = resolve(.indirect(8), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x17dc6: pc = 97740; let e0 = resolve(.reg(1), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(97736)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x17dcc: pc = 97746; let e0 = resolve(.memory(Int(long(97742)) & 0xffffff), 4); let source = get(e0, 4); let e1 = resolve(.reg(1), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4); put(e1, value, 4)
        case 0x17dd2: pc = 97748; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x17dd4: pc = 97750; r[1] = (r[1] << 16) | (r[1] >> 16); logic(r[1], 4)
        case 0x17dd6: pc = 97752; setRegister(1, UInt32(bitPattern: sign(r[1], 2)), 4); logic(r[1], 4)
        case 0x17dd8: pc = 97758; let e0 = resolve(.memory(Int(long(97754)) & 0xffffff), 4); let source = get(e0, 4); let e1 = resolve(.reg(1), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x17dde: pc = 97764; let e0 = resolve(.memory(Int(long(97760)) & 0xffffff), 2); let source = get(e0, 2); divide(1, source, signed: false)
        case 0x17de4: pc = 97766; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x17de6: pc = 97772; let e0 = resolve(.reg(1), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(97768)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x17dec: pc = 97778; let e0 = resolve(.memory(Int(long(97774)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x17df2: pc = 97780; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x17df4: pc = 97784; let e0 = resolve(.immediate(word(97782)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination ^ source; put(e1, value, 2); logic(value, 2)
        case 0x17df8: pc = 97790; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(97786)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x17dfe: pc = 97796; let e0 = resolve(.memory(Int(long(97792)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        default: fail("Untranslated game address")
        }
    }
}
