// Generated 68000 game labels $013300–$0133FF.
extension LotusMachine {
    func page133() {
        switch pc {
        case 0x13300: pc = 78598; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(78594)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x13306: pc = 78600; pc = (78600 + Int(sign(byte(78599), 1)))
        case 0x13308: pc = 78602; let e0 = resolve(.reg(1), 2); logic(get(e0, 2), 2)
        case 0x1330a: pc = 78604; if condition(7) { pc = (78604 + Int(sign(byte(78603), 1))) }
        case 0x1330c: pc = 78610; let e0 = resolve(.immediate(word(78606)), 1); let value = get(e0, 1); let e1 = resolve(.indexed(9, 1, false, -1), 1); put(e1, value, 1); logic(value, 1)
        case 0x13312: pc = 78616; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(78612)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x13318: pc = 78620; push(78620); pc = (78618 + Int(sign(word(78618), 2)))
        case 0x1331c: pc = 78622; pc = Int(pop())
        case 0x1331e: pc = 78628; let e0 = resolve(.memory(Int(long(78624)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13324: pc = 78634; let e0 = resolve(.memory(Int(long(78630)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1332a: pc = 78636; r[0] = UInt32(bitPattern: sign(byte(78635), 1)); logic(r[0], 4)
        case 0x1332c: pc = 78638; push(78638); pc = (78638 + Int(sign(byte(78637), 1)))
        case 0x1332e: pc = 78640; pc = Int(pop())
        case 0x13330: pc = 78646; let e0 = resolve(.memory(Int(long(78642)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13336: pc = 78652; let e0 = resolve(.memory(Int(long(78648)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1333c: pc = 78654; r[0] = UInt32(bitPattern: sign(byte(78653), 1)); logic(r[0], 4)
        case 0x1333e: pc = 78656; push(78656); pc = (78656 + Int(sign(byte(78655), 1)))
        case 0x13340: pc = 78658; pc = Int(pop())
        case 0x13342: pc = 78664; let e0 = resolve(.memory(Int(long(78660)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13348: pc = 78670; let e0 = resolve(.memory(Int(long(78666)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1334e: pc = 78672; r[0] = UInt32(bitPattern: sign(byte(78671), 1)); logic(r[0], 4)
        case 0x13350: pc = 78674; push(78674); pc = (78674 + Int(sign(byte(78673), 1)))
        case 0x13352: pc = 78676; pc = Int(pop())
        case 0x13354: pc = 78682; let e0 = resolve(.memory(Int(long(78678)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1335a: pc = 78688; let e0 = resolve(.memory(Int(long(78684)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x13360: pc = 78690; r[0] = UInt32(bitPattern: sign(byte(78689), 1)); logic(r[0], 4)
        case 0x13362: pc = 78692; push(78692); pc = (78692 + Int(sign(byte(78691), 1)))
        case 0x13364: pc = 78694; pc = Int(pop())
        case 0x13366: pc = 78702; let e0 = resolve(.immediate(word(78696)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.memory(Int(long(78698)) & 0xffffff), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x1336e: pc = 78704; if condition(6) { pc = (78704 + Int(sign(byte(78703), 1))) }
        case 0x13370: pc = 78712; let e0 = resolve(.immediate(word(78706)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.memory(Int(long(78708)) & 0xffffff), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x13378: pc = 78714; if condition(6) { pc = (78714 + Int(sign(byte(78713), 1))) }
        case 0x1337a: pc = 78716; pc = Int(pop())
        case 0x1337c: pc = 78718; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.indirect(8), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1337e: pc = 78720; let e0 = resolve(.indirect(8), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x13380: pc = 78722; if condition(6) { pc = (78722 + Int(sign(byte(78721), 1))) }
        case 0x13382: pc = 78724; let e0 = resolve(.indirect(8), 2); put(e0, 0, 2); logic(0, 2)
        case 0x13384: pc = 78726; let e0 = resolve(.indirect(9), 4); push(78726); pc = e0.address
        case 0x13386: pc = 78728; pc = Int(pop())
        case 0x13388: pc = 78730; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.indirect(8), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x1338a: pc = 78732; let e0 = resolve(.indirect(8), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x1338c: pc = 78736; let e0 = resolve(.immediate(word(78734)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x13390: pc = 78738; if condition(6) { pc = (78738 + Int(sign(byte(78737), 1))) }
        case 0x13392: pc = 78740; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x13394: pc = 78742; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.indirect(8), 2); put(e1, value, 2); logic(value, 2)
        case 0x13396: pc = 78744; let e0 = resolve(.indirect(9), 4); push(78744); pc = e0.address
        case 0x13398: pc = 78746; pc = Int(pop())
        case 0x1339a: pc = 78750; moveMultiple(1408, Int(r[15]), 4, load: false, addressRegister: 15, predecrement: true, postincrement: false)
        case 0x1339e: pc = 78752; let e0 = resolve(.reg(9), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x133a0: pc = 78754; let e0 = resolve(.reg(2), 2); put(e0, 0, 2); logic(0, 2)
        case 0x133a2: pc = 78756; r[7] = UInt32(bitPattern: sign(byte(78755), 1)); logic(r[7], 4)
        case 0x133a4: pc = 78758; let e0 = resolve(.post(10), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x133a6: pc = 78762; let e0 = resolve(.immediate(word(78760)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x133aa: pc = 78768; let e0 = resolve(.memory(Int(long(78764)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x133b0: pc = 78772; let e0 = resolve(.indexed(8, 0, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x133b4: pc = 78774; setRegister(0, UInt32(bitPattern: sign(r[0], 1)), 2); logic(r[0], 2)
        case 0x133b6: pc = 78780; let e0 = resolve(.memory(Int(long(78776)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x133bc: pc = 78784; let e0 = resolve(.indexed(8, 0, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x133c0: pc = 78786; setRegister(0, UInt32(bitPattern: sign(r[0], 1)), 2); logic(r[0], 2)
        case 0x133c2: pc = 78788; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x133c4: pc = 78790; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x133c6: pc = 78794; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (78792 + Int(sign(word(78792), 2))) } }
        case 0x133ca: pc = 78798; moveMultiple(1408, Int(r[15]), 4, load: true, addressRegister: 15, predecrement: false, postincrement: true)
        case 0x133ce: pc = 78800; pc = Int(pop())
        case 0x133d0: pc = 78806; let e0 = resolve(.memory(Int(long(78802)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x133d6: pc = 78812; let e0 = resolve(.memory(Int(long(78808)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x133dc: pc = 78820; let e0 = resolve(.indexed(9, 0, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.memory(Int(long(78816)) & 0xffffff), 1); put(e1, value, 1); logic(value, 1)
        case 0x133e4: pc = 78828; let e0 = resolve(.immediate(word(78822)), 1); let value = get(e0, 1); let e1 = resolve(.memory(Int(long(78824)) & 0xffffff), 1); put(e1, value, 1); logic(value, 1)
        case 0x133ec: pc = 78834; let e0 = resolve(.memory(Int(long(78830)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x133f2: pc = 78838; push(78838); pc = (78836 + Int(sign(word(78836), 2)))
        case 0x133f6: pc = 78840; pc = Int(pop())
        case 0x133f8: pc = 78846; let e0 = resolve(.memory(Int(long(78842)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x133fe: pc = 78852; let e0 = resolve(.memory(Int(long(78848)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        default: fail("Untranslated game address")
        }
    }
}
