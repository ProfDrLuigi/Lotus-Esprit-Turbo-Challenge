// Generated 68000 game labels $016600–$0166FF.
extension LotusMachine {
    func page166() {
        switch pc {
        case 0x16600: pc = 91650; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x16602: pc = 91654; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(91652), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x16606: pc = 91656; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x16608: pc = 91658; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1660a: pc = 91660; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x1660c: pc = 91664; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(91662), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x16610: pc = 91666; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x16612: pc = 91668; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16614: pc = 91670; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x16616: pc = 91674; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(91672), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1661a: pc = 91676; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x1661c: pc = 91678; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1661e: pc = 91680; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x16620: pc = 91684; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(91682), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x16624: pc = 91686; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x16626: pc = 91688; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16628: pc = 91690; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x1662a: pc = 91694; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(91692), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1662e: pc = 91696; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x16630: pc = 91698; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16632: pc = 91700; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x16634: pc = 91704; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(91702), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x16638: pc = 91706; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x1663a: pc = 91708; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1663c: pc = 91710; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x1663e: pc = 91714; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(91712), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x16642: pc = 91716; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x16644: pc = 91718; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16646: pc = 91720; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x16648: pc = 91724; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(91722), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1664c: pc = 91726; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x1664e: pc = 91728; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16650: pc = 91730; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x16652: pc = 91734; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(91732), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x16656: pc = 91736; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x16658: pc = 91738; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1665a: pc = 91740; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x1665c: pc = 91744; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(91742), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x16660: pc = 91746; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x16662: pc = 91748; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16664: pc = 91750; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x16666: pc = 91754; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(91752), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1666a: pc = 91756; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x1666c: pc = 91758; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1666e: pc = 91760; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x16670: pc = 91764; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(91762), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x16674: pc = 91766; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x16676: pc = 91768; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16678: pc = 91770; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x1667a: pc = 91774; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(91772), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1667e: pc = 91776; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x16680: pc = 91778; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16682: pc = 91780; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x16684: pc = 91784; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(91782), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x16688: pc = 91786; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x1668a: pc = 91788; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1668c: pc = 91790; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x1668e: pc = 91794; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(91792), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x16692: pc = 91796; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x16694: pc = 91798; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16696: pc = 91800; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x16698: pc = 91804; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(91802), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1669c: pc = 91806; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x1669e: pc = 91808; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x166a0: pc = 91810; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x166a2: pc = 91814; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(91812), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x166a6: pc = 91816; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x166a8: pc = 91818; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x166aa: pc = 91820; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x166ac: pc = 91824; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(91822), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x166b0: pc = 91826; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x166b2: pc = 91828; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x166b4: pc = 91830; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x166b6: pc = 91834; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(91832), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x166ba: pc = 91836; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x166bc: pc = 91838; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x166be: pc = 91840; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.indirect(8), 1); put(e1, value, 1); logic(value, 1)
        case 0x166c0: pc = 91844; let e0 = resolve(.post(12), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(91842), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x166c4: pc = 91846; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x166c6: pc = 91848; let e0 = resolve(.immediate(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x166c8: pc = 91850; let e0 = resolve(.post(15), 4); r[12] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x166ca: pc = 91852; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x166cc: pc = 91856; let e0 = resolve(.immediate(word(91854)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x166d0: pc = 91860; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.offset(9, Int(sign(word(91858), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x166d4: pc = 91862; let e0 = resolve(.reg(12), 4); let value = get(e0, 4); let e1 = resolve(.pre(15), 4); put(e1, value, 4); logic(value, 4)
        case 0x166d6: pc = 91864; let e0 = resolve(.post(12), 1); logic(get(e0, 1), 1)
        case 0x166d8: pc = 91866; if condition(10) { pc = (91866 + Int(sign(byte(91865), 1))) }
        case 0x166da: pc = 91868; let e0 = resolve(.reg(12), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x166dc: pc = 91870; let e0 = resolve(.post(15), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4); put(e1, value, 4)
        case 0x166de: pc = 91872; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x166e0: pc = 91876; let e0 = resolve(.offset(15, Int(sign(word(91874), 2))), 4); r[12] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x166e4: pc = 91878; r[1] = UInt32(bitPattern: sign(byte(91877), 1)); logic(r[1], 4)
        case 0x166e6: pc = 91880; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x166e8: pc = 91882; if condition(10) { pc = (91882 + Int(sign(byte(91881), 1))) }
        case 0x166ea: pc = 91884; let e0 = resolve(.reg(1), 2); put(e0, 0, 2); logic(0, 2)
        case 0x166ec: pc = 91886; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x166ee: pc = 91888; let e0 = resolve(.immediate(3), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x166f0: pc = 91890; let e0 = resolve(.immediate(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x166f2: pc = 91896; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(91892)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x166f8: pc = 91900; let e0 = resolve(.immediate(word(91898)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x166fc: pc = 91902; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x166fe: pc = 91904; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        default: fail("Untranslated game address")
        }
    }
}
