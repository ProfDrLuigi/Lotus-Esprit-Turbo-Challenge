// Generated 68000 game labels $011A00–$011AFF.
extension LotusMachine {
    func page11a() {
        switch pc {
        case 0x11a02: pc = 72198; push(72198); pc = (72196 + Int(sign(word(72196), 2)))
        case 0x11a06: pc = 72202; push(72202); pc = (72200 + Int(sign(word(72200), 2)))
        case 0x11a0a: pc = 72208; let e0 = resolve(.memory(Int(long(72204)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x11a10: pc = 72210; r[0] = UInt32(bitPattern: sign(byte(72209), 1)); logic(r[0], 4)
        case 0x11a12: pc = 72214; push(72214); pc = (72212 + Int(sign(word(72212), 2)))
        case 0x11a16: pc = 72218; push(72218); pc = (72216 + Int(sign(word(72216), 2)))
        case 0x11a1a: pc = 72226; let e0 = resolve(.immediate(word(72220)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(72222)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11a22: pc = 72234; let e0 = resolve(.immediate(word(72228)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(72230)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11a2a: pc = 72242; let e0 = resolve(.immediate(word(72236)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(72238)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11a32: pc = 72250; let e0 = resolve(.immediate(word(72244)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(72246)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11a3a: pc = 72256; let e0 = resolve(.memory(Int(long(72252)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11a40: pc = 72262; let e0 = resolve(.memory(Int(long(72258)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11a46: pc = 72268; let e0 = resolve(.memory(Int(long(72264)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11a4c: pc = 72270; if condition(7) { pc = (72270 + Int(sign(byte(72269), 1))) }
        case 0x11a4e: pc = 72278; let e0 = resolve(.immediate(word(72272)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(72274)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x11a56: pc = 72280; if condition(7) { pc = (72280 + Int(sign(byte(72279), 1))) }
        case 0x11a58: pc = 72284; push(72284); pc = (72282 + Int(sign(word(72282), 2)))
        case 0x11a5c: pc = 72286; pc = (72286 + Int(sign(byte(72285), 1)))
        case 0x11a5e: pc = 72290; push(72290); pc = (72288 + Int(sign(word(72288), 2)))
        case 0x11a62: pc = 72292; pc = (72292 + Int(sign(byte(72291), 1)))
        case 0x11a64: pc = 72296; push(72296); pc = (72294 + Int(sign(word(72294), 2)))
        case 0x11a68: pc = 72302; let e0 = resolve(.memory(Int(long(72298)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11a6e: pc = 72304; if condition(7) { pc = (72304 + Int(sign(byte(72303), 1))) }
        case 0x11a70: pc = 72310; let e0 = resolve(.memory(Int(long(72306)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x11a76: pc = 72314; push(72314); pc = (72312 + Int(sign(word(72312), 2)))
        case 0x11a7a: pc = 72318; push(72318); pc = (72316 + Int(sign(word(72316), 2)))
        case 0x11a7e: pc = 72324; let e0 = resolve(.memory(Int(long(72320)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x11a84: pc = 72326; r[0] = UInt32(bitPattern: sign(byte(72325), 1)); logic(r[0], 4)
        case 0x11a86: pc = 72330; push(72330); pc = (72328 + Int(sign(word(72328), 2)))
        case 0x11a8a: pc = 72334; push(72334); pc = (72332 + Int(sign(word(72332), 2)))
        case 0x11a8e: pc = 72342; let e0 = resolve(.immediate(word(72336)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(72338)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11a96: pc = 72350; let e0 = resolve(.immediate(word(72344)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(72346)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11a9e: pc = 72358; let e0 = resolve(.immediate(word(72352)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(72354)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11aa6: pc = 72366; let e0 = resolve(.immediate(word(72360)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(72362)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11aae: pc = 72372; let e0 = resolve(.memory(Int(long(72368)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11ab4: pc = 72378; let e0 = resolve(.memory(Int(long(72374)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11aba: pc = 72382; push(72382); pc = (72380 + Int(sign(word(72380), 2)))
        case 0x11abe: pc = 72388; let e0 = resolve(.memory(Int(long(72384)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11ac4: pc = 72390; if condition(7) { pc = (72390 + Int(sign(byte(72389), 1))) }
        case 0x11ac6: pc = 72394; pc = (72392 + Int(sign(word(72392), 2)))
        case 0x11aca: pc = 72400; let e0 = resolve(.memory(Int(long(72396)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x11ad0: pc = 72404; push(72404); pc = (72402 + Int(sign(word(72402), 2)))
        case 0x11ad4: pc = 72408; push(72408); pc = (72406 + Int(sign(word(72406), 2)))
        case 0x11ad8: pc = 72414; let e0 = resolve(.memory(Int(long(72410)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x11ade: pc = 72416; r[0] = UInt32(bitPattern: sign(byte(72415), 1)); logic(r[0], 4)
        case 0x11ae0: pc = 72420; push(72420); pc = (72418 + Int(sign(word(72418), 2)))
        case 0x11ae4: pc = 72424; push(72424); pc = (72422 + Int(sign(word(72422), 2)))
        case 0x11ae8: pc = 72432; let e0 = resolve(.immediate(word(72426)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(72428)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11af0: pc = 72440; let e0 = resolve(.immediate(word(72434)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(72436)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11af8: pc = 72448; let e0 = resolve(.immediate(word(72442)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(72444)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        default: fail("Untranslated game address")
        }
    }
}
