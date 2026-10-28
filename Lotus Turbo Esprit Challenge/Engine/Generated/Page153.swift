// Generated 68000 game labels $015300–$0153FF.
extension LotusMachine {
    func page153() {
        switch pc {
        case 0x15300: pc = 86790; let e0 = resolve(.memory(Int(long(86786)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x15306: pc = 86792; if condition(7) { pc = (86792 + Int(sign(byte(86791), 1))) }
        case 0x15308: pc = 86796; push(86796); pc = (86794 + Int(sign(word(86794), 2)))
        case 0x1530c: pc = 86802; let e0 = resolve(.memory(Int(long(86798)) & 0xffffff), 4); r[12] = UInt32(truncatingIfNeeded: e0.address)
        case 0x15312: pc = 86810; let e0 = resolve(.immediate(word(86804)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(86806)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x1531a: pc = 86816; let e0 = resolve(.memory(Int(long(86812)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x15320: pc = 86820; if condition(6) { pc = (86818 + Int(sign(word(86818), 2))) }
        case 0x15324: pc = 86826; let e0 = resolve(.memory(Int(long(86822)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x1532a: pc = 86830; push(86830); pc = (86828 + Int(sign(word(86828), 2)))
        case 0x1532e: pc = 86836; let e0 = resolve(.memory(Int(long(86832)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15334: pc = 86842; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(86838)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1533a: pc = 86846; push(86846); pc = (86844 + Int(sign(word(86844), 2)))
        case 0x1533e: pc = 86850; push(86850); pc = (86848 + Int(sign(word(86848), 2)))
        case 0x15342: pc = 86854; push(86854); pc = (86852 + Int(sign(word(86852), 2)))
        case 0x15346: pc = 86860; let e0 = resolve(.memory(Int(long(86856)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x1534c: pc = 86864; push(86864); pc = (86862 + Int(sign(word(86862), 2)))
        case 0x15350: pc = 86870; let e0 = resolve(.memory(Int(long(86866)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15356: pc = 86876; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(86872)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x1535c: pc = 86880; let e0 = resolve(.immediate(word(86878)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15360: pc = 86886; let e0 = resolve(.memory(Int(long(86882)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x15366: pc = 86890; push(86890); pc = (86888 + Int(sign(word(86888), 2)))
        case 0x1536a: pc = 86898; let e0 = resolve(.immediate(word(86892)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(86894)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x15372: pc = 86900; if condition(7) { pc = (86900 + Int(sign(byte(86899), 1))) }
        case 0x15374: pc = 86904; push(86904); pc = (86902 + Int(sign(word(86902), 2)))
        case 0x15378: pc = 86908; let e0 = resolve(.immediate(word(86906)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x1537c: pc = 86914; let e0 = resolve(.memory(Int(long(86910)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x15382: pc = 86918; push(86918); pc = (86916 + Int(sign(word(86916), 2)))
        case 0x15386: pc = 86924; let e0 = resolve(.memory(Int(long(86920)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x1538c: pc = 86926; if condition(7) { pc = (86926 + Int(sign(byte(86925), 1))) }
        case 0x1538e: pc = 86930; push(86930); pc = (86928 + Int(sign(word(86928), 2)))
        case 0x15392: pc = 86934; let e0 = resolve(.immediate(word(86932)), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x15396: pc = 86940; let e0 = resolve(.memory(Int(long(86936)) & 0xffffff), 4); r[8] = UInt32(truncatingIfNeeded: e0.address)
        case 0x1539c: pc = 86944; push(86944); pc = (86942 + Int(sign(word(86942), 2)))
        case 0x153a0: pc = 86948; push(86948); pc = (86946 + Int(sign(word(86946), 2)))
        case 0x153a4: pc = 86952; push(86952); pc = (86950 + Int(sign(word(86950), 2)))
        case 0x153a8: pc = 86954; pc = (86954 + Int(sign(byte(86953), 1)))
        case 0x153aa: pc = 86958; push(86958); pc = (86956 + Int(sign(word(86956), 2)))
        case 0x153ae: pc = 86962; push(86962); pc = (86960 + Int(sign(word(86960), 2)))
        case 0x153b2: pc = 86968; let e0 = resolve(.memory(Int(long(86964)) & 0xffffff), 4); r[12] = UInt32(truncatingIfNeeded: e0.address)
        case 0x153b8: pc = 86978; let e0 = resolve(.memory(Int(long(86970)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(86974)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x153c2: pc = 86984; let e0 = resolve(.memory(Int(long(86980)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x153c8: pc = 86988; if condition(7) { pc = (86986 + Int(sign(word(86986), 2))) }
        case 0x153cc: pc = 86994; let e0 = resolve(.memory(Int(long(86990)) & 0xffffff), 2); logic(get(e0, 2), 2)
        case 0x153d2: pc = 86996; if condition(6) { pc = (86996 + Int(sign(byte(86995), 1))) }
        case 0x153d4: pc = 87002; let e0 = resolve(.memory(Int(long(86998)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x153da: pc = 87006; push(87006); pc = (87004 + Int(sign(word(87004), 2)))
        case 0x153de: pc = 87012; let e0 = resolve(.memory(Int(long(87008)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x153e4: pc = 87018; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(87014)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x153ea: pc = 87022; push(87022); pc = (87020 + Int(sign(word(87020), 2)))
        case 0x153ee: pc = 87026; push(87026); pc = (87024 + Int(sign(word(87024), 2)))
        case 0x153f2: pc = 87030; push(87030); pc = (87028 + Int(sign(word(87028), 2)))
        case 0x153f6: pc = 87036; let e0 = resolve(.memory(Int(long(87032)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x153fc: pc = 87040; push(87040); pc = (87038 + Int(sign(word(87038), 2)))
        default: fail("Untranslated game address")
        }
    }
}
