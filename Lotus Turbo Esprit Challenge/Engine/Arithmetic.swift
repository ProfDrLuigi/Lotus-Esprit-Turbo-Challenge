import Foundation

extension LotusMachine {
    @inline(__always) func mask(_ size: Int) -> UInt32 { size == 4 ? 0xffffffff : size == 2 ? 65535 : 255 }
    @inline(__always) func sign(_ value: UInt32, _ size: Int) -> Int32 {
        size == 1 ? Int32(Int8(truncatingIfNeeded: value)) : size == 2 ? Int32(Int16(truncatingIfNeeded: value)) : Int32(bitPattern: value)
    }
    @inline(__always) func logic(_ value: UInt32, _ size: Int) {
        let value = value & mask(size); z = value == 0; n = sign(value, size) < 0; v = false; c = false
    }
    @inline(__always) func add(_ a: UInt32, _ b: UInt32, _ size: Int, extend: Bool = false) -> UInt32 {
        let m = mask(size), oldZ = z, carry: UInt64 = extend && x ? 1 : 0
        let aa = a & m, bb = b & m, result = UInt64(aa) + UInt64(bb) + carry
        let out = UInt32(truncatingIfNeeded: result) & m, bit = UInt32(1) << (size*8-1)
        c = result > UInt64(m); x = c; v = ((~(aa ^ bb) & (aa ^ out)) & bit) != 0
        n = out & bit != 0; z = out == 0 && (!extend || oldZ); return out
    }
    @inline(__always) func subtract(_ a: UInt32, _ b: UInt32, _ size: Int, compare: Bool = false, extend: Bool = false) -> UInt32 {
        let m = mask(size), oldZ = z, carry: UInt32 = extend && x ? 1 : 0
        let aa = a & m, bb = b & m, out = (aa &- bb &- carry) & m, bit = UInt32(1) << (size*8-1)
        c = UInt64(aa) < UInt64(bb) + UInt64(carry); if !compare { x = c }
        v = ((aa ^ bb) & (aa ^ out) & bit) != 0
        n = out & bit != 0; z = out == 0 && (!extend || oldZ); return out
    }
    func condition(_ condition: Int) -> Bool {
        switch condition {
        case 0: return true
        case 1: return false
        case 2: return !c && !z
        case 3: return c || z
        case 4: return !c
        case 5: return c
        case 6: return !z
        case 7: return z
        case 8: return !v
        case 9: return v
        case 10: return !n
        case 11: return n
        case 12: return n == v
        case 13: return n != v
        case 14: return !z && n == v
        default: return z || n != v
        }
    }
    @inline(__always) func push(_ value: UInt32) { r[15] &-= 4; putLong(Int(r[15]), value) }
    @inline(__always) func pop() -> UInt32 { let value = long(Int(r[15])); r[15] &+= 4; return value }
    @inline(__always) func setRegister(_ index: Int, _ value: UInt32, _ size: Int) {
        let m = mask(size); r[index] = (r[index] & ~m) | (value & m)
    }
    func shift(_ value: UInt32, _ count: UInt32, _ size: Int, _ kind: Int) -> UInt32 {
        let bits = size * 8, m = mask(size), high = UInt32(1) << (bits-1)
        var value = value & m; let count = Int(count & 63); let oldX = x
        c = false; v = false
        if count > 0 {
            for _ in 0..<count {
                let old = value, previousX = x
                if kind & 1 == 0 {
                    c = value & 1 != 0
                    value >>= 1
                    if kind == 0 { value |= old & high }
                    if kind == 4 && previousX { value |= high }
                    if kind == 6 && c { value |= high }
                } else {
                    c = value & high != 0; value = (value << 1) & m
                    if kind == 5 && previousX { value |= 1 }
                    if kind == 7 && c { value |= 1 }
                    if kind == 1 && ((old ^ value) & high) != 0 { v = true }
                }
                if kind < 6 { x = c }
            }
        } else if kind == 4 || kind == 5 { c = oldX }
        z = value == 0; n = value & high != 0; return value
    }
    func moveMultiple(_ registerMask: UInt32, _ address: Int, _ size: Int, load: Bool, addressRegister: Int, predecrement: Bool, postincrement: Bool) {
        var address = address
        let list = (0..<16).filter { registerMask & (1 << $0) != 0 }
        if predecrement && !load {
            for register in list.reversed() { address -= size; write(address, r[register], size) }
            r[addressRegister] = UInt32(truncatingIfNeeded: address)
        } else {
            for register in list {
                if load { r[register] = UInt32(bitPattern: sign(read(address,size),size)) }
                else { write(address,r[register],size) }
                address += size
            }
            if postincrement { r[addressRegister] = UInt32(truncatingIfNeeded: address) }
        }
    }
    func fail(_ detail: String) { if fault == nil { fault = String(format: "$%06X: %@", pc, detail) } }

}
