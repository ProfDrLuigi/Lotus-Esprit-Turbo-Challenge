// Generated 68000 game labels $015900–$0159FF.
extension LotusMachine {
    func page159() {
        switch pc {
        case 0x15902: pc = 88324; pc = (88324 + Int(sign(byte(88323), 1)))
        case 0x15904: pc = 88328; let e0 = resolve(.immediate(word(88326)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x15908: pc = 88332; let e0 = resolve(.offset(8, Int(sign(word(88330), 2))), 2); logic(get(e0, 2), 2)
        case 0x1590c: pc = 88334; if condition(10) { pc = (88334 + Int(sign(byte(88333), 1))) }
        case 0x1590e: pc = 88338; let e0 = resolve(.offset(8, Int(sign(word(88336), 2))), 2); let value = subtract(0, get(e0, 2), 2, extend: false); put(e0, value, 2)
        case 0x15912: pc = 88342; let e0 = resolve(.offset(12, Int(sign(word(88340), 2))), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15916: pc = 88346; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(88344), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1591a: pc = 88348; pc = (88348 + Int(sign(byte(88347), 1)))
        case 0x1591c: pc = 88354; let e0 = resolve(.immediate(long(88350)), 4); let source = get(e0, 4); let e1 = resolve(.reg(1), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4); put(e1, value, 4)
        case 0x15922: pc = 88358; let e0 = resolve(.reg(1), 4); let source = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(88356), 2))), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x15926: pc = 88362; let e0 = resolve(.offset(12, Int(sign(word(88360), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1592a: pc = 88364; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x1592c: pc = 88368; let e0 = resolve(.immediate(word(88366)), 2); let source = get(e0, 2); r[0] = (r[0] & 65535) &* source; logic(r[0], 4)
        case 0x15930: pc = 88370; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x15932: pc = 88374; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(88372), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15936: pc = 88376; let e0 = resolve(.immediate(8), 4); let count = get(e0, 4); let e1 = resolve(.reg(1), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x15938: pc = 88378; let e0 = resolve(.immediate(3), 4); let count = get(e0, 4); let e1 = resolve(.reg(1), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x1593a: pc = 88380; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1593c: pc = 88384; let e0 = resolve(.immediate(word(88382)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15940: pc = 88388; let e0 = resolve(.immediate(word(88386)), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x15944: pc = 88396; let e0 = resolve(.immediate(word(88390)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(88392)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1594c: pc = 88398; let e0 = resolve(.reg(2), 2); logic(get(e0, 2), 2)
        case 0x1594e: pc = 88400; if condition(11) { pc = (88400 + Int(sign(byte(88399), 1))) }
        case 0x15950: pc = 88402; let e0 = resolve(.reg(0), 2); let value = subtract(0, get(e0, 2), 2, extend: false); put(e0, value, 2)
        case 0x15952: pc = 88404; let e0 = resolve(.reg(1), 2); let value = subtract(0, get(e0, 2), 2, extend: false); put(e0, value, 2)
        case 0x15954: pc = 88408; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(88406), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15958: pc = 88412; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(88410), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x1595c: pc = 88414; pc = Int(pop())
        case 0x1595e: pc = 88420; let e0 = resolve(.memory(Int(long(88416)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x15964: pc = 88426; let e0 = resolve(.memory(Int(long(88422)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x1596a: pc = 88432; let e0 = resolve(.memory(Int(long(88428)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x15970: pc = 88434; pc = (88434 + Int(sign(byte(88433), 1)))
        case 0x15972: pc = 88440; let e0 = resolve(.memory(Int(long(88436)) & 0xffffff), 4); let value = get(e0, 4); let e1 = resolve(.reg(1), 4); put(e1, value, 4); logic(value, 4)
        case 0x15978: pc = 88446; let e0 = resolve(.memory(Int(long(88442)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x1597e: pc = 88452; let e0 = resolve(.memory(Int(long(88448)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x15984: pc = 88458; let e0 = resolve(.memory(Int(long(88454)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x1598a: pc = 88462; let e0 = resolve(.offset(12, Int(sign(word(88460), 2))), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x1598e: pc = 88466; let e0 = resolve(.immediate(word(88464)), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15992: pc = 88468; if condition(11) { pc = (88468 + Int(sign(byte(88467), 1))) }
        case 0x15994: pc = 88472; let e0 = resolve(.immediate(word(88470)), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15998: pc = 88474; if condition(10) { pc = (88474 + Int(sign(byte(88473), 1))) }
        case 0x1599a: pc = 88478; let e0 = resolve(.offset(12, Int(sign(word(88476), 2))), 4); let source = get(e0, 4); let e1 = resolve(.reg(1), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4); put(e1, value, 4)
        case 0x1599e: pc = 88480; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x159a0: pc = 88482; r[1] = (r[1] << 16) | (r[1] >> 16); logic(r[1], 4)
        case 0x159a2: pc = 88484; setRegister(1, UInt32(bitPattern: sign(r[1], 2)), 4); logic(r[1], 4)
        case 0x159a4: pc = 88490; let e0 = resolve(.memory(Int(long(88486)) & 0xffffff), 4); let source = get(e0, 4); let e1 = resolve(.reg(1), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x159aa: pc = 88496; let e0 = resolve(.memory(Int(long(88492)) & 0xffffff), 2); let source = get(e0, 2); divide(1, source, signed: false)
        case 0x159b0: pc = 88498; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x159b2: pc = 88504; let e0 = resolve(.immediate(long(88500)), 4); let source = get(e0, 4); let e1 = resolve(.reg(1), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x159b8: pc = 88506; if condition(4) { pc = (88506 + Int(sign(byte(88505), 1))) }
        case 0x159ba: pc = 88512; let e0 = resolve(.immediate(long(88508)), 4); let source = get(e0, 4); let e1 = resolve(.reg(1), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4); put(e1, value, 4)
        case 0x159c0: pc = 88518; let e0 = resolve(.reg(1), 4); let source = get(e0, 4); let e1 = resolve(.memory(Int(long(88514)) & 0xffffff), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x159c6: pc = 88522; let e0 = resolve(.offset(12, Int(sign(word(88520), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x159ca: pc = 88526; let e0 = resolve(.immediate(word(88524)), 2); let source = get(e0, 2); r[0] = (r[0] & 65535) &* source; logic(r[0], 4)
        case 0x159ce: pc = 88528; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x159d0: pc = 88532; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(88530), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x159d4: pc = 88534; let e0 = resolve(.immediate(8), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x159d6: pc = 88536; let e0 = resolve(.immediate(2), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x159d8: pc = 88540; let e0 = resolve(.immediate(word(88538)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x159dc: pc = 88544; let e0 = resolve(.immediate(word(88542)), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x159e0: pc = 88552; let e0 = resolve(.immediate(word(88546)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(88548)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x159e8: pc = 88554; let e0 = resolve(.reg(2), 2); logic(get(e0, 2), 2)
        case 0x159ea: pc = 88556; if condition(11) { pc = (88556 + Int(sign(byte(88555), 1))) }
        case 0x159ec: pc = 88558; let e0 = resolve(.reg(0), 2); let value = subtract(0, get(e0, 2), 2, extend: false); put(e0, value, 2)
        case 0x159ee: pc = 88560; let e0 = resolve(.reg(1), 2); let value = subtract(0, get(e0, 2), 2, extend: false); put(e0, value, 2)
        case 0x159f0: pc = 88564; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(88562), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x159f4: pc = 88568; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(88566), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x159f8: pc = 88570; pc = Int(pop())
        case 0x159fa: pc = 88574; let e0 = resolve(.offset(12, Int(sign(word(88572), 2))), 2); logic(get(e0, 2), 2)
        case 0x159fe: pc = 88576; if condition(6) { pc = (88576 + Int(sign(byte(88575), 1))) }
        default: fail("Untranslated game address")
        }
    }
}
