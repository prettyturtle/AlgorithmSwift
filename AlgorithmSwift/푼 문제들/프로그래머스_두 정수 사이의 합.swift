func solution(_ a: Int, _ b: Int) -> Int64 {
    var ret = 0
    for i in min(a, b)...max(a, b) {
        ret += i
    }
    return Int64(ret)
}
