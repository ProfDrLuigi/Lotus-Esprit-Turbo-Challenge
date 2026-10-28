// Generated 68000 game labels $015600–$0156FF.
extension LotusMachine {
    func page156() {
        switch pc {
        case 0x15600: pc = 87560; let e0 = resolve(.immediate(long(87554)), 4); let value = get(e0, 4); let e1 = resolve(.offset(10, Int(sign(word(87558), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x15608: pc = 87566; let e0 = resolve(.immediate(word(87562)), 2); let value = get(e0, 2); let e1 = resolve(.offset(10, Int(sign(word(87564), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1560e: pc = 87568; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15610: pc = 87574; let e0 = resolve(.offset(10, Int(sign(word(87570), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(10, Int(sign(word(87572), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15616: pc = 87580; let e0 = resolve(.offset(10, Int(sign(word(87576), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(10, Int(sign(word(87578), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1561c: pc = 87586; let e0 = resolve(.memory(Int(long(87582)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x15622: pc = 87592; let e0 = resolve(.memory(Int(long(87588)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x15628: pc = 87594; if condition(7) { pc = (87594 + Int(sign(byte(87593), 1))) }
        case 0x1562a: pc = 87602; let e0 = resolve(.immediate(word(87596)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(87598)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15632: pc = 87604; if condition(4) { pc = (87604 + Int(sign(byte(87603), 1))) }
        case 0x15634: pc = 87608; let e0 = resolve(.offset(11, Int(sign(word(87606), 2))), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x15638: pc = 87610; if condition(10) { pc = (87610 + Int(sign(byte(87609), 1))) }
        case 0x1563a: pc = 87614; let e0 = resolve(.offset(11, Int(sign(word(87612), 2))), 2); logic(get(e0, 2), 2)
        case 0x1563e: pc = 87616; if condition(7) { pc = (87616 + Int(sign(byte(87615), 1))) }
        case 0x15640: pc = 87620; let e0 = resolve(.offset(11, Int(sign(word(87618), 2))), 4); logic(get(e0, 4), 4)
        case 0x15644: pc = 87622; if condition(6) { pc = (87622 + Int(sign(byte(87621), 1))) }
        case 0x15646: pc = 87630; let e0 = resolve(.immediate(long(87624)), 4); let value = get(e0, 4); let e1 = resolve(.offset(11, Int(sign(word(87628), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x1564e: pc = 87636; let e0 = resolve(.immediate(word(87632)), 2); let value = get(e0, 2); let e1 = resolve(.offset(11, Int(sign(word(87634), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15654: pc = 87638; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15656: pc = 87644; let e0 = resolve(.offset(11, Int(sign(word(87640), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(11, Int(sign(word(87642), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1565c: pc = 87650; let e0 = resolve(.offset(11, Int(sign(word(87646), 2))), 2); let value = get(e0, 2); let e1 = resolve(.offset(11, Int(sign(word(87648), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15662: pc = 87656; let e0 = resolve(.memory(Int(long(87652)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x15668: pc = 87662; let e0 = resolve(.memory(Int(long(87658)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1566e: pc = 87664; if condition(7) { pc = (87664 + Int(sign(byte(87663), 1))) }
        case 0x15670: pc = 87666; let e0 = resolve(.post(8), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x15672: pc = 87668; if condition(10) { pc = (87668 + Int(sign(byte(87667), 1))) }
        case 0x15674: pc = 87674; let e0 = resolve(.memory(Int(long(87670)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.post(9), 2); put(e1, value, 2); logic(value, 2)
        case 0x1567a: pc = 87676; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1567c: pc = 87678; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1567e: pc = 87680; let e0 = resolve(.immediate(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(8), 2); let destination = get(e1, 2); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x15680: pc = 87682; pc = (87682 + Int(sign(byte(87681), 1)))
        case 0x15682: pc = 87688; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(87684)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x15688: pc = 87694; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(87690)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1568e: pc = 87702; let e0 = resolve(.immediate(word(87696)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(87698)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15696: pc = 87704; if condition(5) { pc = (87704 + Int(sign(byte(87703), 1))) }
        case 0x15698: pc = 87710; let e0 = resolve(.immediate(word(87706)), 2); let value = get(e0, 2); let e1 = resolve(.offset(10, Int(sign(word(87708), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1569e: pc = 87716; let e0 = resolve(.immediate(word(87712)), 2); let value = get(e0, 2); let e1 = resolve(.offset(11, Int(sign(word(87714), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x156a4: pc = 87718; pc = Int(pop())
        case 0x156a6: pc = 87724; let e0 = resolve(.memory(Int(long(87720)) & 0xffffff), 4); logic(get(e0, 4), 4)
        case 0x156ac: pc = 87726; if condition(7) { pc = (87726 + Int(sign(byte(87725), 1))) }
        case 0x156ae: pc = 87732; let e0 = resolve(.memory(Int(long(87728)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x156b4: pc = 87734; if condition(6) { pc = (87734 + Int(sign(byte(87733), 1))) }
        case 0x156b6: pc = 87740; let e0 = resolve(.memory(Int(long(87736)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x156bc: pc = 87746; let e0 = resolve(.memory(Int(long(87742)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x156c2: pc = 87748; push(87748); pc = (87748 + Int(sign(byte(87747), 1)))
        case 0x156c4: pc = 87754; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(87750)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x156ca: pc = 87760; let e0 = resolve(.memory(Int(long(87756)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x156d0: pc = 87762; if condition(7) { pc = (87762 + Int(sign(byte(87761), 1))) }
        case 0x156d2: pc = 87768; let e0 = resolve(.memory(Int(long(87764)) & 0xffffff), 4); logic(get(e0, 4), 4)
        case 0x156d8: pc = 87770; if condition(7) { pc = (87770 + Int(sign(byte(87769), 1))) }
        case 0x156da: pc = 87776; let e0 = resolve(.memory(Int(long(87772)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x156e0: pc = 87778; if condition(6) { pc = (87778 + Int(sign(byte(87777), 1))) }
        case 0x156e2: pc = 87784; let e0 = resolve(.memory(Int(long(87780)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(0), 4); put(e1, value, 4); logic(value, 4)
        case 0x156e8: pc = 87790; let e0 = resolve(.memory(Int(long(87786)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x156ee: pc = 87792; push(87792); pc = (87792 + Int(sign(byte(87791), 1)))
        case 0x156f0: pc = 87798; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(87794)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x156f6: pc = 87800; pc = Int(pop())
        case 0x156f8: pc = 87802; r[2] = UInt32(bitPattern: sign(byte(87801), 1)); logic(r[2], 4)
        case 0x156fa: pc = 87810; let e0 = resolve(.immediate(word(87804)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(87806)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        default: fail("Untranslated game address")
        }
    }
}
