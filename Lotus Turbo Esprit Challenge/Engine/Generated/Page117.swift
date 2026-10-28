// Generated 68000 game labels $011700–$0117FF.
extension LotusMachine {
    func page117() {
        switch pc {
        case 0x11702: pc = 71430; push(71430); pc = (71428 + Int(sign(word(71428), 2)))
        case 0x11706: pc = 71438; let e0 = resolve(.immediate(word(71432)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71434)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1170e: pc = 71446; let e0 = resolve(.immediate(word(71440)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71442)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11716: pc = 71454; let e0 = resolve(.immediate(word(71448)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71450)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1171e: pc = 71462; let e0 = resolve(.immediate(word(71456)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71458)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11726: pc = 71468; let e0 = resolve(.memory(Int(long(71464)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x1172c: pc = 71474; let e0 = resolve(.memory(Int(long(71470)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11732: pc = 71480; let e0 = resolve(.memory(Int(long(71476)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11738: pc = 71482; if condition(6) { pc = (71482 + Int(sign(byte(71481), 1))) }
        case 0x1173a: pc = 71488; let e0 = resolve(.memory(Int(long(71484)) & 0xffffff), 4); push(71488); pc = e0.address
        case 0x11740: pc = 71494; let e0 = resolve(.memory(Int(long(71490)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11746: pc = 71498; if condition(6) { pc = (71496 + Int(sign(word(71496), 2))) }
        case 0x1174a: pc = 71504; let e0 = resolve(.memory(Int(long(71500)) & 0xffffff), 4); push(71504); pc = e0.address
        case 0x11750: pc = 71510; let e0 = resolve(.memory(Int(long(71506)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11756: pc = 71514; if condition(6) { pc = (71512 + Int(sign(word(71512), 2))) }
        case 0x1175a: pc = 71520; let e0 = resolve(.memory(Int(long(71516)) & 0xffffff), 4); push(71520); pc = e0.address
        case 0x11760: pc = 71526; let e0 = resolve(.memory(Int(long(71522)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11766: pc = 71530; if condition(6) { pc = (71528 + Int(sign(word(71528), 2))) }
        case 0x1176a: pc = 71536; let e0 = resolve(.memory(Int(long(71532)) & 0xffffff), 4); push(71536); pc = e0.address
        case 0x11770: pc = 71542; let e0 = resolve(.memory(Int(long(71538)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11776: pc = 71546; if condition(6) { pc = (71544 + Int(sign(word(71544), 2))) }
        case 0x1177a: pc = 71554; let e0 = resolve(.immediate(word(71548)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71550)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x11782: pc = 71560; let e0 = resolve(.memory(Int(long(71556)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x11788: pc = 71564; push(71564); pc = (71562 + Int(sign(word(71562), 2)))
        case 0x1178c: pc = 71570; let e0 = resolve(.memory(Int(long(71566)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x11792: pc = 71574; if condition(6) { pc = (71572 + Int(sign(word(71572), 2))) }
        case 0x11796: pc = 71578; push(71578); pc = (71576 + Int(sign(word(71576), 2)))
        case 0x1179a: pc = 71584; let e0 = resolve(.memory(Int(long(71580)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x117a0: pc = 71588; if condition(6) { pc = (71586 + Int(sign(word(71586), 2))) }
        case 0x117a4: pc = 71592; push(71592); pc = (71590 + Int(sign(word(71590), 2)))
        case 0x117a8: pc = 71598; let e0 = resolve(.memory(Int(long(71594)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x117ae: pc = 71602; if condition(6) { pc = (71600 + Int(sign(word(71600), 2))) }
        case 0x117b2: pc = 71610; let e0 = resolve(.immediate(word(71604)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(71606)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x117ba: pc = 71614; push(71614); pc = (71612 + Int(sign(word(71612), 2)))
        case 0x117be: pc = 71620; let e0 = resolve(.memory(Int(long(71616)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x117c4: pc = 71622; if condition(6) { pc = (71622 + Int(sign(byte(71621), 1))) }
        case 0x117c6: pc = 71626; push(71626); pc = (71624 + Int(sign(word(71624), 2)))
        case 0x117ca: pc = 71630; push(71630); pc = (71628 + Int(sign(word(71628), 2)))
        case 0x117ce: pc = 71634; push(71634); pc = (71632 + Int(sign(word(71632), 2)))
        case 0x117d2: pc = 71640; let e0 = resolve(.immediate(word(71636)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(71638), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x117d8: pc = 71646; let e0 = resolve(.immediate(word(71642)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(71644), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x117de: pc = 71654; let e0 = resolve(.immediate(long(71648)), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(UInt32(bitPattern: sign(word(71652), 2))) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x117e6: pc = 71660; let e0 = resolve(.immediate(word(71656)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(71658), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x117ec: pc = 71668; let e0 = resolve(.immediate(long(71662)), 4); let value = get(e0, 4); let e1 = resolve(.offset(14, Int(sign(word(71666), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x117f4: pc = 71674; let e0 = resolve(.immediate(word(71670)), 2); let value = get(e0, 2); let e1 = resolve(.offset(14, Int(sign(word(71672), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x117fa: pc = 71680; let e0 = resolve(.memory(Int(long(71676)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        default: fail("Untranslated game address")
        }
    }
}
