// Generated 68000 game labels $012100–$0121FF.
extension LotusMachine {
    func page121() {
        switch pc {
        case 0x12100: pc = 73992; let e0 = resolve(.immediate(word(73986)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(73988)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x12108: pc = 73994; if condition(6) { pc = (73994 + Int(sign(byte(73993), 1))) }
        case 0x1210a: pc = 74002; let e0 = resolve(.immediate(word(73996)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(73998)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x12112: pc = 74006; if condition(7) { pc = (74004 + Int(sign(word(74004), 2))) }
        case 0x12116: pc = 74014; let e0 = resolve(.immediate(word(74008)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(74010)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1211e: pc = 74018; if condition(7) { pc = (74016 + Int(sign(word(74016), 2))) }
        case 0x12122: pc = 74026; let e0 = resolve(.immediate(word(74020)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(74022)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x1212a: pc = 74028; if condition(10) { pc = (74028 + Int(sign(byte(74027), 1))) }
        case 0x1212c: pc = 74034; let e0 = resolve(.memory(Int(long(74030)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x12132: pc = 74042; let e0 = resolve(.immediate(word(74036)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(74038)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1213a: pc = 74044; if condition(5) { pc = (74044 + Int(sign(byte(74043), 1))) }
        case 0x1213c: pc = 74048; let e0 = resolve(.immediate(word(74046)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x12140: pc = 74054; let e0 = resolve(.memory(Int(long(74050)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x12146: pc = 74062; let e0 = resolve(.immediate(word(74056)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(74058)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x1214e: pc = 74064; if condition(10) { pc = (74064 + Int(sign(byte(74063), 1))) }
        case 0x12150: pc = 74070; let e0 = resolve(.memory(Int(long(74066)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x12156: pc = 74078; let e0 = resolve(.immediate(word(74072)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(74074)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1215e: pc = 74080; if condition(5) { pc = (74080 + Int(sign(byte(74079), 1))) }
        case 0x12160: pc = 74084; let e0 = resolve(.immediate(word(74082)), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x12164: pc = 74090; let e0 = resolve(.memory(Int(long(74086)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x1216a: pc = 74094; let e0 = resolve(.immediate(word(74092)), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x1216e: pc = 74098; let e0 = resolve(.immediate(word(74096)), 2); let value = get(e0, 2); let e1 = resolve(.reg(5), 2); put(e1, value, 2); logic(value, 2)
        case 0x12172: pc = 74104; let e0 = resolve(.memory(Int(long(74100)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x12178: pc = 74106; if condition(7) { pc = (74106 + Int(sign(byte(74105), 1))) }
        case 0x1217a: pc = 74110; let e0 = resolve(.immediate(word(74108)), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x1217e: pc = 74114; let e0 = resolve(.immediate(word(74112)), 2); let value = get(e0, 2); let e1 = resolve(.reg(5), 2); put(e1, value, 2); logic(value, 2)
        case 0x12182: pc = 74120; let e0 = resolve(.memory(Int(long(74116)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x12188: pc = 74122; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1218a: pc = 74124; if condition(10) { pc = (74124 + Int(sign(byte(74123), 1))) }
        case 0x1218c: pc = 74128; let e0 = resolve(.immediate(word(74126)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x12190: pc = 74130; if condition(11) { pc = (74130 + Int(sign(byte(74129), 1))) }
        case 0x12192: pc = 74132; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x12194: pc = 74134; if condition(10) { pc = (74134 + Int(sign(byte(74133), 1))) }
        case 0x12196: pc = 74138; let e0 = resolve(.immediate(word(74136)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1219a: pc = 74140; if condition(10) { pc = (74140 + Int(sign(byte(74139), 1))) }
        case 0x1219c: pc = 74146; let e0 = resolve(.memory(Int(long(74142)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x121a2: pc = 74152; let e0 = resolve(.memory(Int(long(74148)) & 0xffffff), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x121a8: pc = 74154; if condition(11) { pc = (74154 + Int(sign(byte(74153), 1))) }
        case 0x121aa: pc = 74158; let e0 = resolve(.immediate(word(74156)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x121ae: pc = 74164; let e0 = resolve(.immediate(long(74160)), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination | source; put(e1, value, 4); logic(value, 4)
        case 0x121b4: pc = 74170; let e0 = resolve(.reg(0), 4); let value = get(e0, 4); let e1 = resolve(.memory(Int(long(74166)) & 0xffffff), 4); put(e1, value, 4); logic(value, 4)
        case 0x121ba: pc = 74174; let e0 = resolve(.immediate(word(74172)), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x121be: pc = 74178; let e0 = resolve(.immediate(word(74176)), 2); let value = get(e0, 2); let e1 = resolve(.reg(5), 2); put(e1, value, 2); logic(value, 2)
        case 0x121c2: pc = 74184; let e0 = resolve(.memory(Int(long(74180)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x121c8: pc = 74186; if condition(7) { pc = (74186 + Int(sign(byte(74185), 1))) }
        case 0x121ca: pc = 74190; let e0 = resolve(.immediate(word(74188)), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x121ce: pc = 74194; let e0 = resolve(.immediate(word(74192)), 2); let value = get(e0, 2); let e1 = resolve(.reg(5), 2); put(e1, value, 2); logic(value, 2)
        case 0x121d2: pc = 74200; let e0 = resolve(.memory(Int(long(74196)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x121d8: pc = 74202; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x121da: pc = 74204; if condition(10) { pc = (74204 + Int(sign(byte(74203), 1))) }
        case 0x121dc: pc = 74208; let e0 = resolve(.immediate(word(74206)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x121e0: pc = 74210; if condition(11) { pc = (74210 + Int(sign(byte(74209), 1))) }
        case 0x121e2: pc = 74212; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x121e4: pc = 74214; if condition(10) { pc = (74214 + Int(sign(byte(74213), 1))) }
        case 0x121e6: pc = 74218; let e0 = resolve(.immediate(word(74216)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x121ea: pc = 74220; if condition(10) { pc = (74220 + Int(sign(byte(74219), 1))) }
        case 0x121ec: pc = 74226; let e0 = resolve(.memory(Int(long(74222)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x121f2: pc = 74232; let e0 = resolve(.memory(Int(long(74228)) & 0xffffff), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x121f8: pc = 74234; if condition(11) { pc = (74234 + Int(sign(byte(74233), 1))) }
        case 0x121fa: pc = 74238; let e0 = resolve(.immediate(word(74236)), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x121fe: pc = 74244; let e0 = resolve(.immediate(long(74240)), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = destination | source; put(e1, value, 4); logic(value, 4)
        default: fail("Untranslated game address")
        }
    }
}
