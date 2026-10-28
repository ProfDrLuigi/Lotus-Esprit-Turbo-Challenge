// Generated 68000 game labels $016B00–$016BFF.
extension LotusMachine {
    func page16b() {
        switch pc {
        case 0x16b00: pc = 92930; r[6] = (r[6] << 16) | (r[6] >> 16); logic(r[6], 4)
        case 0x16b02: pc = 92932; let e0 = resolve(.post(12), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16b04: pc = 92934; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16b06: pc = 92938; let e0 = resolve(.immediate(word(92936)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16b0a: pc = 92942; if condition(4) { pc = (92940 + Int(sign(word(92940), 2))) }
        case 0x16b0e: pc = 92944; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16b10: pc = 92946; if condition(10) { pc = (92946 + Int(sign(byte(92945), 1))) }
        case 0x16b12: pc = 92948; let e0 = resolve(.reg(6), 1); let value = get(e0, 1); let e1 = resolve(.reg(7), 1); put(e1, value, 1); logic(value, 1)
        case 0x16b14: pc = 92950; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16b16: pc = 92952; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16b18: pc = 92954; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16b1a: pc = 92956; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x16b1c: pc = 92958; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16b1e: pc = 92960; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16b20: pc = 92962; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16b22: pc = 92966; let e0 = resolve(.immediate(word(92964)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x16b26: pc = 92968; let e0 = resolve(.indirect(8), 1); let source = get(e0, 1); let e1 = resolve(.reg(6), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x16b28: pc = 92970; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16b2a: pc = 92972; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16b2c: pc = 92974; let e0 = resolve(.post(11), 2); let source = get(e0, 2); r[6] = UInt32(bitPattern: sign(r[6], 2) &* sign(source, 2)); logic(r[6], 4)
        case 0x16b2e: pc = 92976; r[6] = (r[6] << 16) | (r[6] >> 16); logic(r[6], 4)
        case 0x16b30: pc = 92978; let e0 = resolve(.post(12), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16b32: pc = 92980; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16b34: pc = 92984; let e0 = resolve(.immediate(word(92982)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16b38: pc = 92988; if condition(4) { pc = (92986 + Int(sign(word(92986), 2))) }
        case 0x16b3c: pc = 92990; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16b3e: pc = 92992; if condition(10) { pc = (92992 + Int(sign(byte(92991), 1))) }
        case 0x16b40: pc = 92994; let e0 = resolve(.reg(6), 1); let value = get(e0, 1); let e1 = resolve(.reg(7), 1); put(e1, value, 1); logic(value, 1)
        case 0x16b42: pc = 92996; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16b44: pc = 92998; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16b46: pc = 93000; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16b48: pc = 93002; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x16b4a: pc = 93004; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16b4c: pc = 93006; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16b4e: pc = 93008; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16b50: pc = 93012; let e0 = resolve(.immediate(word(93010)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x16b54: pc = 93014; let e0 = resolve(.indirect(8), 1); let source = get(e0, 1); let e1 = resolve(.reg(6), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x16b56: pc = 93016; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16b58: pc = 93018; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16b5a: pc = 93020; let e0 = resolve(.post(11), 2); let source = get(e0, 2); r[6] = UInt32(bitPattern: sign(r[6], 2) &* sign(source, 2)); logic(r[6], 4)
        case 0x16b5c: pc = 93022; r[6] = (r[6] << 16) | (r[6] >> 16); logic(r[6], 4)
        case 0x16b5e: pc = 93024; let e0 = resolve(.post(12), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16b60: pc = 93026; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16b62: pc = 93030; let e0 = resolve(.immediate(word(93028)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16b66: pc = 93034; if condition(4) { pc = (93032 + Int(sign(word(93032), 2))) }
        case 0x16b6a: pc = 93036; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16b6c: pc = 93038; if condition(10) { pc = (93038 + Int(sign(byte(93037), 1))) }
        case 0x16b6e: pc = 93040; let e0 = resolve(.reg(6), 1); let value = get(e0, 1); let e1 = resolve(.reg(7), 1); put(e1, value, 1); logic(value, 1)
        case 0x16b70: pc = 93042; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16b72: pc = 93044; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16b74: pc = 93046; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16b76: pc = 93048; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x16b78: pc = 93050; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16b7a: pc = 93052; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16b7c: pc = 93054; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16b7e: pc = 93058; let e0 = resolve(.immediate(word(93056)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x16b82: pc = 93060; let e0 = resolve(.indirect(8), 1); let source = get(e0, 1); let e1 = resolve(.reg(6), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x16b84: pc = 93062; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16b86: pc = 93064; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16b88: pc = 93066; let e0 = resolve(.post(11), 2); let source = get(e0, 2); r[6] = UInt32(bitPattern: sign(r[6], 2) &* sign(source, 2)); logic(r[6], 4)
        case 0x16b8a: pc = 93068; r[6] = (r[6] << 16) | (r[6] >> 16); logic(r[6], 4)
        case 0x16b8c: pc = 93070; let e0 = resolve(.post(12), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16b8e: pc = 93072; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16b90: pc = 93076; let e0 = resolve(.immediate(word(93074)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16b94: pc = 93080; if condition(4) { pc = (93078 + Int(sign(word(93078), 2))) }
        case 0x16b98: pc = 93082; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16b9a: pc = 93084; if condition(10) { pc = (93084 + Int(sign(byte(93083), 1))) }
        case 0x16b9c: pc = 93086; let e0 = resolve(.reg(6), 1); let value = get(e0, 1); let e1 = resolve(.reg(7), 1); put(e1, value, 1); logic(value, 1)
        case 0x16b9e: pc = 93088; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16ba0: pc = 93090; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16ba2: pc = 93092; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16ba4: pc = 93094; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x16ba6: pc = 93096; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16ba8: pc = 93098; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16baa: pc = 93100; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16bac: pc = 93104; let e0 = resolve(.immediate(word(93102)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x16bb0: pc = 93106; let e0 = resolve(.indirect(8), 1); let source = get(e0, 1); let e1 = resolve(.reg(6), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x16bb2: pc = 93108; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16bb4: pc = 93110; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16bb6: pc = 93112; let e0 = resolve(.post(11), 2); let source = get(e0, 2); r[6] = UInt32(bitPattern: sign(r[6], 2) &* sign(source, 2)); logic(r[6], 4)
        case 0x16bb8: pc = 93114; r[6] = (r[6] << 16) | (r[6] >> 16); logic(r[6], 4)
        case 0x16bba: pc = 93116; let e0 = resolve(.post(12), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16bbc: pc = 93118; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16bbe: pc = 93122; let e0 = resolve(.immediate(word(93120)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16bc2: pc = 93126; if condition(4) { pc = (93124 + Int(sign(word(93124), 2))) }
        case 0x16bc6: pc = 93128; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16bc8: pc = 93130; if condition(10) { pc = (93130 + Int(sign(byte(93129), 1))) }
        case 0x16bca: pc = 93132; let e0 = resolve(.reg(6), 1); let value = get(e0, 1); let e1 = resolve(.reg(7), 1); put(e1, value, 1); logic(value, 1)
        case 0x16bcc: pc = 93134; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16bce: pc = 93136; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16bd0: pc = 93138; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16bd2: pc = 93140; let e0 = resolve(.reg(5), 2); let source = get(e0, 2); let e1 = resolve(.reg(1), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2); put(e1, value, 2)
        case 0x16bd4: pc = 93142; let e0 = resolve(.reg(0), 2); let source = get(e0, 2); let e1 = resolve(.reg(2), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16bd6: pc = 93144; let e0 = resolve(.reg(1), 2); let source = get(e0, 2); let e1 = resolve(.reg(3), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16bd8: pc = 93146; let e0 = resolve(.reg(2), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16bda: pc = 93150; let e0 = resolve(.immediate(word(93148)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = destination & source; put(e1, value, 2); logic(value, 2)
        case 0x16bde: pc = 93152; let e0 = resolve(.indirect(8), 1); let source = get(e0, 1); let e1 = resolve(.reg(6), 1); let destination = get(e1, 1); _ = source; _ = destination; let value = destination | source; put(e1, value, 1); logic(value, 1)
        case 0x16be0: pc = 93154; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16be2: pc = 93156; let e0 = resolve(.reg(3), 2); let value = get(e0, 2); let e1 = resolve(.reg(6), 2); put(e1, value, 2); logic(value, 2)
        case 0x16be4: pc = 93158; let e0 = resolve(.post(11), 2); let source = get(e0, 2); r[6] = UInt32(bitPattern: sign(r[6], 2) &* sign(source, 2)); logic(r[6], 4)
        case 0x16be6: pc = 93160; r[6] = (r[6] << 16) | (r[6] >> 16); logic(r[6], 4)
        case 0x16be8: pc = 93162; let e0 = resolve(.post(12), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        case 0x16bea: pc = 93164; let e0 = resolve(.reg(6), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16bec: pc = 93168; let e0 = resolve(.immediate(word(93166)), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16bf0: pc = 93172; if condition(4) { pc = (93170 + Int(sign(word(93170), 2))) }
        case 0x16bf4: pc = 93174; let e0 = resolve(.reg(7), 2); let source = get(e0, 2); let e1 = resolve(.reg(6), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = subtract(destination, source, 2, compare: true); _ = value
        case 0x16bf6: pc = 93176; if condition(10) { pc = (93176 + Int(sign(byte(93175), 1))) }
        case 0x16bf8: pc = 93178; let e0 = resolve(.reg(6), 1); let value = get(e0, 1); let e1 = resolve(.reg(7), 1); put(e1, value, 1); logic(value, 1)
        case 0x16bfa: pc = 93180; let e0 = resolve(.reg(7), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16bfc: pc = 93182; let e0 = resolve(.reg(0), 2); let value = get(e0, 2); let e1 = resolve(.post(10), 2); put(e1, value, 2); logic(value, 2)
        case 0x16bfe: pc = 93184; let e0 = resolve(.reg(4), 2); let source = get(e0, 2); let e1 = resolve(.reg(0), 2); let destination = get(e1, 2); _ = source; _ = destination; let value = add(destination, source, 2); put(e1, value, 2)
        default: fail("Untranslated game address")
        }
    }
}
