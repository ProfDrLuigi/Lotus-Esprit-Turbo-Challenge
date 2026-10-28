// Generated 68000 game labels $012E00–$012EFF.
extension LotusMachine {
    func page12e() {
        switch pc {
        case 0x12e00: pc = 77316; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.offset(10, Int(sign(word(77314), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12e04: pc = 77320; let e0 = resolve(.offset(8, Int(sign(word(77318), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x12e08: pc = 77324; let e0 = resolve(.offset(8, Int(sign(word(77322), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(5), 2); put(e1, value, 2); logic(value, 2)
        case 0x12e0c: pc = 77328; let e0 = resolve(.offset(8, Int(sign(word(77326), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x12e10: pc = 77330; r[4] = (r[4] << 16) | (r[4] >> 16); logic(r[4], 4)
        case 0x12e12: pc = 77332; r[5] = (r[5] << 16) | (r[5] >> 16); logic(r[5], 4)
        case 0x12e14: pc = 77334; r[2] = (r[2] << 16) | (r[2] >> 16); logic(r[2], 4)
        case 0x12e16: pc = 77336; let e0 = resolve(.reg(4), 2); put(e0, 0, 2); logic(0, 2)
        case 0x12e18: pc = 77338; let e0 = resolve(.reg(5), 2); put(e0, 0, 2); logic(0, 2)
        case 0x12e1a: pc = 77340; let e0 = resolve(.reg(2), 2); put(e0, 0, 2); logic(0, 2)
        case 0x12e1c: pc = 77342; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x12e1e: pc = 77346; let e0 = resolve(.immediate(word(77344)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x12e22: pc = 77348; let e0 = resolve(.reg(0), 4); let count = get(e0, 4); let e1 = resolve(.reg(4), 4); let value = shift(get(e1, 4), count, 4, 2); put(e1, value, 4)
        case 0x12e24: pc = 77350; let e0 = resolve(.reg(0), 4); let count = get(e0, 4); let e1 = resolve(.reg(5), 4); let value = shift(get(e1, 4), count, 4, 2); put(e1, value, 4)
        case 0x12e26: pc = 77352; let e0 = resolve(.reg(0), 4); let count = get(e0, 4); let e1 = resolve(.reg(2), 4); let value = shift(get(e1, 4), count, 4, 2); put(e1, value, 4)
        case 0x12e28: pc = 77354; let e0 = resolve(.reg(4), 4); let value = get(e0, 4); let e1 = resolve(.reg(3), 4); put(e1, value, 4); logic(value, 4)
        case 0x12e2a: pc = 77356; let e0 = resolve(.reg(5), 4); let source = get(e0, 4); let e1 = resolve(.reg(3), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination | source; put(e1, value, 4); logic(value, 4)
        case 0x12e2c: pc = 77358; let e0 = resolve(.reg(2), 4); let source = get(e0, 4); let e1 = resolve(.reg(3), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination | source; put(e1, value, 4); logic(value, 4)
        case 0x12e2e: pc = 77360; let e0 = resolve(.reg(3), 4); let value = ~get(e0, 4); put(e0, value, 4); logic(value, 4)
        case 0x12e30: pc = 77364; let e0 = resolve(.offset(10, Int(sign(word(77362), 2))), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x12e34: pc = 77366; let e0 = resolve(.reg(3), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination & source; put(e1, value, 4); logic(value, 4)
        case 0x12e36: pc = 77368; let e0 = resolve(.reg(4), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination | source; put(e1, value, 4); logic(value, 4)
        case 0x12e38: pc = 77372; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.offset(10, Int(sign(word(77370), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12e3c: pc = 77376; let e0 = resolve(.offset(10, Int(sign(word(77374), 2))), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x12e40: pc = 77378; let e0 = resolve(.reg(3), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination & source; put(e1, value, 4); logic(value, 4)
        case 0x12e42: pc = 77380; let e0 = resolve(.reg(5), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination | source; put(e1, value, 4); logic(value, 4)
        case 0x12e44: pc = 77384; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.offset(10, Int(sign(word(77382), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12e48: pc = 77388; let e0 = resolve(.offset(10, Int(sign(word(77386), 2))), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x12e4c: pc = 77390; let e0 = resolve(.reg(3), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination & source; put(e1, value, 4); logic(value, 4)
        case 0x12e4e: pc = 77392; let e0 = resolve(.reg(2), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination | source; put(e1, value, 4); logic(value, 4)
        case 0x12e50: pc = 77396; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.offset(10, Int(sign(word(77394), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x12e54: pc = 77400; let e0 = resolve(.immediate(word(77398)), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ UInt32(bitPattern: sign(source, 2))
        case 0x12e58: pc = 77404; let e0 = resolve(.immediate(word(77402)), 2); let source = get(e0, 2); let e1 = resolve(.reg(10), 2); let destination = get(e1, 2); _ = source; _ = destination; r[10] = r[10] &+ UInt32(bitPattern: sign(source, 2))
        case 0x12e5c: pc = 77408; if !condition(1) {     setRegister(1, r[1] &- 1, 2);     if r[1] & 65535 != 65535 { pc = (77406 + Int(sign(word(77406), 2))) } }
        case 0x12e60: pc = 77414; let e0 = resolve(.memory(Int(long(77410)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12e66: pc = 77416; let e0 = resolve(.post(15), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x12e68: pc = 77420; let e0 = resolve(.indexed(8, 0, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x12e6c: pc = 77422; setRegister(0, UInt32(bitPattern: sign(r[0], 1)), 2); logic(r[0], 2)
        case 0x12e6e: pc = 77426; let e0 = resolve(.immediate(word(77424)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x12e72: pc = 77428; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x12e74: pc = 77430; pc = Int(pop())
        case 0x12e76: pc = 77438; let e0 = resolve(.immediate(word(77432)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(77434)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x12e7e: pc = 77442; if condition(6) { pc = (77440 + Int(sign(word(77440), 2))) }
        case 0x12e82: pc = 77450; let e0 = resolve(.immediate(word(77444)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(77446)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x12e8a: pc = 77454; if condition(7) { pc = (77452 + Int(sign(word(77452), 2))) }
        case 0x12e8e: pc = 77462; let e0 = resolve(.immediate(word(77456)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.memory(Int(long(77458)) & 0xffffff), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x12e96: pc = 77466; if condition(6) { pc = (77464 + Int(sign(word(77464), 2))) }
        case 0x12e9a: pc = 77474; let e0 = resolve(.immediate(word(77468)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.memory(Int(long(77470)) & 0xffffff), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x12ea2: pc = 77476; if condition(7) { pc = (77476 + Int(sign(byte(77475), 1))) }
        case 0x12ea4: pc = 77482; let e0 = resolve(.memory(Int(long(77478)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x12eaa: pc = 77490; let e0 = resolve(.immediate(word(77484)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(77486)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x12eb2: pc = 77498; let e0 = resolve(.immediate(word(77492)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(77494)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x12eba: pc = 77504; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(77500)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x12ec0: pc = 77512; let e0 = resolve(.immediate(word(77506)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(77508)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x12ec8: pc = 77514; if condition(6) { pc = (77514 + Int(sign(byte(77513), 1))) }
        case 0x12eca: pc = 77522; let e0 = resolve(.immediate(word(77516)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(77518)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x12ed2: pc = 77524; pc = (77524 + Int(sign(byte(77523), 1)))
        case 0x12ed4: pc = 77532; let e0 = resolve(.immediate(word(77526)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.memory(Int(long(77528)) & 0xffffff), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x12edc: pc = 77534; if condition(7) { pc = (77534 + Int(sign(byte(77533), 1))) }
        case 0x12ede: pc = 77540; let e0 = resolve(.memory(Int(long(77536)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x12ee4: pc = 77548; let e0 = resolve(.immediate(word(77542)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(77544)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x12eec: pc = 77556; let e0 = resolve(.immediate(word(77550)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(77552)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x12ef4: pc = 77562; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(77558)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x12efa: pc = 77570; let e0 = resolve(.immediate(word(77564)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(77566)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        default: fail("Untranslated game address")
        }
    }
}
