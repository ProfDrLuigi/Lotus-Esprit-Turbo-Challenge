// Generated 68000 game labels $016D00–$016DFF.
extension LotusMachine {
    func page16d() {
        switch pc {
        case 0x16d00: pc = 93448; let e0 = resolve(.immediate(word(93442)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(93444)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x16d02: pc = 93446; let e0 = resolve(.immediate(word(93444)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x16d06: fail("Untranslated dc.w at 16d06")
        case 0x16d08: pc = 93450; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16d0a: pc = 93452; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x16d0c: pc = 93454; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16d0e: pc = 93456; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16d10: pc = 93458; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16d12: pc = 93462; let e0 = resolve(.immediate(word(93460)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x16d16: pc = 93464; let e0 = resolve(.indirect(8), 1); let source = get(e0, 1); let e1 = resolve(.reg(6), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x16d18: pc = 93466; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16d1a: pc = 93468; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16d1c: pc = 93470; let e0 = resolve(.post(11), 2); let source = get(e0, 2); r[6] = UInt32(bitPattern: sign(r[6], 2) &* sign(source, 2)); logic(r[6], 4)
        case 0x16d1e: pc = 93472; r[6] = (r[6] << 16) | (r[6] >> 16); logic(r[6], 4)
        case 0x16d20: pc = 93474; let e0 = resolve(.post(12), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16d22: pc = 93476; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16d24: pc = 93480; let e0 = resolve(.immediate(word(93478)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16d28: pc = 93484; if condition(4) { pc = (93482 + Int(sign(word(93482), 2))) }
        case 0x16d2c: pc = 93486; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16d2e: pc = 93488; if condition(10) { pc = (93488 + Int(sign(byte(93487), 1))) }
        case 0x16d30: pc = 93490; let e0 = resolve(.reg(6), 1); let value = get(e0, 1); let e1 = resolve(.reg(7), 1); put(e1, value, 1); logic(value, 1)
        case 0x16d32: pc = 93492; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16d34: pc = 93494; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16d36: pc = 93500; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(93496)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x16d3c: pc = 93504; if condition(6) { pc = (93502 + Int(sign(word(93502), 2))) }
        case 0x16d40: pc = 93506; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x16d42: pc = 93510; let e0 = resolve(.immediate(word(93508)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x16d46: pc = 93512; pc = (93512 + Int(sign(byte(93511), 1)))
        case 0x16d48: pc = 93516; let e0 = resolve(.immediate(word(93514)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16d4c: pc = 93518; if condition(10) { pc = (93518 + Int(sign(byte(93517), 1))) }
        case 0x16d4e: pc = 93520; let e0 = resolve(.indirect(10), 2); put(e0, 0, 2); logic(0, 2)
        case 0x16d50: pc = 93524; let e0 = resolve(.offset(10, Int(sign(word(93522), 2))), 2); put(e0, 0, 2); logic(0, 2)
        case 0x16d54: pc = 93526; r[1] = UInt32(bitPattern: sign(byte(93525), 1)); logic(r[1], 4)
        case 0x16d56: pc = 93528; let e0 = resolve(.reg(10), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x16d58: pc = 93530; let e0 = resolve(.reg(9), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4); put(e1, value, 4)
        case 0x16d5a: pc = 93532; let e0 = resolve(.immediate(3), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x16d5c: pc = 93534; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16d5e: pc = 93536; pc = (93536 + Int(sign(byte(93535), 1)))
        case 0x16d60: pc = 93538; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x16d62: pc = 93540; let e0 = resolve(.reg(10), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x16d64: pc = 93542; let e0 = resolve(.reg(9), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4); put(e1, value, 4)
        case 0x16d66: pc = 93544; let e0 = resolve(.immediate(3), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x16d68: pc = 93548; let e0 = resolve(.immediate(word(93546)), 2); let source = get(e0, 2); let e1 = resolve(.post(9), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x16d6c: pc = 93552; let e0 = resolve(.immediate(word(93550)), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x16d70: pc = 93556; let e0 = resolve(.immediate(word(93554)), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x16d74: pc = 93560; let e0 = resolve(.immediate(word(93558)), 2); let value = get(e0, 2); let e1 = resolve(.indirect(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x16d78: pc = 93562; pc = Int(pop())
        case 0x16d7a: pc = 93568; let e0 = resolve(.memory(Int(long(93564)) & 0xffffff), 4); r[11] = UInt32(truncatingIfNeeded: e0.address)
        case 0x16d80: pc = 93574; let e0 = resolve(.memory(Int(long(93570)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x16d86: pc = 93580; let e0 = resolve(.memory(Int(long(93576)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x16d8c: pc = 93586; let e0 = resolve(.memory(Int(long(93582)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(4), 4); put(e1, value, 4); logic(value, 4)
        case 0x16d92: pc = 93588; pc = (93588 + Int(sign(byte(93587), 1)))
        case 0x16d94: pc = 93594; let e0 = resolve(.memory(Int(long(93590)) & 0xffffff), 4); r[11] = UInt32(truncatingIfNeeded: e0.address)
        case 0x16d9a: pc = 93600; let e0 = resolve(.memory(Int(long(93596)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x16da0: pc = 93606; let e0 = resolve(.memory(Int(long(93602)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x16da6: pc = 93612; let e0 = resolve(.memory(Int(long(93608)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(4), 4); put(e1, value, 4); logic(value, 4)
        case 0x16dac: pc = 93614; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x16dae: pc = 93616; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16db0: pc = 93618; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16db2: pc = 93620; let e0 = resolve(.immediate(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x16db4: pc = 93622; let e0 = resolve(.immediate(8), 4); let count = get(e0, 4); let e1 = resolve(.reg(7), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x16db6: pc = 93628; let e0 = resolve(.memory(Int(long(93624)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x16dbc: pc = 93630; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x16dbe: pc = 93632; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16dc0: pc = 93634; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16dc2: pc = 93636; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(11), 2); let destination = get(e1, 2); _ = source; _ = destination; r[11] = r[11] &+ UInt32(bitPattern: sign(source, 2))
        case 0x16dc4: pc = 93642; let e0 = resolve(.memory(Int(long(93638)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x16dca: pc = 93644; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(11), 2); let destination = get(e1, 2); _ = source; _ = destination; r[11] = r[11] &- source
        case 0x16dcc: pc = 93646; let e0 = resolve(.pre(11), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x16dce: pc = 93648; let e0 = resolve(.immediate(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(11), 2); let destination = get(e1, 2); _ = source; _ = destination; r[11] = r[11] &- source
        case 0x16dd0: pc = 93650; let e0 = resolve(.pre(8), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x16dd2: pc = 93652; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x16dd4: pc = 93654; let e0 = resolve(.reg(3), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16dd6: pc = 93656; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16dd8: pc = 93658; let e0 = resolve(.reg(3), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16dda: pc = 93660; let e0 = resolve(.reg(3), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ UInt32(bitPattern: sign(source, 2))
        case 0x16ddc: pc = 93664; let e0 = resolve(.immediate(word(93662)), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16de0: pc = 93666; let e0 = resolve(.pre(11), 2); let value = get(e0, 2); let e1 = resolve(.reg(5), 2); put(e1, value, 2); logic(value, 2)
        case 0x16de2: pc = 93668; let e0 = resolve(.pre(11), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x16de4: pc = 93670; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(11), 2); let destination = get(e1, 2); _ = source; _ = destination; r[11] = r[11] &- source
        case 0x16de6: pc = 93672; let e0 = resolve(.pre(8), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x16de8: pc = 93674; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16dea: pc = 93676; if condition(6) { pc = (93676 + Int(sign(byte(93675), 1))) }
        case 0x16dec: pc = 93678; let e0 = resolve(.reg(4), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x16dee: pc = 93682; pc = (93680 + Int(sign(word(93680), 2)))
        case 0x16df2: pc = 93684; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x16df4: pc = 93686; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16df6: pc = 93688; if condition(7) { pc = (93688 + Int(sign(byte(93687), 1))) }
        case 0x16df8: pc = 93690; if condition(11) { pc = (93690 + Int(sign(byte(93689), 1))) }
        case 0x16dfa: pc = 93692; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16dfc: pc = 93694; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &- UInt32(bitPattern: sign(source, 2))
        case 0x16dfe: pc = 93696; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        default: fail("Untranslated game address")
        }
    }
}
