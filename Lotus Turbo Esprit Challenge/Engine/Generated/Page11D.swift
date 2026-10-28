// Generated 68000 game labels $011D00–$011DFF.
extension LotusMachine {
    func page11d() {
        switch pc {
        case 0x11d02: pc = 72968; let e0 = resolve(.memory(Int(long(72964)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x11d08: pc = 72974; let e0 = resolve(.memory(Int(long(72970)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x11d0e: pc = 72980; let e0 = resolve(.memory(Int(long(72976)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x11d14: pc = 72986; let e0 = resolve(.memory(Int(long(72982)) & 0xffffff), 4); r[11] = UInt32(truncatingIfNeeded: e0.address)
        case 0x11d1a: pc = 72988; r[7] = UInt32(bitPattern: sign(byte(72987), 1)); logic(r[7], 4)
        case 0x11d1c: pc = 72990; let e0 = resolve(.post(8), 1); let value = get(e0, 1); let e1 = resolve(.post(9), 1); put(e1, value, 1); logic(value, 1)
        case 0x11d1e: pc = 72992; let e0 = resolve(.post(10), 1); let value = get(e0, 1); let e1 = resolve(.post(11), 1); put(e1, value, 1); logic(value, 1)
        case 0x11d20: pc = 72996; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (72994 + Int(sign(word(72994), 2))) } }
        case 0x11d24: pc = 73002; let e0 = resolve(.memory(Int(long(72998)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x11d2a: pc = 73008; let e0 = resolve(.memory(Int(long(73004)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x11d30: pc = 73012; let e0 = resolve(.immediate(word(73010)), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x11d34: pc = 73014; let e0 = resolve(.reg(8), 4); let source = get(e0, 4); let e1 = resolve(.reg(9), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x11d36: pc = 73016; if condition(6) { pc = (73016 + Int(sign(byte(73015), 1))) }
        case 0x11d38: pc = 73020; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (73018 + Int(sign(word(73018), 2))) } }
        case 0x11d3c: pc = 73022; r[0] = UInt32(bitPattern: sign(byte(73021), 1)); logic(r[0], 4)
        case 0x11d3e: pc = 73024; pc = (73024 + Int(sign(byte(73023), 1)))
        case 0x11d40: pc = 73026; r[0] = UInt32(bitPattern: sign(byte(73025), 1)); logic(r[0], 4)
        case 0x11d42: pc = 73032; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(73028)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11d48: pc = 73034; pc = Int(pop())
        case 0x11d4a: pc = 73038; moveMultiple(32767, Int(r[15]), 4, load: false, addressRegister: 15, predecrement: true, postincrement: false)
        case 0x11d4e: pc = 73048; let e0 = resolve(.memory(Int(long(73040)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(73044)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x11d58: pc = 73054; let e0 = resolve(.memory(Int(long(73050)) & 0xffffff), 4); r[14] = UInt32(truncatingIfNeeded: e0.address)
        case 0x11d5e: pc = 73058; let e0 = resolve(.offset(14, Int(sign(word(73056), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x11d62: pc = 73064; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(73060)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11d68: pc = 73068; let e0 = resolve(.immediate(word(73066)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x11d6c: pc = 73072; if condition(7) { pc = (73070 + Int(sign(word(73070), 2))) }
        case 0x11d70: pc = 73076; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(73074), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x11d74: pc = 73082; let e0 = resolve(.memory(Int(long(73078)) & 0xffffff), 4); push(73082); pc = e0.address
        case 0x11d7a: pc = 73086; push(73086); pc = (73084 + Int(sign(word(73084), 2)))
        case 0x11d7e: pc = 73092; let e0 = resolve(.memory(Int(long(73088)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11d84: pc = 73094; if condition(7) { pc = (73094 + Int(sign(byte(73093), 1))) }
        case 0x11d86: pc = 73096; if condition(10) { pc = (73096 + Int(sign(byte(73095), 1))) }
        case 0x11d88: pc = 73098; if condition(11) { pc = (73098 + Int(sign(byte(73097), 1))) }
        case 0x11d8a: pc = 73106; let e0 = resolve(.immediate(word(73100)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.memory(Int(long(73102)) & 0xffffff), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x11d92: pc = 73108; if condition(7) { pc = (73108 + Int(sign(byte(73107), 1))) }
        case 0x11d94: pc = 73114; let e0 = resolve(.memory(Int(long(73110)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11d9a: pc = 73116; if condition(6) { pc = (73116 + Int(sign(byte(73115), 1))) }
        case 0x11d9c: pc = 73124; let e0 = resolve(.immediate(word(73118)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(73120)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11da4: pc = 73126; pc = (73126 + Int(sign(byte(73125), 1)))
        case 0x11da6: pc = 73134; let e0 = resolve(.immediate(word(73128)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(73130)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x11dae: pc = 73136; if condition(6) { pc = (73136 + Int(sign(byte(73135), 1))) }
        case 0x11db0: pc = 73144; let e0 = resolve(.immediate(word(73138)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(73140)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11db8: pc = 73150; let e0 = resolve(.memory(Int(long(73146)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11dbe: pc = 73154; if condition(6) { pc = (73152 + Int(sign(word(73152), 2))) }
        case 0x11dc2: pc = 73162; let e0 = resolve(.immediate(word(73156)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(73158)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x11dca: pc = 73164; if condition(11) { pc = (73164 + Int(sign(byte(73163), 1))) }
        case 0x11dcc: pc = 73172; let e0 = resolve(.immediate(word(73166)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(73168)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x11dd4: pc = 73174; if condition(10) { pc = (73174 + Int(sign(byte(73173), 1))) }
        case 0x11dd6: pc = 73180; let e0 = resolve(.memory(Int(long(73176)) & 0xffffff), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x11ddc: pc = 73184; let e0 = resolve(.immediate(word(73182)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination & source; put(e1, value, 1); logic(value, 1)
        case 0x11de0: pc = 73186; if condition(6) { pc = (73186 + Int(sign(byte(73185), 1))) }
        case 0x11de2: pc = 73192; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(73188)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x11de8: pc = 73198; let e0 = resolve(.memory(Int(long(73194)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x11dee: pc = 73204; let e0 = resolve(.memory(Int(long(73200)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x11df4: pc = 73206; if condition(6) { pc = (73206 + Int(sign(byte(73205), 1))) }
        case 0x11df6: pc = 73214; let e0 = resolve(.immediate(word(73208)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(73210)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11dfe: pc = 73220; let e0 = resolve(.memory(Int(long(73216)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        default: fail("Untranslated game address")
        }
    }
}
