// Generated 68000 game labels $017F00–$017FFF.
extension LotusMachine {
    func page17f() {
        switch pc {
        case 0x17f00: pc = 98056; let e0 = resolve(.immediate(word(98050)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98052)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x17f08: pc = 98058; pc = (98058 + Int(sign(byte(98057), 1)))
        case 0x17f0a: pc = 98060; let e0 = resolve(.reg(8), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x17f0c: pc = 98062; let e0 = resolve(.reg(10), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x17f0e: pc = 98066; push(98066); pc = (98064 + Int(sign(word(98064), 2)))
        case 0x17f12: pc = 98068; let e0 = resolve(.post(15), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x17f14: pc = 98070; let e0 = resolve(.post(15), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x17f16: pc = 98078; let e0 = resolve(.immediate(word(98072)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98074)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x17f1e: pc = 98082; pc = (98080 + Int(sign(word(98080), 2)))
        case 0x17f22: pc = 98088; let e0 = resolve(.immediate(long(98084)), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x17f28: pc = 98094; let e0 = resolve(.memory(Int(long(98090)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(2), 4); put(e1, value, 4); logic(value, 4)
        case 0x17f2e: pc = 98100; let e0 = resolve(.memory(Int(long(98096)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x17f34: pc = 98106; let e0 = resolve(.memory(Int(long(98102)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x17f3a: pc = 98112; let e0 = resolve(.memory(Int(long(98108)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(5), 2); put(e1, value, 2); logic(value, 2)
        case 0x17f40: pc = 98116; push(98116); pc = (98114 + Int(sign(word(98114), 2)))
        case 0x17f44: pc = 98122; let e0 = resolve(.memory(Int(long(98118)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x17f4a: pc = 98128; let e0 = resolve(.immediate(long(98124)), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x17f50: pc = 98136; let e0 = resolve(.immediate(word(98130)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98132)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x17f58: pc = 98138; r[1] = UInt32(bitPattern: sign(byte(98137), 1)); logic(r[1], 4)
        case 0x17f5a: pc = 98140; r[2] = UInt32(bitPattern: sign(byte(98139), 1)); logic(r[2], 4)
        case 0x17f5c: pc = 98142; r[7] = UInt32(bitPattern: sign(byte(98141), 1)); logic(r[7], 4)
        case 0x17f5e: pc = 98146; push(98146); pc = (98144 + Int(sign(word(98144), 2)))
        case 0x17f62: pc = 98148; pc = Int(pop())
        case 0x17f64: pc = 98154; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(98150)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x17f6a: pc = 98156; if condition(10) { pc = (98156 + Int(sign(byte(98155), 1))) }
        case 0x17f6c: pc = 98164; let e0 = resolve(.immediate(word(98158)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98160)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x17f74: pc = 98166; pc = Int(pop())
        case 0x17f76: pc = 98168; let e0 = resolve(.pre(10), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x17f78: pc = 98174; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98170)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x17f7e: pc = 98178; let e0 = resolve(.immediate(word(98176)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x17f82: pc = 98180; if condition(7) { pc = (98180 + Int(sign(byte(98179), 1))) }
        case 0x17f84: pc = 98182; pc = Int(pop())
        case 0x17f86: pc = 98188; let e0 = resolve(.memory(Int(long(98184)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x17f8c: pc = 98190; if condition(6) { pc = (98190 + Int(sign(byte(98189), 1))) }
        case 0x17f8e: pc = 98196; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(98192)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x17f94: pc = 98198; if condition(10) { pc = (98198 + Int(sign(byte(98197), 1))) }
        case 0x17f96: pc = 98206; let e0 = resolve(.immediate(word(98200)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98202)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x17f9e: pc = 98208; pc = Int(pop())
        case 0x17fa0: pc = 98210; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x17fa2: pc = 98216; let e0 = resolve(.post(8), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98212)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x17fa8: pc = 98222; let e0 = resolve(.memory(Int(long(98218)) & 0xffffff), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4); put(e1, value, 4)
        case 0x17fae: pc = 98228; let e0 = resolve(.reg(0), 4); let source = get(e0, 4); let e1 = resolve(.memory(Int(long(98224)) & 0xffffff), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x17fb4: pc = 98234; let e0 = resolve(.memory(Int(long(98230)) & 0xffffff), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x17fba: pc = 98236; if condition(10) { pc = (98236 + Int(sign(byte(98235), 1))) }
        case 0x17fbc: pc = 98238; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x17fbe: pc = 98244; let e0 = resolve(.memory(Int(long(98240)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x17fc4: pc = 98246; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x17fc6: pc = 98252; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(98248)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x17fcc: pc = 98258; let e0 = resolve(.immediate(long(98254)), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x17fd2: pc = 98260; if condition(4) { pc = (98260 + Int(sign(byte(98259), 1))) }
        case 0x17fd4: pc = 98262; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 4); let value = shift(get(e1, 4), count, 4, 1); put(e1, value, 4)
        case 0x17fd6: pc = 98268; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98264)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x17fdc: pc = 98270; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x17fde: pc = 98276; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98272)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x17fe4: pc = 98284; let e0 = resolve(.immediate(word(98278)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98280)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x17fec: pc = 98286; pc = Int(pop())
        case 0x17fee: pc = 98292; let e0 = resolve(.memory(Int(long(98288)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x17ff4: pc = 98298; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(98294)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x17ffa: pc = 98304; let e0 = resolve(.memory(Int(long(98300)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        default: fail("Untranslated game address")
        }
    }
}
