// Generated 68000 game labels $010E00–$010EFF.
extension LotusMachine {
    func page10e() {
        switch pc {
        case 0x10e00: pc = 69124; push(69124); pc = (69122 + Int(sign(word(69122), 2)))
        case 0x10e04: pc = 69128; push(69128); pc = (69126 + Int(sign(word(69126), 2)))
        case 0x10e08: pc = 69134; let e0 = resolve(.memory(Int(long(69130)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x10e0e: pc = 69136; r[0] = UInt32(bitPattern: sign(byte(69135), 1)); logic(r[0], 4)
        case 0x10e10: pc = 69140; push(69140); pc = (69138 + Int(sign(word(69138), 2)))
        case 0x10e14: pc = 69144; push(69144); pc = (69142 + Int(sign(word(69142), 2)))
        case 0x10e18: pc = 69152; let e0 = resolve(.immediate(word(69146)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69148)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10e20: pc = 69160; let e0 = resolve(.immediate(word(69154)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69156)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10e28: pc = 69168; let e0 = resolve(.immediate(word(69162)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69164)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10e30: pc = 69176; let e0 = resolve(.immediate(word(69170)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69172)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10e38: pc = 69182; let e0 = resolve(.memory(Int(long(69178)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x10e3e: pc = 69188; let e0 = resolve(.memory(Int(long(69184)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x10e44: pc = 69192; push(69192); pc = (69190 + Int(sign(word(69190), 2)))
        case 0x10e48: pc = 69198; let e0 = resolve(.memory(Int(long(69194)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x10e4e: pc = 69202; if condition(6) { pc = (69200 + Int(sign(word(69200), 2))) }
        case 0x10e52: pc = 69208; let e0 = resolve(.memory(Int(long(69204)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x10e58: pc = 69210; if condition(7) { pc = (69210 + Int(sign(byte(69209), 1))) }
        case 0x10e5a: pc = 69216; let e0 = resolve(.memory(Int(long(69212)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x10e60: pc = 69220; push(69220); pc = (69218 + Int(sign(word(69218), 2)))
        case 0x10e64: pc = 69224; push(69224); pc = (69222 + Int(sign(word(69222), 2)))
        case 0x10e68: pc = 69230; let e0 = resolve(.memory(Int(long(69226)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x10e6e: pc = 69232; r[0] = UInt32(bitPattern: sign(byte(69231), 1)); logic(r[0], 4)
        case 0x10e70: pc = 69236; push(69236); pc = (69234 + Int(sign(word(69234), 2)))
        case 0x10e74: pc = 69240; push(69240); pc = (69238 + Int(sign(word(69238), 2)))
        case 0x10e78: pc = 69248; let e0 = resolve(.immediate(word(69242)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69244)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10e80: pc = 69256; let e0 = resolve(.immediate(word(69250)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69252)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10e88: pc = 69264; let e0 = resolve(.immediate(word(69258)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69260)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10e90: pc = 69272; let e0 = resolve(.immediate(word(69266)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69268)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10e98: pc = 69278; let e0 = resolve(.memory(Int(long(69274)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x10e9e: pc = 69284; let e0 = resolve(.memory(Int(long(69280)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x10ea4: pc = 69288; push(69288); pc = (69286 + Int(sign(word(69286), 2)))
        case 0x10ea8: pc = 69294; let e0 = resolve(.memory(Int(long(69290)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x10eae: pc = 69298; if condition(6) { pc = (69296 + Int(sign(word(69296), 2))) }
        case 0x10eb2: pc = 69304; let e0 = resolve(.memory(Int(long(69300)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x10eb8: pc = 69306; if condition(7) { pc = (69306 + Int(sign(byte(69305), 1))) }
        case 0x10eba: pc = 69312; let e0 = resolve(.memory(Int(long(69308)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x10ec0: pc = 69316; push(69316); pc = (69314 + Int(sign(word(69314), 2)))
        case 0x10ec4: pc = 69320; push(69320); pc = (69318 + Int(sign(word(69318), 2)))
        case 0x10ec8: pc = 69326; let e0 = resolve(.memory(Int(long(69322)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x10ece: pc = 69328; r[0] = UInt32(bitPattern: sign(byte(69327), 1)); logic(r[0], 4)
        case 0x10ed0: pc = 69332; push(69332); pc = (69330 + Int(sign(word(69330), 2)))
        case 0x10ed4: pc = 69336; push(69336); pc = (69334 + Int(sign(word(69334), 2)))
        case 0x10ed8: pc = 69344; let e0 = resolve(.immediate(word(69338)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69340)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10ee0: pc = 69352; let e0 = resolve(.immediate(word(69346)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69348)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10ee8: pc = 69360; let e0 = resolve(.immediate(word(69354)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69356)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10ef0: pc = 69368; let e0 = resolve(.immediate(word(69362)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69364)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10ef8: pc = 69374; let e0 = resolve(.memory(Int(long(69370)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x10efe: pc = 69380; let e0 = resolve(.memory(Int(long(69376)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        default: fail("Untranslated game address")
        }
    }
}
