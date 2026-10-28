// Generated 68000 game labels $010D00–$010DFF.
extension LotusMachine {
    func page10d() {
        switch pc {
        case 0x10d00: pc = 68872; let e0 = resolve(.immediate(word(68866)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(68868)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10d08: pc = 68878; let e0 = resolve(.memory(Int(long(68874)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x10d0e: pc = 68886; let e0 = resolve(.immediate(word(68880)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(68882)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10d16: pc = 68894; let e0 = resolve(.immediate(word(68888)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(68890)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10d1e: pc = 68902; let e0 = resolve(.immediate(word(68896)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(68898)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10d26: pc = 68908; let e0 = resolve(.memory(Int(long(68904)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x10d2c: pc = 68916; let e0 = resolve(.immediate(word(68910)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(68912)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10d34: pc = 68926; let e0 = resolve(.immediate(long(68918)), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(68922)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x10d3e: pc = 68936; let e0 = resolve(.immediate(long(68928)), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(68932)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x10d48: pc = 68946; let e0 = resolve(.memory(Int(long(68938)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(68942)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x10d52: pc = 68950; push(68950); pc = (68948 + Int(sign(word(68948), 2)))
        case 0x10d56: pc = 68954; push(68954); pc = (68952 + Int(sign(word(68952), 2)))
        case 0x10d5a: pc = 68962; let e0 = resolve(.immediate(word(68956)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(68958)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10d62: pc = 68966; push(68966); pc = (68964 + Int(sign(word(68964), 2)))
        case 0x10d66: pc = 68970; push(68970); pc = (68968 + Int(sign(word(68968), 2)))
        case 0x10d6a: pc = 68978; let e0 = resolve(.immediate(word(68972)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(68974)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10d72: pc = 68984; let e0 = resolve(.memory(Int(long(68980)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x10d78: pc = 68986; if condition(6) { pc = (68986 + Int(sign(byte(68985), 1))) }
        case 0x10d7a: pc = 68988; r[0] = UInt32(bitPattern: sign(byte(68987), 1)); logic(r[0], 4)
        case 0x10d7c: pc = 68992; push(68992); pc = (68990 + Int(sign(word(68990), 2)))
        case 0x10d80: pc = 68998; let e0 = resolve(.memory(Int(long(68994)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x10d86: pc = 69004; let e0 = resolve(.memory(Int(long(69000)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x10d8c: pc = 69008; push(69008); pc = (69006 + Int(sign(word(69006), 2)))
        case 0x10d90: pc = 69012; push(69012); pc = (69010 + Int(sign(word(69010), 2)))
        case 0x10d94: pc = 69018; let e0 = resolve(.memory(Int(long(69014)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x10d9a: pc = 69020; r[0] = UInt32(bitPattern: sign(byte(69019), 1)); logic(r[0], 4)
        case 0x10d9c: pc = 69024; push(69024); pc = (69022 + Int(sign(word(69022), 2)))
        case 0x10da0: pc = 69028; push(69028); pc = (69026 + Int(sign(word(69026), 2)))
        case 0x10da4: pc = 69036; let e0 = resolve(.immediate(word(69030)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69032)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10dac: pc = 69044; let e0 = resolve(.immediate(word(69038)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69040)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10db4: pc = 69052; let e0 = resolve(.immediate(word(69046)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69048)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10dbc: pc = 69060; let e0 = resolve(.immediate(word(69054)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(69056)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x10dc4: pc = 69066; let e0 = resolve(.memory(Int(long(69062)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x10dca: pc = 69072; let e0 = resolve(.memory(Int(long(69068)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x10dd0: pc = 69076; push(69076); pc = (69074 + Int(sign(word(69074), 2)))
        case 0x10dd4: pc = 69082; let e0 = resolve(.memory(Int(long(69078)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x10dda: pc = 69086; if condition(6) { pc = (69084 + Int(sign(word(69084), 2))) }
        case 0x10dde: pc = 69092; let e0 = resolve(.memory(Int(long(69088)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x10de4: pc = 69096; push(69096); pc = (69094 + Int(sign(word(69094), 2)))
        case 0x10de8: pc = 69102; let e0 = resolve(.memory(Int(long(69098)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x10dee: pc = 69106; if condition(6) { pc = (69104 + Int(sign(word(69104), 2))) }
        case 0x10df2: pc = 69112; let e0 = resolve(.memory(Int(long(69108)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x10df8: pc = 69114; if condition(7) { pc = (69114 + Int(sign(byte(69113), 1))) }
        case 0x10dfa: pc = 69120; let e0 = resolve(.memory(Int(long(69116)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        default: fail("Untranslated game address")
        }
    }
}
