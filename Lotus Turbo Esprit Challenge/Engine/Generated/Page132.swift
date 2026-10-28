// Generated 68000 game labels $013200–$0132FF.
extension LotusMachine {
    func page132() {
        switch pc {
        case 0x13200: pc = 78340; if condition(7) { pc = (78338 + Int(sign(word(78338), 2))) }
        case 0x13204: pc = 78348; let e0 = resolve(.immediate(word(78342)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(78344)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1320c: pc = 78352; if condition(7) { pc = (78350 + Int(sign(word(78350), 2))) }
        case 0x13210: pc = 78360; let e0 = resolve(.immediate(word(78354)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(78356)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x13218: pc = 78364; if condition(7) { pc = (78362 + Int(sign(word(78362), 2))) }
        case 0x1321c: pc = 78372; let e0 = resolve(.immediate(word(78366)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(78368)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x13224: pc = 78376; if condition(7) { pc = (78374 + Int(sign(word(78374), 2))) }
        case 0x13228: pc = 78378; pc = Int(pop())
        case 0x1322a: pc = 78384; let e0 = resolve(.memory(Int(long(78380)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13230: pc = 78390; let e0 = resolve(.memory(Int(long(78386)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13236: pc = 78392; r[0] = UInt32(bitPattern: sign(byte(78391), 1)); logic(r[0], 4)
        case 0x13238: pc = 78396; push(78396); pc = (78394 + Int(sign(word(78394), 2)))
        case 0x1323c: pc = 78398; pc = Int(pop())
        case 0x1323e: pc = 78404; let e0 = resolve(.memory(Int(long(78400)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13244: pc = 78410; let e0 = resolve(.memory(Int(long(78406)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1324a: pc = 78412; r[0] = UInt32(bitPattern: sign(byte(78411), 1)); logic(r[0], 4)
        case 0x1324c: pc = 78416; push(78416); pc = (78414 + Int(sign(word(78414), 2)))
        case 0x13250: pc = 78418; pc = Int(pop())
        case 0x13252: pc = 78424; let e0 = resolve(.memory(Int(long(78420)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13258: pc = 78430; let e0 = resolve(.memory(Int(long(78426)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1325e: pc = 78432; r[0] = UInt32(bitPattern: sign(byte(78431), 1)); logic(r[0], 4)
        case 0x13260: pc = 78436; push(78436); pc = (78434 + Int(sign(word(78434), 2)))
        case 0x13264: pc = 78438; pc = Int(pop())
        case 0x13266: pc = 78444; let e0 = resolve(.memory(Int(long(78440)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x1326c: pc = 78450; let e0 = resolve(.memory(Int(long(78446)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13272: pc = 78454; push(78454); pc = (78452 + Int(sign(word(78452), 2)))
        case 0x13276: pc = 78460; let e0 = resolve(.memory(Int(long(78456)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1327c: pc = 78464; let e0 = resolve(.immediate(word(78462)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x13280: pc = 78466; if condition(4) { pc = (78466 + Int(sign(byte(78465), 1))) }
        case 0x13282: pc = 78472; let e0 = resolve(.memory(Int(long(78468)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13288: pc = 78476; let e0 = resolve(.indexed(8, 0, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x1328c: pc = 78480; let e0 = resolve(.immediate(word(78478)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x13290: pc = 78482; if condition(7) { pc = (78482 + Int(sign(byte(78481), 1))) }
        case 0x13292: pc = 78484; if condition(4) { pc = (78484 + Int(sign(byte(78483), 1))) }
        case 0x13294: pc = 78488; let e0 = resolve(.immediate(word(78486)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x13298: pc = 78490; if condition(7) { pc = (78490 + Int(sign(byte(78489), 1))) }
        case 0x1329a: pc = 78494; let e0 = resolve(.immediate(word(78492)), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1329e: pc = 78496; if condition(4) { pc = (78496 + Int(sign(byte(78495), 1))) }
        case 0x132a0: pc = 78500; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.indexed(9, 1, false, 0), 1); put(e1, value, 1); logic(value, 1)
        case 0x132a4: pc = 78506; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(78502)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x132aa: pc = 78508; pc = (78508 + Int(sign(byte(78507), 1)))
        case 0x132ac: pc = 78510; let e0 = resolve(.reg(1), 2); logic(get(e0, 2), 2)
        case 0x132ae: pc = 78512; if condition(7) { pc = (78512 + Int(sign(byte(78511), 1))) }
        case 0x132b0: pc = 78518; let e0 = resolve(.immediate(word(78514)), 1); let value = get(e0, 1); let e1 = resolve(.indexed(9, 1, false, -1), 1); put(e1, value, 1); logic(value, 1)
        case 0x132b6: pc = 78524; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(78520)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x132bc: pc = 78528; push(78528); pc = (78526 + Int(sign(word(78526), 2)))
        case 0x132c0: pc = 78530; pc = Int(pop())
        case 0x132c2: pc = 78536; let e0 = resolve(.memory(Int(long(78532)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x132c8: pc = 78542; let e0 = resolve(.memory(Int(long(78538)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x132ce: pc = 78546; push(78546); pc = (78544 + Int(sign(word(78544), 2)))
        case 0x132d2: pc = 78552; let e0 = resolve(.memory(Int(long(78548)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x132d8: pc = 78556; let e0 = resolve(.immediate(word(78554)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x132dc: pc = 78558; if condition(4) { pc = (78558 + Int(sign(byte(78557), 1))) }
        case 0x132de: pc = 78564; let e0 = resolve(.memory(Int(long(78560)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x132e4: pc = 78568; let e0 = resolve(.indexed(8, 0, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x132e8: pc = 78572; let e0 = resolve(.immediate(word(78570)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1, compare: true); _ = value
        case 0x132ec: pc = 78574; if condition(7) { pc = (78574 + Int(sign(byte(78573), 1))) }
        case 0x132ee: pc = 78576; if condition(4) { pc = (78576 + Int(sign(byte(78575), 1))) }
        case 0x132f0: pc = 78580; let e0 = resolve(.immediate(word(78578)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x132f4: pc = 78582; if condition(7) { pc = (78582 + Int(sign(byte(78581), 1))) }
        case 0x132f6: pc = 78586; let e0 = resolve(.immediate(word(78584)), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x132fa: pc = 78588; if condition(4) { pc = (78588 + Int(sign(byte(78587), 1))) }
        case 0x132fc: pc = 78592; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.indexed(9, 1, false, 0), 1); put(e1, value, 1); logic(value, 1)
        default: fail("Untranslated game address")
        }
    }
}
