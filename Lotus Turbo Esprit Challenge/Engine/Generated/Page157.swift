// Generated 68000 game labels $015700–$0157FF.
extension LotusMachine {
    func page157() {
        switch pc {
        case 0x15702: pc = 87812; if condition(7) { pc = (87812 + Int(sign(byte(87811), 1))) }
        case 0x15704: pc = 87818; let e0 = resolve(.memory(Int(long(87814)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1570a: pc = 87824; let e0 = resolve(.memory(Int(long(87820)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x15710: pc = 87826; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x15712: pc = 87828; let e0 = resolve(.indirect(8), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x15714: pc = 87830; if condition(4) { pc = (87830 + Int(sign(byte(87829), 1))) }
        case 0x15716: pc = 87832; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15718: pc = 87834; let e0 = resolve(.immediate(6), 4); let source = get(e0, 4); let e1 = resolve(.reg(8), 4); let destination = get(e1, 4); _ = source; _ = destination; r[8] = r[8] &+ source
        case 0x1571a: pc = 87838; if !condition(1) {     setRegister(7, r[7] &- 1, 2);     if r[7] & 65535 != 65535 { pc = (87836 + Int(sign(word(87836), 2))) } }
        case 0x1571e: pc = 87844; let e0 = resolve(.memory(Int(long(87840)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x15724: pc = 87846; if condition(7) { pc = (87846 + Int(sign(byte(87845), 1))) }
        case 0x15726: pc = 87848; let e0 = resolve(.reg(1), 4); let source = get(e0, 4); let e1 = resolve(.reg(0), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4, compare: true); _ = value
        case 0x15728: pc = 87850; if condition(4) { pc = (87850 + Int(sign(byte(87849), 1))) }
        case 0x1572a: pc = 87852; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1572c: pc = 87854; pc = Int(pop())
        case 0x1572e: pc = 87860; let e0 = resolve(.memory(Int(long(87856)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x15734: pc = 87862; if condition(7) { pc = (87862 + Int(sign(byte(87861), 1))) }
        case 0x15736: pc = 87864; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.indirect(8), 2); put(e1, value, 2); logic(value, 2)
        case 0x15738: pc = 87866; pc = Int(pop())
        case 0x1573a: pc = 87872; let e0 = resolve(.memory(Int(long(87868)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x15740: pc = 87876; let e0 = resolve(.offset(12, Int(sign(word(87874), 2))), 4); let value = get(e0, 4); let e1 = resolve(.reg(6), 4); put(e1, value, 4); logic(value, 4)
        case 0x15744: pc = 87882; let e0 = resolve(.immediate(long(87878)), 4); let source = get(e0, 4); let e1 = resolve(.reg(6), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = add(destination, source, 4); put(e1, value, 4)
        case 0x1574a: pc = 87886; let e0 = resolve(.immediate(word(87884)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(6), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x1574e: pc = 87890; if condition(6) { pc = (87888 + Int(sign(word(87888), 2))) }
        case 0x15752: pc = 87892; let e0 = resolve(.reg(6), 4); let value = get(e0, 4); let e1 = resolve(.reg(7), 4); put(e1, value, 4); logic(value, 4)
        case 0x15754: pc = 87894; r[7] = (r[7] << 16) | (r[7] >> 16); logic(r[7], 4)
        case 0x15756: pc = 87896; setRegister(7, UInt32(bitPattern: sign(r[7], 2)), 4); logic(r[7], 4)
        case 0x15758: pc = 87902; let e0 = resolve(.memory(Int(long(87898)) & 0xffffff), 2); let source = get(e0, 2); divide(7, source, signed: false)
        case 0x1575e: pc = 87904; r[7] = (r[7] << 16) | (r[7] >> 16); logic(r[7], 4)
        case 0x15760: pc = 87906; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(7), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x15762: pc = 87908; let e0 = resolve(.immediate(2), 4); let count = get(e0, 4); let e1 = resolve(.reg(6), 2); let value = shift(get(e1, 2), count, 2, 7); put(e1, value, 2)
        case 0x15764: pc = 87912; let e0 = resolve(.immediate(word(87910)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x15768: pc = 87914; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1576a: pc = 87916; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(7), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1576c: pc = 87922; let e0 = resolve(.memory(Int(long(87918)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x15772: pc = 87926; let e0 = resolve(.indexed(8, 7, false, 2), 1); let value = get(e0, 1); let e1 = resolve(.reg(3), 1); put(e1, value, 1); logic(value, 1)
        case 0x15776: pc = 87930; if condition(7) { pc = (87928 + Int(sign(word(87928), 2))) }
        case 0x1577a: pc = 87934; let e0 = resolve(.immediate(word(87932)), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x1577e: pc = 87936; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x15780: pc = 87940; let e0 = resolve(.immediate(word(87938)), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x15784: pc = 87944; let e0 = resolve(.indexed(8, 7, false, 3), 1); let value = get(e0, 1); let e1 = resolve(.reg(2), 1); put(e1, value, 1); logic(value, 1)
        case 0x15788: pc = 87946; setRegister(2, UInt32(bitPattern: sign(r[2], 1)), 2); logic(r[2], 2)
        case 0x1578a: pc = 87948; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(2), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x1578c: pc = 87952; let e0 = resolve(.offset(12, Int(sign(word(87950), 2))), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x15790: pc = 87958; let e0 = resolve(.memory(Int(long(87954)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x15796: pc = 87962; let e0 = resolve(.indexed(8, 3, false, 0), 1); let value = get(e0, 1); let e1 = resolve(.reg(3), 1); put(e1, value, 1); logic(value, 1)
        case 0x1579a: pc = 87966; if condition(6) { pc = (87964 + Int(sign(word(87964), 2))) }
        case 0x1579e: pc = 87970; let e0 = resolve(.immediate(word(87968)), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x157a2: pc = 87974; let e0 = resolve(.immediate(word(87972)), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x157a6: pc = 87978; let e0 = resolve(.immediate(word(87976)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x157aa: pc = 87982; let e0 = resolve(.offset(12, Int(sign(word(87980), 2))), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x157ae: pc = 87984; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x157b0: pc = 87988; if condition(4) { pc = (87986 + Int(sign(word(87986), 2))) }
        case 0x157b4: pc = 87990; let e0 = resolve(.reg(3), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x157b6: pc = 87994; if condition(5) { pc = (87992 + Int(sign(word(87992), 2))) }
        case 0x157ba: pc = 87998; let e0 = resolve(.immediate(word(87996)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x157be: pc = 88002; let e0 = resolve(.offset(12, Int(sign(word(88000), 2))), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x157c2: pc = 88004; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x157c4: pc = 88008; if condition(4) { pc = (88006 + Int(sign(word(88006), 2))) }
        case 0x157c8: pc = 88010; let e0 = resolve(.reg(3), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x157ca: pc = 88014; if condition(5) { pc = (88012 + Int(sign(word(88012), 2))) }
        case 0x157ce: pc = 88018; pc = (88016 + Int(sign(word(88016), 2)))
        case 0x157d2: pc = 88022; let e0 = resolve(.immediate(word(88020)), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x157d6: pc = 88026; let e0 = resolve(.immediate(word(88024)), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x157da: pc = 88028; let e0 = resolve(.immediate(1), 4); let count = get(e0, 4); let e1 = resolve(.reg(3), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x157dc: pc = 88030; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.reg(4), 2); put(e1, value, 2); logic(value, 2)
        case 0x157de: pc = 88032; let e0 = resolve(.reg(4), 2); let value = subtract(0, get(e0, 2), 2, extend: false); put(e0, value, 2)
        case 0x157e0: pc = 88034; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x157e2: pc = 88036; if condition(4) { pc = (88036 + Int(sign(byte(88035), 1))) }
        case 0x157e4: pc = 88038; let e0 = resolve(.reg(3), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x157e6: pc = 88042; if condition(4) { pc = (88040 + Int(sign(word(88040), 2))) }
        case 0x157ea: pc = 88044; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x157ec: pc = 88048; let e0 = resolve(.immediate(word(88046)), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x157f0: pc = 88050; if condition(7) { pc = (88050 + Int(sign(byte(88049), 1))) }
        case 0x157f2: pc = 88054; let e0 = resolve(.immediate(word(88052)), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x157f6: pc = 88056; if condition(6) { pc = (88056 + Int(sign(byte(88055), 1))) }
        case 0x157f8: pc = 88060; let e0 = resolve(.offset(12, Int(sign(word(88058), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x157fc: pc = 88064; let e0 = resolve(.immediate(word(88062)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        default: fail("Untranslated game address")
        }
    }
}
