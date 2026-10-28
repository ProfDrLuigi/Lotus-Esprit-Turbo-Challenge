// Generated 68000 game labels $015B00–$015BFF.
extension LotusMachine {
    func page15b() {
        switch pc {
        case 0x15b04: pc = 88838; pc = (88838 + Int(sign(byte(88837), 1)))
        case 0x15b06: pc = 88844; let e0 = resolve(.immediate(word(88840)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.offset(12, Int(sign(word(88842), 2))), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x15b0c: pc = 88846; if condition(7) { pc = (88846 + Int(sign(byte(88845), 1))) }
        case 0x15b0e: pc = 88852; let e0 = resolve(.memory(Int(long(88848)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x15b14: pc = 88858; let e0 = resolve(.immediate(word(88854)), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(88856), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15b1a: pc = 88860; let e0 = resolve(.immediate(7), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x15b1c: pc = 88862; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15b1e: pc = 88866; let e0 = resolve(.indexed(8, 0, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15b22: pc = 88868; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x15b24: pc = 88870; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x15b26: pc = 88872; let e0 = resolve(.reg(1), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x15b28: pc = 88874; let e0 = resolve(.reg(1), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x15b2a: pc = 88876; let e0 = resolve(.immediate(8), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 4); let value = shift(get(e1, 4), count, 4, 1); put(e1, value, 4)
        case 0x15b2c: pc = 88878; let e0 = resolve(.immediate(2), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 4); let value = shift(get(e1, 4), count, 4, 1); put(e1, value, 4)
        case 0x15b2e: pc = 88880; let e0 = resolve(.immediate(1), 4); let count = get(e0, 4); let e1 = resolve(.reg(2), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x15b30: pc = 88882; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); divide(0, source, signed: true)
        case 0x15b32: pc = 88884; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15b34: pc = 88888; let e0 = resolve(.offset(12, Int(sign(word(88886), 2))), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15b38: pc = 88896; let e0 = resolve(.immediate(word(88890)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(88892)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15b40: pc = 88898; if condition(7) { pc = (88898 + Int(sign(byte(88897), 1))) }
        case 0x15b42: pc = 88900; let e0 = resolve(.reg(6), 2); logic(get(e0, 2), 2)
        case 0x15b44: pc = 88902; if condition(7) { pc = (88902 + Int(sign(byte(88901), 1))) }
        case 0x15b46: pc = 88904; if condition(11) { pc = (88904 + Int(sign(byte(88903), 1))) }
        case 0x15b48: pc = 88906; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x15b4a: pc = 88908; pc = (88908 + Int(sign(byte(88907), 1)))
        case 0x15b4c: pc = 88910; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15b4e: pc = 88914; let e0 = resolve(.immediate(word(88912)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15b52: pc = 88916; if condition(11) { pc = (88916 + Int(sign(byte(88915), 1))) }
        case 0x15b54: pc = 88920; let e0 = resolve(.immediate(word(88918)), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x15b58: pc = 88924; let e0 = resolve(.immediate(word(88922)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15b5c: pc = 88926; if condition(10) { pc = (88926 + Int(sign(byte(88925), 1))) }
        case 0x15b5e: pc = 88930; let e0 = resolve(.immediate(word(88928)), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x15b62: pc = 88934; let e0 = resolve(.offset(12, Int(sign(word(88932), 2))), 2); logic(get(e0, 2), 2)
        case 0x15b66: pc = 88936; if condition(7) { pc = (88936 + Int(sign(byte(88935), 1))) }
        case 0x15b68: pc = 88938; if condition(10) { pc = (88938 + Int(sign(byte(88937), 1))) }
        case 0x15b6a: pc = 88942; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(88940), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15b6e: pc = 88944; pc = (88944 + Int(sign(byte(88943), 1)))
        case 0x15b70: pc = 88948; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(88946), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x15b74: pc = 88952; let e0 = resolve(.offset(12, Int(sign(word(88950), 2))), 2); logic(get(e0, 2), 2)
        case 0x15b78: pc = 88954; if condition(7) { pc = (88954 + Int(sign(byte(88953), 1))) }
        case 0x15b7a: pc = 88956; if condition(10) { pc = (88956 + Int(sign(byte(88955), 1))) }
        case 0x15b7c: pc = 88960; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(88958), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15b80: pc = 88962; pc = (88962 + Int(sign(byte(88961), 1)))
        case 0x15b82: pc = 88966; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(88964), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x15b86: pc = 88968; let e0 = resolve(.reg(4), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x15b88: pc = 88970; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x15b8a: pc = 88974; let e0 = resolve(.immediate(word(88972)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15b8e: pc = 88976; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x15b90: pc = 88982; let e0 = resolve(.memory(Int(long(88978)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x15b96: pc = 88986; let e0 = resolve(.indexed(8, 0, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x15b9a: pc = 88988; if condition(7) { pc = (88988 + Int(sign(byte(88987), 1))) }
        case 0x15b9c: pc = 88990; setRegister(0, UInt32(bitPattern: sign(r[0], 1)), 2); logic(r[0], 2)
        case 0x15b9e: pc = 88992; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x15ba0: pc = 88994; let e0 = resolve(.reg(0), 4); let count = get(e0, 4); let e1 = resolve(.reg(1), 2); let value = shift(get(e1, 2), count, 2, 0); put(e1, value, 2)
        case 0x15ba2: pc = 88996; let e0 = resolve(.immediate(1), 4); let count = get(e0, 4); let e1 = resolve(.reg(1), 2); let value = shift(get(e1, 2), count, 2, 0); put(e1, value, 2)
        case 0x15ba4: pc = 88998; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x15ba6: pc = 89002; let e0 = resolve(.offset(12, Int(sign(word(89000), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15baa: pc = 89004; let e0 = resolve(.immediate(5), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 0); put(e1, value, 2)
        case 0x15bac: pc = 89006; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15bae: pc = 89014; let e0 = resolve(.immediate(word(89008)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(89010)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15bb6: pc = 89016; if condition(6) { pc = (89016 + Int(sign(byte(89015), 1))) }
        case 0x15bb8: pc = 89022; let e0 = resolve(.memory(Int(long(89018)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x15bbe: pc = 89024; pc = (89024 + Int(sign(byte(89023), 1)))
        case 0x15bc0: pc = 89030; let e0 = resolve(.immediate(word(89026)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.offset(12, Int(sign(word(89028), 2))), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x15bc6: pc = 89032; if condition(7) { pc = (89032 + Int(sign(byte(89031), 1))) }
        case 0x15bc8: pc = 89036; let e0 = resolve(.immediate(word(89034)), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x15bcc: pc = 89040; let e0 = resolve(.immediate(word(89038)), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15bd0: pc = 89042; if condition(10) { pc = (89042 + Int(sign(byte(89041), 1))) }
        case 0x15bd2: pc = 89046; let e0 = resolve(.immediate(word(89044)), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x15bd6: pc = 89048; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15bd8: pc = 89050; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x15bda: pc = 89052; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x15bdc: pc = 89054; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x15bde: pc = 89060; let e0 = resolve(.memory(Int(long(89056)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x15be4: pc = 89062; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15be6: pc = 89066; let e0 = resolve(.indexed(8, 2, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x15bea: pc = 89068; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); divide(0, source, signed: false)
        case 0x15bec: pc = 89072; let e0 = resolve(.immediate(word(89070)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15bf0: pc = 89074; if condition(10) { pc = (89074 + Int(sign(byte(89073), 1))) }
        case 0x15bf2: pc = 89078; let e0 = resolve(.immediate(word(89076)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15bf6: pc = 89082; let e0 = resolve(.immediate(word(89080)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15bfa: pc = 89084; if condition(11) { pc = (89084 + Int(sign(byte(89083), 1))) }
        case 0x15bfc: pc = 89088; let e0 = resolve(.immediate(word(89086)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        default: fail("Untranslated game address")
        }
    }
}
