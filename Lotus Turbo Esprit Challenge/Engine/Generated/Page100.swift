// Generated 68000 game labels $010000–$0100FF.
extension LotusMachine {
    func page100() {
        switch pc {
        case 0x10000: pc = 65542; let e0 = resolve(.memory(Int(long(65538)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x10002: pc = 65542; let e0 = resolve(.immediate(word(65540)), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x10006: pc = 65548; let e0 = resolve(.memory(Int(long(65544)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x1000c: pc = 65556; let e0 = resolve(.immediate(word(65550)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(65552)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1000e: fail("Untranslated dc.w at 1000e")
        case 0x10014: pc = 65564; let e0 = resolve(.immediate(word(65558)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(65560)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1001c: pc = 65570; let e0 = resolve(.memory(Int(long(65566)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x10022: pc = 65576; let e0 = resolve(.memory(Int(long(65572)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x10028: pc = 65582; let e0 = resolve(.memory(Int(long(65578)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1002e: pc = 65588; let e0 = resolve(.memory(Int(long(65584)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x10034: pc = 65594; let e0 = resolve(.memory(Int(long(65590)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1003a: pc = 65598; let e0 = resolve(.immediate(word(65596)), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x1003e: pc = 65600; let e0 = resolve(.indirect(8), 4); let value = get(e0, 4); let e1 = resolve(.post(9), 4); put(e1, value, 4); logic(value, 4)
        case 0x10040: pc = 65602; let e0 = resolve(.post(8), 4); let value = get(e0, 4); let e1 = resolve(.post(10), 4); put(e1, value, 4); logic(value, 4)
        case 0x10042: pc = 65606; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (65604 + Int(sign(word(65604), 2))) } }
        case 0x10046: pc = 65612; let e0 = resolve(.memory(Int(long(65608)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1004c: pc = 65618; let e0 = resolve(.memory(Int(long(65614)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x10052: pc = 65624; let e0 = resolve(.memory(Int(long(65620)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x10058: pc = 65630; let e0 = resolve(.memory(Int(long(65626)) & 0xffffff), 4); r[12] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1005e: pc = 65632; r[7] = UInt32(bitPattern: sign(byte(65631), 1)); logic(r[7], 4)
        case 0x10060: pc = 65636; let e0 = resolve(.indirect(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(65634), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x10064: pc = 65640; let e0 = resolve(.indirect(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(9, Int(sign(word(65638), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x10068: pc = 65644; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(10, Int(sign(word(65642), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1006c: pc = 65648; let e0 = resolve(.indirect(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(65646), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x10070: pc = 65652; let e0 = resolve(.indirect(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(9, Int(sign(word(65650), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x10074: pc = 65656; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(10, Int(sign(word(65654), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x10078: pc = 65658; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x1007a: pc = 65660; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ source
        case 0x1007c: pc = 65662; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(10), 2); let destination = get(e1, 2); _ = source; _ = destination; r[10] = r[10] &+ source
        case 0x1007e: pc = 65666; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (65664 + Int(sign(word(65664), 2))) } }
        case 0x10082: pc = 65672; let e0 = resolve(.immediate(long(65668)), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x10088: pc = 65678; let e0 = resolve(.immediate(long(65674)), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x1008e: pc = 65684; let e0 = resolve(.immediate(long(65680)), 4); let value = get(e0, 4); let e1 = resolve(.reg(2), 4); put(e1, value, 4); logic(value, 4)
        case 0x10092: pc = 65684; let e0 = resolve(.immediate(8), 4); let count = get(e0, 4); let e1 = resolve(.reg(2), 1); let value = shift(get(e1, 1), count, 1, 1); put(e1, value, 1)
        case 0x10094: pc = 65690; let e0 = resolve(.memory(Int(long(65686)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1009a: pc = 65696; let e0 = resolve(.memory(Int(long(65692)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x100a0: pc = 65702; let e0 = resolve(.memory(Int(long(65698)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x100a6: pc = 65704; r[7] = UInt32(bitPattern: sign(byte(65703), 1)); logic(r[7], 4)
        case 0x100a8: pc = 65708; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(65706), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x100ac: pc = 65712; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.offset(9, Int(sign(word(65710), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x100b0: pc = 65716; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.offset(10, Int(sign(word(65714), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x100b4: pc = 65718; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x100b6: pc = 65720; r[1] = (r[1] << 16) | (r[1] >> 16); logic(r[1], 4)
        case 0x100b8: pc = 65722; r[2] = (r[2] << 16) | (r[2] >> 16); logic(r[2], 4)
        case 0x100ba: pc = 65726; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(65724), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x100be: pc = 65730; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.offset(9, Int(sign(word(65728), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x100c2: pc = 65734; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.offset(10, Int(sign(word(65732), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x100c6: pc = 65736; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x100c8: pc = 65738; r[1] = (r[1] << 16) | (r[1] >> 16); logic(r[1], 4)
        case 0x100ca: pc = 65740; r[2] = (r[2] << 16) | (r[2] >> 16); logic(r[2], 4)
        case 0x100cc: pc = 65746; let e0 = resolve(.immediate(long(65742)), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x100d2: pc = 65752; let e0 = resolve(.immediate(long(65748)), 4); let source = get(e0, 4); let e1 = resolve(.reg(1), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x100d8: pc = 65758; let e0 = resolve(.immediate(long(65754)), 4); let source = get(e0, 4); let e1 = resolve(.reg(2), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x100de: pc = 65760; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x100e0: pc = 65762; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(9), 2); let destination = get(e1, 2); _ = source; _ = destination; r[9] = r[9] &+ source
        case 0x100e2: pc = 65764; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(10), 2); let destination = get(e1, 2); _ = source; _ = destination; r[10] = r[10] &+ source
        case 0x100e4: pc = 65768; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (65766 + Int(sign(word(65766), 2))) } }
        case 0x100e8: pc = 65774; let e0 = resolve(.immediate(long(65770)), 4); r[9] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x100ee: pc = 65780; let e0 = resolve(.immediate(long(65776)), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x100f4: pc = 65784; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.offset(9, Int(sign(word(65782), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x100f8: pc = 65786; r[1] = (r[1] << 16) | (r[1] >> 16); logic(r[1], 4)
        case 0x100fa: pc = 65788; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.indirect(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x100fc: pc = 65794; let e0 = resolve(.immediate(long(65790)), 4); r[9] = UInt32(bitPattern: sign(get(e0, 4), 4))
        default: fail("Untranslated game address")
        }
    }
}
