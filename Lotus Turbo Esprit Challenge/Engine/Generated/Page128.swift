// Generated 68000 game labels $012800–$0128FF.
extension LotusMachine {
    func page128() {
        switch pc {
        case 0x12800: pc = 75778; push(75778); pc = (75778 + Int(sign(byte(75777), 1)))
        case 0x12802: pc = 75780; pc = Int(pop())
        case 0x12804: pc = 75786; let e0 = resolve(.memory(Int(long(75782)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1280a: pc = 75792; let e0 = resolve(.memory(Int(long(75788)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x12810: pc = 75794; if condition(10) { pc = (75794 + Int(sign(byte(75793), 1))) }
        case 0x12812: pc = 75802; let e0 = resolve(.immediate(word(75796)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.memory(Int(long(75798)) & 0xffffff), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x1281a: pc = 75804; if condition(7) { pc = (75804 + Int(sign(byte(75803), 1))) }
        case 0x1281c: pc = 75810; let e0 = resolve(.memory(Int(long(75806)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x12822: pc = 75812; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x12824: pc = 75818; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(75814)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1282a: pc = 75820; pc = Int(pop())
        case 0x1282c: pc = 75826; let e0 = resolve(.memory(Int(long(75822)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x12832: pc = 75832; let e0 = resolve(.memory(Int(long(75828)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12838: pc = 75836; push(75836); pc = (75834 + Int(sign(word(75834), 2)))
        case 0x1283c: pc = 75840; push(75840); pc = (75838 + Int(sign(word(75838), 2)))
        case 0x12840: pc = 75844; push(75844); pc = (75842 + Int(sign(word(75842), 2)))
        case 0x12844: pc = 75848; push(75848); pc = (75846 + Int(sign(word(75846), 2)))
        case 0x12848: pc = 75852; push(75852); pc = (75850 + Int(sign(word(75850), 2)))
        case 0x1284c: pc = 75856; push(75856); pc = (75854 + Int(sign(word(75854), 2)))
        case 0x12850: pc = 75860; push(75860); pc = (75858 + Int(sign(word(75858), 2)))
        case 0x12854: pc = 75864; push(75864); pc = (75862 + Int(sign(word(75862), 2)))
        case 0x12858: pc = 75868; push(75868); pc = (75866 + Int(sign(word(75866), 2)))
        case 0x1285c: pc = 75872; push(75872); pc = (75870 + Int(sign(word(75870), 2)))
        case 0x12860: pc = 75874; pc = Int(pop())
        case 0x12862: pc = 75880; let e0 = resolve(.memory(Int(long(75876)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12868: pc = 75884; push(75884); pc = (75882 + Int(sign(word(75882), 2)))
        case 0x1286c: pc = 75886; pc = Int(pop())
        case 0x1286e: pc = 75892; let e0 = resolve(.memory(Int(long(75888)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12874: pc = 75898; let e0 = resolve(.memory(Int(long(75894)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1287a: pc = 75904; let e0 = resolve(.memory(Int(long(75900)) & 0xffffff), 4); r[12] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12880: pc = 75910; let e0 = resolve(.memory(Int(long(75906)) & 0xffffff), 4); r[13] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12886: pc = 75912; r[7] = UInt32(bitPattern: sign(byte(75911), 1)); logic(r[7], 4)
        case 0x12888: pc = 75914; let e0 = resolve(.post(8), 1); let value = get(e0, 1); let e1 = resolve(.post(12), 1); put(e1, value, 1); logic(value, 1)
        case 0x1288a: pc = 75916; let e0 = resolve(.post(9), 1); let value = get(e0, 1); let e1 = resolve(.post(13), 1); put(e1, value, 1); logic(value, 1)
        case 0x1288c: pc = 75920; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (75918 + Int(sign(word(75918), 2))) } }
        case 0x12890: pc = 75926; let e0 = resolve(.memory(Int(long(75922)) & 0xffffff), 4); r[12] = UInt32(truncatingIfNeeded: e0.address)
        case 0x12896: pc = 75932; let e0 = resolve(.memory(Int(long(75928)) & 0xffffff), 4); r[13] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1289c: pc = 75938; let e0 = resolve(.memory(Int(long(75934)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x128a2: pc = 75942; let e0 = resolve(.offset(8, Int(sign(word(75940), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x128a6: pc = 75946; push(75946); pc = (75944 + Int(sign(word(75944), 2)))
        case 0x128aa: pc = 75948; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.post(12), 1); put(e1, value, 1); logic(value, 1)
        case 0x128ac: pc = 75950; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.post(12), 1); put(e1, value, 1); logic(value, 1)
        case 0x128ae: pc = 75952; let e0 = resolve(.reg(2), 1); let value = get(e0, 1); let e1 = resolve(.post(12), 1); put(e1, value, 1); logic(value, 1)
        case 0x128b0: pc = 75958; let e0 = resolve(.memory(Int(long(75954)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x128b6: pc = 75960; if condition(7) { pc = (75960 + Int(sign(byte(75959), 1))) }
        case 0x128b8: pc = 75964; let e0 = resolve(.offset(8, Int(sign(word(75962), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x128bc: pc = 75968; push(75968); pc = (75966 + Int(sign(word(75966), 2)))
        case 0x128c0: pc = 75970; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.post(13), 1); put(e1, value, 1); logic(value, 1)
        case 0x128c2: pc = 75972; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.post(13), 1); put(e1, value, 1); logic(value, 1)
        case 0x128c4: pc = 75974; let e0 = resolve(.reg(2), 1); let value = get(e0, 1); let e1 = resolve(.post(13), 1); put(e1, value, 1); logic(value, 1)
        case 0x128c6: pc = 75978; let e0 = resolve(.offset(8, Int(sign(word(75976), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x128ca: pc = 75984; let e0 = resolve(.memory(Int(long(75980)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x128d0: pc = 75988; push(75988); pc = (75986 + Int(sign(word(75986), 2)))
        case 0x128d4: pc = 75994; let e0 = resolve(.memory(Int(long(75990)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x128da: pc = 75996; if condition(7) { pc = (75996 + Int(sign(byte(75995), 1))) }
        case 0x128dc: pc = 76000; let e0 = resolve(.offset(8, Int(sign(word(75998), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x128e0: pc = 76006; let e0 = resolve(.memory(Int(long(76002)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x128e6: pc = 76010; push(76010); pc = (76008 + Int(sign(word(76008), 2)))
        case 0x128ea: pc = 76016; let e0 = resolve(.memory(Int(long(76012)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x128f0: pc = 76022; let e0 = resolve(.memory(Int(long(76018)) & 0xffffff), 4); r[10] = UInt32(truncatingIfNeeded: e0.address)
        case 0x128f6: pc = 76024; push(76024); pc = (76024 + Int(sign(byte(76023), 1)))
        case 0x128f8: pc = 76030; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(76026)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x128fe: pc = 76036; let e0 = resolve(.memory(Int(long(76032)) & 0xffffff), 2); logic(get(e0, 2), 2)
        default: fail("Untranslated game address")
        }
    }
}
