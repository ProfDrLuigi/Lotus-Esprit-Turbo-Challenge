// Generated 68000 game labels $018500–$0185FF.
extension LotusMachine {
    func page185() {
        switch pc {
        case 0x18504: pc = 99596; let e0 = resolve(.indexed(8, 6, false, 36), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(99592)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1850c: pc = 99604; let e0 = resolve(.indexed(8, 6, false, 54), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(99600)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18514: pc = 99612; let e0 = resolve(.indexed(8, 6, false, 72), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(99608)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1851c: pc = 99618; let e0 = resolve(.memory(Int(long(99614)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x18522: pc = 99624; let e0 = resolve(.immediate(long(99620)), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x18528: pc = 99632; let e0 = resolve(.immediate(word(99626)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(99628)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18530: pc = 99638; let e0 = resolve(.memory(Int(long(99634)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x18536: pc = 99644; let e0 = resolve(.memory(Int(long(99640)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1853c: pc = 99648; let e0 = resolve(.immediate(word(99646)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x18540: pc = 99652; let e0 = resolve(.immediate(word(99650)), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x18544: pc = 99656; push(99656); pc = (99654 + Int(sign(word(99654), 2)))
        case 0x18548: pc = 99664; let e0 = resolve(.immediate(word(99658)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.memory(Int(long(99660)) & 0xffffff), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x18550: pc = 99666; if condition(7) { pc = (99666 + Int(sign(byte(99665), 1))) }
        case 0x18552: pc = 99672; let e0 = resolve(.memory(Int(long(99668)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x18558: pc = 99678; let e0 = resolve(.immediate(long(99674)), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x1855e: pc = 99686; let e0 = resolve(.immediate(word(99680)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(99682)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18566: pc = 99692; let e0 = resolve(.memory(Int(long(99688)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x1856c: pc = 99698; let e0 = resolve(.memory(Int(long(99694)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x18572: pc = 99702; let e0 = resolve(.immediate(word(99700)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x18576: pc = 99708; let e0 = resolve(.memory(Int(long(99704)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x1857c: pc = 99712; push(99712); pc = (99710 + Int(sign(word(99710), 2)))
        case 0x18580: pc = 99718; let e0 = resolve(.memory(Int(long(99714)) & 0xffffff), 4); r[9] = UInt32(truncatingIfNeeded: e0.address)
        case 0x18586: pc = 99724; let e0 = resolve(.immediate(long(99720)), 4); r[10] = UInt32(bitPattern: sign(get(e0, 4), 4))
        case 0x1858c: pc = 99732; let e0 = resolve(.immediate(word(99726)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(99728)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x18594: pc = 99738; let e0 = resolve(.memory(Int(long(99734)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x1859a: pc = 99744; let e0 = resolve(.memory(Int(long(99740)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x185a0: pc = 99748; let e0 = resolve(.immediate(word(99746)), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x185a4: pc = 99754; let e0 = resolve(.memory(Int(long(99750)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(7), 2); put(e1, value, 2); logic(value, 2)
        case 0x185aa: pc = 99758; push(99758); pc = (99756 + Int(sign(word(99756), 2)))
        case 0x185ae: pc = 99760; pc = Int(pop())
        case 0x185b0: pc = 99764; let e0 = resolve(.immediate(word(99762)), 1); let source = get(e0, 1); let e1 = resolve(.indirect(13), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x185b4: pc = 99768; let e0 = resolve(.immediate(word(99766)), 1); let source = get(e0, 1); let e1 = resolve(.indirect(14), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x185b8: pc = 99772; let e0 = resolve(.immediate(word(99770)), 1); let source = get(e0, 1); let e1 = resolve(.indirect(14), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x185bc: pc = 99776; let e0 = resolve(.immediate(word(99774)), 1); let source = get(e0, 1); let e1 = resolve(.indirect(14), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x185c0: pc = 99780; let e0 = resolve(.immediate(word(99778)), 1); let source = get(e0, 1); let e1 = resolve(.indirect(12), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x185c4: pc = 99784; let e0 = resolve(.immediate(word(99782)), 1); let source = get(e0, 1); let e1 = resolve(.indirect(13), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x185c8: pc = 99788; let e0 = resolve(.immediate(word(99786)), 1); let source = get(e0, 1); let e1 = resolve(.indirect(14), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x185cc: pc = 99792; let e0 = resolve(.immediate(word(99790)), 1); let source = get(e0, 1); let e1 = resolve(.indirect(14), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x185d0: pc = 99796; let e0 = resolve(.immediate(word(99794)), 1); let source = get(e0, 1); let e1 = resolve(.indirect(13), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x185d4: pc = 99800; let e0 = resolve(.immediate(word(99798)), 1); let source = get(e0, 1); let e1 = resolve(.post(8), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        default: fail("Untranslated game address")
        }
    }
}
