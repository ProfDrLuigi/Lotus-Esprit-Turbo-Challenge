// Generated 68000 game labels $015A00–$015AFF.
extension LotusMachine {
    func page15a() {
        switch pc {
        case 0x15a00: pc = 88578; r[1] = UInt32(bitPattern: sign(byte(88577), 1)); logic(r[1], 4)
        case 0x15a02: pc = 88582; let e0 = resolve(.offset(12, Int(sign(word(88580), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x15a06: pc = 88586; let e0 = resolve(.immediate(word(88584)), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x15a0a: pc = 88588; if condition(10) { pc = (88588 + Int(sign(byte(88587), 1))) }
        case 0x15a0c: pc = 88590; r[1] = UInt32(bitPattern: sign(byte(88589), 1)); logic(r[1], 4)
        case 0x15a0e: pc = 88594; let e0 = resolve(.offset(12, Int(sign(word(88592), 2))), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15a12: pc = 88596; let e0 = resolve(.immediate(6), 4); let count = get(e0, 4); let e1 = resolve(.reg(1), 4); let value = shift(get(e1, 4), count, 4, 1); put(e1, value, 4)
        case 0x15a14: pc = 88600; let e0 = resolve(.reg(1), 4); let source = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(88598), 2))), 4); let destination = get(e1, 4); _ = source; _ = destination; let value = subtract(destination, source, 4); put(e1, value, 4)
        case 0x15a18: pc = 88602; if condition(4) { pc = (88602 + Int(sign(byte(88601), 1))) }
        case 0x15a1a: pc = 88610; let e0 = resolve(.immediate(long(88604)), 4); let value = get(e0, 4); let e1 = resolve(.offset(12, Int(sign(word(88608), 2))), 4); put(e1, value, 4); logic(value, 4)
        case 0x15a22: pc = 88612; pc = Int(pop())
        case 0x15a24: pc = 88616; let e0 = resolve(.immediate(word(88614)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x15a26: pc = 88618; let e0 = resolve(.offset(12, Int(sign(word(88616), 2))), 2); logic(get(e0, 2), 2)
        case 0x15a28: pc = 88622; let e0 = resolve(.immediate(word(88618)), 2); let source = get(e0, 2); let e1 = resolve(.offset(8, Int(sign(word(88620), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination | source; put(e1, value, 2); logic(value, 2)
        case 0x15a2a: pc = 88620; if condition(6) { pc = (88620 + Int(sign(byte(88619), 1))) }
        case 0x15a2c: pc = 88626; let e0 = resolve(.immediate(word(88622)), 1); let value = get(e0, 1); let e1 = resolve(.offset(12, Int(sign(word(88624), 2))), 1); put(e1, value, 1); logic(value, 1)
        case 0x15a2e: pc = 88626; let e0 = resolve(.immediate(word(88624)), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x15a32: pc = 88632; let e0 = resolve(.immediate(long(88628)), 4); let source = get(e0, 4); let e1 = resolve(.reg(12), 4); let destination = get(e1, 4); _ = source; _ = destination; _ = subtract(r[12], source, 4, compare: true)
        case 0x15a38: pc = 88634; if condition(6) { pc = (88634 + Int(sign(byte(88633), 1))) }
        case 0x15a3a: pc = 88640; let e0 = resolve(.memory(Int(long(88636)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x15a40: pc = 88646; let e0 = resolve(.memory(Int(long(88642)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x15a46: pc = 88652; let e0 = resolve(.memory(Int(long(88648)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x15a4c: pc = 88656; let e0 = resolve(.offset(12, Int(sign(word(88654), 2))), 2); logic(get(e0, 2), 2)
        case 0x15a50: pc = 88658; if condition(7) { pc = (88658 + Int(sign(byte(88657), 1))) }
        case 0x15a52: pc = 88662; let e0 = resolve(.offset(12, Int(sign(word(88660), 2))), 2); let value = get(e0, 2); let e1 = resolve(.pre(15), 2); put(e1, value, 2); logic(value, 2)
        case 0x15a56: pc = 88664; push(88664); pc = (88664 + Int(sign(byte(88663), 1)))
        case 0x15a58: pc = 88668; let e0 = resolve(.post(15), 2); let value = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(88666), 2))), 2); put(e1, value, 2); logic(value, 2)
        case 0x15a5c: pc = 88674; let e0 = resolve(.immediate(word(88670)), 2); let source = get(e0, 2); let e1 = resolve(.offset(12, Int(sign(word(88672), 2))), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x15a62: pc = 88676; if condition(10) { pc = (88676 + Int(sign(byte(88675), 1))) }
        case 0x15a64: pc = 88680; let e0 = resolve(.offset(12, Int(sign(word(88678), 2))), 2); put(e0, 0, 2); logic(0, 2)
        case 0x15a68: pc = 88682; pc = Int(pop())
        case 0x15a6a: pc = 88686; let e0 = resolve(.offset(12, Int(sign(word(88684), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x15a6e: pc = 88690; let e0 = resolve(.offset(12, Int(sign(word(88688), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x15a72: pc = 88694; let e0 = resolve(.offset(12, Int(sign(word(88692), 2))), 4); let value = get(e0, 4); let e1 = resolve(.reg(4), 4); put(e1, value, 4); logic(value, 4)
        case 0x15a76: pc = 88698; let e0 = resolve(.offset(12, Int(sign(word(88696), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x15a7a: pc = 88702; let e0 = resolve(.offset(12, Int(sign(word(88700), 2))), 2); put(e0, 0, 2); logic(0, 2)
        case 0x15a7e: pc = 88706; let e0 = resolve(.offset(12, Int(sign(word(88704), 2))), 2); logic(get(e0, 2), 2)
        case 0x15a82: pc = 88710; if condition(6) { pc = (88708 + Int(sign(word(88708), 2))) }
        case 0x15a86: pc = 88718; let e0 = resolve(.immediate(word(88712)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(88714)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15a8e: pc = 88720; if condition(6) { pc = (88720 + Int(sign(byte(88719), 1))) }
        case 0x15a90: pc = 88726; let e0 = resolve(.memory(Int(long(88722)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15a96: pc = 88728; let e0 = resolve(.immediate(1), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 0); put(e1, value, 2)
        case 0x15a98: pc = 88730; let e0 = resolve(.reg(6), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x15a9a: pc = 88732; if condition(7) { pc = (88732 + Int(sign(byte(88731), 1))) }
        case 0x15a9c: pc = 88734; if condition(10) { pc = (88734 + Int(sign(byte(88733), 1))) }
        case 0x15a9e: pc = 88736; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 0); put(e1, value, 2)
        case 0x15aa0: pc = 88738; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x15aa2: pc = 88740; pc = (88740 + Int(sign(byte(88739), 1)))
        case 0x15aa4: pc = 88742; let e0 = resolve(.immediate(4), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 0); put(e1, value, 2)
        case 0x15aa6: pc = 88744; let e0 = resolve(.immediate(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15aa8: pc = 88746; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15aaa: pc = 88748; pc = (88748 + Int(sign(byte(88747), 1)))
        case 0x15aac: pc = 88754; let e0 = resolve(.immediate(word(88750)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.offset(12, Int(sign(word(88752), 2))), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x15ab2: pc = 88756; if condition(7) { pc = (88756 + Int(sign(byte(88755), 1))) }
        case 0x15ab4: pc = 88758; let e0 = resolve(.immediate(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x15ab6: pc = 88764; let e0 = resolve(.immediate(word(88760)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.offset(12, Int(sign(word(88762), 2))), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x15abc: pc = 88766; if condition(7) { pc = (88766 + Int(sign(byte(88765), 1))) }
        case 0x15abe: pc = 88768; let e0 = resolve(.immediate(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15ac0: pc = 88770; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15ac2: pc = 88772; setRegister(0, UInt32(bitPattern: sign(r[0], 2)), 4); logic(r[0], 4)
        case 0x15ac4: pc = 88774; r[0] = (r[0] << 16) | (r[0] >> 16); logic(r[0], 4)
        case 0x15ac6: pc = 88776; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x15ac8: pc = 88782; let e0 = resolve(.memory(Int(long(88778)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x15ace: pc = 88784; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x15ad0: pc = 88788; let e0 = resolve(.indexed(8, 2, false, 0), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x15ad4: pc = 88790; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); divide(0, source, signed: false)
        case 0x15ad6: pc = 88794; let e0 = resolve(.immediate(word(88792)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15ada: pc = 88796; if condition(5) { pc = (88796 + Int(sign(byte(88795), 1))) }
        case 0x15adc: pc = 88800; let e0 = resolve(.immediate(word(88798)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15ae0: pc = 88806; let e0 = resolve(.memory(Int(long(88802)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x15ae6: pc = 88814; let e0 = resolve(.immediate(word(88808)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(88810)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15aee: pc = 88816; if condition(6) { pc = (88816 + Int(sign(byte(88815), 1))) }
        case 0x15af0: pc = 88822; let e0 = resolve(.memory(Int(long(88818)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x15af6: pc = 88824; pc = (88824 + Int(sign(byte(88823), 1)))
        case 0x15af8: pc = 88828; let e0 = resolve(.offset(12, Int(sign(word(88826), 2))), 2); logic(get(e0, 2), 2)
        case 0x15afc: pc = 88830; if condition(6) { pc = (88830 + Int(sign(byte(88829), 1))) }
        case 0x15afe: pc = 88836; let e0 = resolve(.immediate(word(88832)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.offset(12, Int(sign(word(88834), 2))), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        default: fail("Untranslated game address")
        }
    }
}
