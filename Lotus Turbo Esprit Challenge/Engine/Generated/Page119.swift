// Generated 68000 game labels $011900–$0119FF.
extension LotusMachine {
    func page119() {
        switch pc {
        case 0x11900: pc = 71940; push(71940); pc = (71938 + Int(sign(word(71938), 2)))
        case 0x11904: pc = 71946; let e0 = resolve(.memory(Int(long(71942)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1190a: pc = 71950; if condition(6) { pc = (71948 + Int(sign(word(71948), 2))) }
        case 0x1190e: pc = 71952; r[0] = UInt32(bitPattern: sign(byte(71951), 1)); logic(r[0], 4)
        case 0x11910: pc = 71956; push(71956); pc = (71954 + Int(sign(word(71954), 2)))
        case 0x11914: pc = 71962; let e0 = resolve(.memory(Int(long(71958)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1191a: pc = 71966; push(71966); pc = (71964 + Int(sign(word(71964), 2)))
        case 0x1191e: pc = 71970; push(71970); pc = (71968 + Int(sign(word(71968), 2)))
        case 0x11922: pc = 71976; let e0 = resolve(.memory(Int(long(71972)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x11928: pc = 71978; r[0] = UInt32(bitPattern: sign(byte(71977), 1)); logic(r[0], 4)
        case 0x1192a: pc = 71982; push(71982); pc = (71980 + Int(sign(word(71980), 2)))
        case 0x1192e: pc = 71986; push(71986); pc = (71984 + Int(sign(word(71984), 2)))
        case 0x11932: pc = 71994; let e0 = resolve(.immediate(word(71988)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71990)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1193a: pc = 72002; let e0 = resolve(.immediate(word(71996)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71998)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11942: pc = 72010; let e0 = resolve(.immediate(word(72004)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(72006)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1194a: pc = 72018; let e0 = resolve(.immediate(word(72012)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(72014)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11952: pc = 72024; let e0 = resolve(.memory(Int(long(72020)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11958: pc = 72030; let e0 = resolve(.memory(Int(long(72026)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x1195e: pc = 72036; let e0 = resolve(.memory(Int(long(72032)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11964: pc = 72038; if condition(6) { pc = (72038 + Int(sign(byte(72037), 1))) }
        case 0x11966: pc = 72046; let e0 = resolve(.immediate(word(72040)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(72042)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1196e: pc = 72048; if condition(5) { pc = (72048 + Int(sign(byte(72047), 1))) }
        case 0x11970: pc = 72056; let e0 = resolve(.immediate(word(72050)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(72052)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x11978: pc = 72058; if condition(5) { pc = (72058 + Int(sign(byte(72057), 1))) }
        case 0x1197a: pc = 72062; push(72062); pc = (72060 + Int(sign(word(72060), 2)))
        case 0x1197e: pc = 72066; push(72066); pc = (72064 + Int(sign(word(72064), 2)))
        case 0x11982: pc = 72072; let e0 = resolve(.memory(Int(long(72068)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11988: pc = 72076; if condition(6) { pc = (72074 + Int(sign(word(72074), 2))) }
        case 0x1198c: pc = 72082; let e0 = resolve(.memory(Int(long(72078)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11992: pc = 72084; if condition(7) { pc = (72084 + Int(sign(byte(72083), 1))) }
        case 0x11994: pc = 72086; pc = (72086 + Int(sign(byte(72085), 1)))
        case 0x11996: pc = 72092; let e0 = resolve(.memory(Int(long(72088)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1199c: pc = 72094; if condition(7) { pc = (72094 + Int(sign(byte(72093), 1))) }
        case 0x1199e: pc = 72098; push(72098); pc = (72096 + Int(sign(word(72096), 2)))
        case 0x119a2: pc = 72102; push(72102); pc = (72100 + Int(sign(word(72100), 2)))
        case 0x119a6: pc = 72106; push(72106); pc = (72104 + Int(sign(word(72104), 2)))
        case 0x119aa: pc = 72112; let e0 = resolve(.memory(Int(long(72108)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x119b0: pc = 72116; if condition(6) { pc = (72114 + Int(sign(word(72114), 2))) }
        case 0x119b4: pc = 72122; let e0 = resolve(.memory(Int(long(72118)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x119ba: pc = 72124; if condition(7) { pc = (72124 + Int(sign(byte(72123), 1))) }
        case 0x119bc: pc = 72128; pc = (72126 + Int(sign(word(72126), 2)))
        case 0x119c0: pc = 72134; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(72130)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x119c6: pc = 72138; push(72138); pc = (72136 + Int(sign(word(72136), 2)))
        case 0x119ca: pc = 72144; let e0 = resolve(.memory(Int(long(72140)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x119d0: pc = 72148; if condition(6) { pc = (72146 + Int(sign(word(72146), 2))) }
        case 0x119d4: pc = 72152; push(72152); pc = (72150 + Int(sign(word(72150), 2)))
        case 0x119d8: pc = 72158; let e0 = resolve(.memory(Int(long(72154)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x119de: pc = 72162; if condition(6) { pc = (72160 + Int(sign(word(72160), 2))) }
        case 0x119e2: pc = 72166; push(72166); pc = (72164 + Int(sign(word(72164), 2)))
        case 0x119e6: pc = 72172; let e0 = resolve(.memory(Int(long(72168)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x119ec: pc = 72176; if condition(6) { pc = (72174 + Int(sign(word(72174), 2))) }
        case 0x119f0: pc = 72182; let e0 = resolve(.memory(Int(long(72178)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x119f6: pc = 72184; if condition(7) { pc = (72184 + Int(sign(byte(72183), 1))) }
        case 0x119f8: pc = 72188; pc = (72186 + Int(sign(word(72186), 2)))
        case 0x119fc: pc = 72194; let e0 = resolve(.memory(Int(long(72190)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        default: fail("Untranslated game address")
        }
    }
}
