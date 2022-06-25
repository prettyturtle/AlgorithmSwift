func solution(_ arr: [Int], _ divisor: Int) -> [Int] {
    
    let ret = arr.sorted().filter { $0 % divisor == 0 }
    return ret.isEmpty ? [-1] : ret
}
