// Generated 68000 game labels $019200–$0192FF.
extension LotusMachine {
    func page192() {
        switch pc {
        case 0x19200: pc = 102916; let e0 = resolve(.immediate(word(102914)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(0), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x19204: pc = 102918; if condition(7) { pc = (102918 + Int(sign(byte(102917), 1))) }
        case 0x19206: pc = 102922; let e0 = resolve(.immediate(word(102920)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(1), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0; put(e1, value | flag, 4)
        case 0x1920a: pc = 102926; let e0 = resolve(.immediate(word(102924)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(0), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x1920e: pc = 102928; if condition(7) { pc = (102928 + Int(sign(byte(102927), 1))) }
        case 0x19210: pc = 102932; let e0 = resolve(.immediate(word(102930)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(1), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0; put(e1, value | flag, 4)
        case 0x19214: pc = 102934; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x19216: pc = 102936; let e0 = resolve(.immediate(1), 4); let count = get(e0, 4); let e1 = resolve(.reg(2), 2); let value = shift(get(e1, 2), count, 2, 1); put(e1, value, 2)
        case 0x19218: pc = 102938; let e0 = resolve(.reg(2), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination ^ source; put(e1, value, 2); logic(value, 2)
        case 0x1921a: pc = 102942; let e0 = resolve(.immediate(word(102940)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(0), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x1921e: pc = 102944; if condition(7) { pc = (102944 + Int(sign(byte(102943), 1))) }
        case 0x19220: pc = 102948; let e0 = resolve(.immediate(word(102946)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(1), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0; put(e1, value | flag, 4)
        case 0x19224: pc = 102952; let e0 = resolve(.immediate(word(102950)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(0), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x19228: pc = 102954; if condition(7) { pc = (102954 + Int(sign(byte(102953), 1))) }
        case 0x1922a: pc = 102958; let e0 = resolve(.immediate(word(102956)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(1), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0; put(e1, value | flag, 4)
        case 0x1922e: pc = 102966; let e0 = resolve(.immediate(word(102960)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.memory(Int(long(102962)) & 0xffffff), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x19236: pc = 102968; if condition(6) { pc = (102968 + Int(sign(byte(102967), 1))) }
        case 0x19238: pc = 102972; let e0 = resolve(.immediate(word(102970)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(1), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0; put(e1, value | flag, 4)
        case 0x1923c: pc = 102974; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.reg(5), 2); put(e1, value, 2); logic(value, 2)
        case 0x1923e: pc = 102980; let e0 = resolve(.reg(5), 1); let value = get(e0, 1); let e1 = resolve(.memory(Int(long(102976)) & 0xffffff), 1); put(e1, value, 1); logic(value, 1)
        case 0x19244: pc = 102986; let e0 = resolve(.memory(Int(long(102982)) & 0xffffff), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x1924a: pc = 102992; let e0 = resolve(.memory(Int(long(102988)) & 0xffffff), 1); let value = get(e0, 1); let e1 = resolve(.reg(1), 1); put(e1, value, 1); logic(value, 1)
        case 0x19250: pc = 102994; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.reg(2), 1); put(e1, value, 1); logic(value, 1)
        case 0x19252: pc = 102996; let e0 = resolve(.reg(1), 1); let source = get(e0, 1); let e1 = resolve(.reg(2), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination ^ source; put(e1, value, 1); logic(value, 1)
        case 0x19254: pc = 102998; let e0 = resolve(.reg(1), 1); let source = get(e0, 1); let e1 = resolve(.reg(2), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination & source; put(e1, value, 1); logic(value, 1)
        case 0x19256: pc = 103004; let e0 = resolve(.reg(1), 1); let value = get(e0, 1); let e1 = resolve(.memory(Int(long(103000)) & 0xffffff), 1); put(e1, value, 1); logic(value, 1)
        case 0x1925c: pc = 103010; let e0 = resolve(.reg(2), 1); let value = get(e0, 1); let e1 = resolve(.memory(Int(long(103006)) & 0xffffff), 1); put(e1, value, 1); logic(value, 1)
        case 0x19262: pc = 103016; let e0 = resolve(.memory(Int(long(103012)) & 0xffffff), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x19268: pc = 103022; let e0 = resolve(.memory(Int(long(103018)) & 0xffffff), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x1926e: pc = 103028; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.memory(Int(long(103024)) & 0xffffff), 1); put(e1, value, 1); logic(value, 1)
        case 0x19274: pc = 103034; let e0 = resolve(.memory(Int(long(103030)) & 0xffffff), 1); let value = get(e0, 1); let e1 = resolve(.reg(0), 1); put(e1, value, 1); logic(value, 1)
        case 0x1927a: pc = 103040; let e0 = resolve(.memory(Int(long(103036)) & 0xffffff), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x19280: pc = 103046; let e0 = resolve(.reg(0), 1); let value = get(e0, 1); let e1 = resolve(.memory(Int(long(103042)) & 0xffffff), 1); put(e1, value, 1); logic(value, 1)
        case 0x19286: pc = 103054; let e0 = resolve(.immediate(word(103048)), 2); let source = get(e0, 2); let e1 = resolve(.memory(Int(long(103050)) & 0xffffff), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x1928e: pc = 103058; if condition(6) { pc = (103056 + Int(sign(word(103056), 2))) }
        case 0x19292: pc = 103064; let e0 = resolve(.memory(Int(long(103060)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x19298: pc = 103072; let e0 = resolve(.immediate(word(103066)), 4); let bit = get(e0, 4) % 8; let e1 = resolve(.memory(Int(long(103068)) & 0xffffff), 1); let value = get(e1, 1); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x192a0: pc = 103074; if condition(6) { pc = (103074 + Int(sign(byte(103073), 1))) }
        case 0x192a2: pc = 103082; let e0 = resolve(.immediate(word(103076)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(103078)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x192aa: pc = 103088; let e0 = resolve(.memory(Int(long(103084)) & 0xffffff), 2); put(e0, 0, 2); logic(0, 2)
        case 0x192b0: pc = 103092; let e0 = resolve(.offset(14, Int(sign(word(103090), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x192b4: pc = 103096; let e0 = resolve(.immediate(word(103094)), 4); let bit = get(e0, 4) % 32; let e1 = resolve(.reg(0), 4); let value = get(e1, 4); let flag: UInt32 = 1 << bit; z = value & flag == 0
        case 0x192b8: pc = 103098; if condition(6) { pc = (103098 + Int(sign(byte(103097), 1))) }
        case 0x192ba: pc = 103106; let e0 = resolve(.immediate(word(103100)), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(103102)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x192c2: pc = 103110; let e0 = resolve(.offset(14, Int(sign(word(103108), 2))), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x192c6: pc = 103112; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.reg(1), 2); put(e1, value, 2); logic(value, 2)
        case 0x192c8: pc = 103114; let e0 = resolve(.immediate(8), 4); let count = get(e0, 4); let e1 = resolve(.reg(1), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x192ca: pc = 103120; let e0 = resolve(.memory(Int(long(103116)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(2), 2); put(e1, value, 2); logic(value, 2)
        case 0x192d0: pc = 103122; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(3), 2); put(e1, value, 2); logic(value, 2)
        case 0x192d2: pc = 103124; let e0 = resolve(.immediate(8), 4); let count = get(e0, 4); let e1 = resolve(.reg(3), 2); let value = shift(get(e1, 2), count, 2, 2); put(e1, value, 2)
        case 0x192d4: pc = 103130; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(103126)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x192da: pc = 103132; let e0 = resolve(.reg(2), 1); let source = get(e0, 1); let e1 = resolve(.reg(0), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1); put(e1, value, 1)
        case 0x192dc: pc = 103134; let e0 = resolve(.reg(3), 1); let source = get(e0, 1); let e1 = resolve(.reg(1), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = subtract(destination, source, 1); put(e1, value, 1)
        case 0x192de: pc = 103136; setRegister(0, UInt32(bitPattern: sign(r[0], 1)), 2); logic(r[0], 2)
        case 0x192e0: pc = 103138; setRegister(1, UInt32(bitPattern: sign(r[1], 1)), 2); logic(r[1], 2)
        case 0x192e2: pc = 103140; let e0 = resolve(.immediate(1), 4); let count = get(e0, 4); let e1 = resolve(.reg(0), 2); let value = shift(get(e1, 2), count, 2, 0); put(e1, value, 2)
        case 0x192e4: pc = 103142; let e0 = resolve(.immediate(1), 4); let count = get(e0, 4); let e1 = resolve(.reg(1), 2); let value = shift(get(e1, 2), count, 2, 0); put(e1, value, 2)
        case 0x192e6: pc = 103148; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(103144)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x192ec: pc = 103154; let e0 = resolve(.reg(1), 2); let value = get(e0, 2); let e1 = resolve(.memory(Int(long(103150)) & 0xffffff), 2); put(e1, value, 2); logic(value, 2)
        case 0x192f2: pc = 103160; let e0 = resolve(.memory(Int(long(103156)) & 0xffffff), 2); let value = get(e0, 2); let e1 = resolve(.reg(0), 2); put(e1, value, 2); logic(value, 2)
        case 0x192f8: pc = 103166; let e0 = resolve(.memory(Int(long(103162)) & 0xffffff), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x192fe: pc = 103170; let e0 = resolve(.immediate(word(103168)), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        default: fail("Untranslated game address")
        }
    }
}
