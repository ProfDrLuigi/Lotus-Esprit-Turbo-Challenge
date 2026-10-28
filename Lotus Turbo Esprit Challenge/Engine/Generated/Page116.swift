// Generated 68000 game labels $011600–$0116FF.
extension LotusMachine {
    func page116() {
        switch pc {
        case 0x11602: pc = 71176; let e0 = resolve(.memory(Int(long(71172)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x11608: pc = 71180; push(71180); pc = (71178 + Int(sign(word(71178), 2)))
        case 0x1160c: pc = 71184; push(71184); pc = (71182 + Int(sign(word(71182), 2)))
        case 0x11610: pc = 71190; let e0 = resolve(.memory(Int(long(71186)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x11616: pc = 71192; r[0] = UInt32(bitPattern: sign(byte(71191), 1)); logic(r[0], 4)
        case 0x11618: pc = 71196; push(71196); pc = (71194 + Int(sign(word(71194), 2)))
        case 0x1161c: pc = 71200; push(71200); pc = (71198 + Int(sign(word(71198), 2)))
        case 0x11620: pc = 71206; let e0 = resolve(.memory(Int(long(71202)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11626: pc = 71212; let e0 = resolve(.memory(Int(long(71208)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x1162c: pc = 71218; let e0 = resolve(.memory(Int(long(71214)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11632: pc = 71222; push(71222); pc = (71220 + Int(sign(word(71220), 2)))
        case 0x11636: pc = 71230; let e0 = resolve(.immediate(word(71224)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71226)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1163e: pc = 71238; let e0 = resolve(.immediate(word(71232)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71234)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11646: pc = 71246; let e0 = resolve(.immediate(word(71240)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71242)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1164e: pc = 71254; let e0 = resolve(.immediate(word(71248)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71250)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11656: pc = 71260; let e0 = resolve(.memory(Int(long(71256)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x1165c: pc = 71266; let e0 = resolve(.memory(Int(long(71262)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11662: pc = 71276; let e0 = resolve(.memory(Int(long(71268)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71272)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1166c: pc = 71286; let e0 = resolve(.memory(Int(long(71278)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71282)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11676: pc = 71296; let e0 = resolve(.memory(Int(long(71288)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71292)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11680: pc = 71306; let e0 = resolve(.memory(Int(long(71298)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71302)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1168a: pc = 71316; let e0 = resolve(.memory(Int(long(71308)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71312)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11694: pc = 71326; let e0 = resolve(.memory(Int(long(71318)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71322)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1169e: pc = 71336; let e0 = resolve(.memory(Int(long(71328)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71332)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x116a8: pc = 71340; push(71340); pc = (71338 + Int(sign(word(71338), 2)))
        case 0x116ac: pc = 71344; push(71344); pc = (71342 + Int(sign(word(71342), 2)))
        case 0x116b0: pc = 71350; let e0 = resolve(.memory(Int(long(71346)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x116b6: pc = 71354; if condition(6) { pc = (71352 + Int(sign(word(71352), 2))) }
        case 0x116ba: pc = 71358; push(71358); pc = (71356 + Int(sign(word(71356), 2)))
        case 0x116be: pc = 71364; let e0 = resolve(.memory(Int(long(71360)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x116c4: pc = 71368; if condition(6) { pc = (71366 + Int(sign(word(71366), 2))) }
        case 0x116c8: pc = 71372; push(71372); pc = (71370 + Int(sign(word(71370), 2)))
        case 0x116cc: pc = 71378; let e0 = resolve(.memory(Int(long(71374)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x116d2: pc = 71382; if condition(6) { pc = (71380 + Int(sign(word(71380), 2))) }
        case 0x116d6: pc = 71388; let e0 = resolve(.memory(Int(long(71384)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x116dc: pc = 71390; if condition(7) { pc = (71390 + Int(sign(byte(71389), 1))) }
        case 0x116de: pc = 71394; push(71394); pc = (71392 + Int(sign(word(71392), 2)))
        case 0x116e2: pc = 71396; r[0] = UInt32(bitPattern: sign(byte(71395), 1)); logic(r[0], 4)
        case 0x116e4: pc = 71400; push(71400); pc = (71398 + Int(sign(word(71398), 2)))
        case 0x116e8: pc = 71406; let e0 = resolve(.memory(Int(long(71402)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x116ee: pc = 71410; push(71410); pc = (71408 + Int(sign(word(71408), 2)))
        case 0x116f2: pc = 71414; push(71414); pc = (71412 + Int(sign(word(71412), 2)))
        case 0x116f6: pc = 71420; let e0 = resolve(.memory(Int(long(71416)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x116fc: pc = 71422; r[0] = UInt32(bitPattern: sign(byte(71421), 1)); logic(r[0], 4)
        case 0x116fe: pc = 71426; push(71426); pc = (71424 + Int(sign(word(71424), 2)))
        default: fail("Untranslated game address")
        }
    }
}
