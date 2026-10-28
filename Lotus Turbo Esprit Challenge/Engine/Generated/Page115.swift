// Generated 68000 game labels $011500–$0115FF.
extension LotusMachine {
    func page115() {
        switch pc {
        case 0x11502: pc = 70916; if condition(6) { pc = (70916 + Int(sign(byte(70915), 1))) }
        case 0x11504: pc = 70920; push(70920); pc = (70918 + Int(sign(word(70918), 2)))
        case 0x11508: pc = 70926; let e0 = resolve(.memory(Int(long(70922)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1150e: pc = 70928; if condition(6) { pc = (70928 + Int(sign(byte(70927), 1))) }
        case 0x11510: pc = 70936; let e0 = resolve(.immediate(word(70930)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70932)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11518: pc = 70940; push(70940); pc = (70938 + Int(sign(word(70938), 2)))
        case 0x1151c: pc = 70946; let e0 = resolve(.memory(Int(long(70942)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11522: pc = 70948; if condition(6) { pc = (70948 + Int(sign(byte(70947), 1))) }
        case 0x11524: pc = 70952; pc = (70950 + Int(sign(word(70950), 2)))
        case 0x11528: pc = 70960; let e0 = resolve(.immediate(word(70954)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70956)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11530: pc = 70968; let e0 = resolve(.immediate(word(70962)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(70964)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11538: pc = 70974; let e0 = resolve(.memory(Int(long(70970)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x1153e: pc = 70980; let e0 = resolve(.memory(Int(long(70976)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x11544: pc = 70984; let e0 = resolve(.reg(8), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(70982), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x11548: pc = 70990; let e0 = resolve(.memory(Int(long(70986)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x1154e: pc = 70996; let e0 = resolve(.memory(Int(long(70992)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11554: pc = 71000; push(71000); pc = (70998 + Int(sign(word(70998), 2)))
        case 0x11558: pc = 71006; let e0 = resolve(.memory(Int(long(71002)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1155e: pc = 71008; if condition(6) { pc = (71008 + Int(sign(byte(71007), 1))) }
        case 0x11560: pc = 71012; push(71012); pc = (71010 + Int(sign(word(71010), 2)))
        case 0x11564: pc = 71020; let e0 = resolve(.immediate(word(71014)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71016)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1156c: pc = 71024; push(71024); pc = (71022 + Int(sign(word(71022), 2)))
        case 0x11570: pc = 71030; let e0 = resolve(.memory(Int(long(71026)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11576: pc = 71034; push(71034); pc = (71032 + Int(sign(word(71032), 2)))
        case 0x1157a: pc = 71040; let e0 = resolve(.memory(Int(long(71036)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11580: pc = 71044; if condition(6) { pc = (71042 + Int(sign(word(71042), 2))) }
        case 0x11584: pc = 71048; push(71048); pc = (71046 + Int(sign(word(71046), 2)))
        case 0x11588: pc = 71054; let e0 = resolve(.memory(Int(long(71050)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1158e: pc = 71058; if condition(6) { pc = (71056 + Int(sign(word(71056), 2))) }
        case 0x11592: pc = 71062; push(71062); pc = (71060 + Int(sign(word(71060), 2)))
        case 0x11596: pc = 71070; let e0 = resolve(.immediate(word(71064)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71066)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1159e: pc = 71076; let e0 = resolve(.memory(Int(long(71072)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x115a4: pc = 71080; push(71080); pc = (71078 + Int(sign(word(71078), 2)))
        case 0x115a8: pc = 71084; push(71084); pc = (71082 + Int(sign(word(71082), 2)))
        case 0x115ac: pc = 71090; let e0 = resolve(.memory(Int(long(71086)) & 0xffffff), 4); r[8] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x115b2: pc = 71092; r[0] = UInt32(bitPattern: sign(byte(71091), 1)); logic(r[0], 4)
        case 0x115b4: pc = 71096; push(71096); pc = (71094 + Int(sign(word(71094), 2)))
        case 0x115b8: pc = 71100; push(71100); pc = (71098 + Int(sign(word(71098), 2)))
        case 0x115bc: pc = 71108; let e0 = resolve(.immediate(word(71102)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71104)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x115c4: pc = 71116; let e0 = resolve(.immediate(word(71110)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71112)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x115cc: pc = 71124; let e0 = resolve(.immediate(word(71118)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71120)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x115d4: pc = 71132; let e0 = resolve(.immediate(word(71126)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71128)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x115dc: pc = 71138; let e0 = resolve(.memory(Int(long(71134)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x115e2: pc = 71144; let e0 = resolve(.memory(Int(long(71140)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x115e8: pc = 71148; push(71148); pc = (71146 + Int(sign(word(71146), 2)))
        case 0x115ec: pc = 71154; let e0 = resolve(.memory(Int(long(71150)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x115f2: pc = 71158; if condition(6) { pc = (71156 + Int(sign(word(71156), 2))) }
        case 0x115f6: pc = 71164; let e0 = resolve(.memory(Int(long(71160)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x115fc: pc = 71166; if condition(7) { pc = (71166 + Int(sign(byte(71165), 1))) }
        case 0x115fe: pc = 71170; push(71170); pc = (71168 + Int(sign(word(71168), 2)))
        default: fail("Untranslated game address")
        }
    }
}
