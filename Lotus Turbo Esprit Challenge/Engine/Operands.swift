import Foundation

enum GameOperand {
    case reg(Int), memory(Int), immediate(UInt32), indirect(Int), post(Int), pre(Int)
    case offset(Int, Int), indexed(Int, Int, Bool, Int), status
}
struct GameAddress { let kind: Int; let address: Int; let immediate: UInt32 }
extension LotusMachine {
    @inline(__always) func resolve(_ operand: GameOperand, _ size: Int) -> GameAddress {
        switch operand {
        case .reg(let register): return GameAddress(kind:0,address:register,immediate:0)
        case .immediate(let value): return GameAddress(kind:2,address:0,immediate:value)
        case .memory(let address): return GameAddress(kind:1,address:address & 0xffffff,immediate:0)
        case .indirect(let register): return GameAddress(kind:1,address:Int(r[register]) & 0xffffff,immediate:0)
        case .post(let register):
            let address = r[register]; r[register] &+= UInt32(size == 1 && register == 15 ? 2 : size)
            return GameAddress(kind:1,address:Int(address) & 0xffffff,immediate:0)
        case .pre(let register):
            r[register] &-= UInt32(size == 1 && register == 15 ? 2 : size)
            return GameAddress(kind:1,address:Int(r[register]) & 0xffffff,immediate:0)
        case .offset(let register, let displacement):
            let address = r[register] &+ UInt32(bitPattern:Int32(displacement))
            return GameAddress(kind:1,address:Int(address) & 0xffffff,immediate:0)
        case .indexed(let base, let index, let longIndex, let displacement):
            let b: UInt32 = base >= 0 ? r[base] : 0
            let value = b &+ UInt32(bitPattern:sign(r[index],longIndex ? 4 : 2)) &+ UInt32(bitPattern:Int32(displacement))
            return GameAddress(kind:1,address:Int(value) & 0xffffff,immediate:0)
        case .status: return GameAddress(kind:3,address:0,immediate:0)
        }
    }
    @inline(__always) func get(_ address: GameAddress, _ size: Int) -> UInt32 {
        if address.kind == 0 { return r[address.address] & mask(size) }
        if address.kind == 1 { return read(address.address,size) }
        if address.kind == 2 { return address.immediate & mask(size) }
        return (x ? 16 : 0) | (n ? 8 : 0) | (z ? 4 : 0) | (v ? 2 : 0) | (c ? 1 : 0)
    }
    @inline(__always) func put(_ address: GameAddress, _ value: UInt32, _ size: Int) {
        if address.kind == 0 { setRegister(address.address,value,size) }
        else if address.kind == 1 { write(address.address,value,size) }
        else if address.kind == 3 { x = value & 16 != 0; n = value & 8 != 0; z = value & 4 != 0; v = value & 2 != 0; c = value & 1 != 0 }
    }
    func divide(_ register: Int, _ divisor: UInt32, signed: Bool) {
        guard divisor != 0 else { fail("Division by zero"); return }
        if signed {
            let a = Int64(Int32(bitPattern:r[register])), b = Int64(Int16(truncatingIfNeeded:divisor))
            let q = a/b, rem = a%b
            guard q >= -32768 && q <= 32767 else { v = true; c = false; return }
            r[register] = (UInt32(truncatingIfNeeded:rem) << 16) | (UInt32(truncatingIfNeeded:q) & 65535)
        } else {
            let q = r[register]/divisor, rem = r[register]%divisor
            guard q <= 65535 else { v = true; c = false; return }
            r[register] = (rem << 16) | q
        }
        logic(r[register],2)
    }
}
