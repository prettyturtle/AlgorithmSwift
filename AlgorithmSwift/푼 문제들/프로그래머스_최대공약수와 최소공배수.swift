func solution(_ n:Int, _ m:Int) -> [Int] {
    let gcd = findGCD(n, m)
    return [gcd, n * m / gcd]
}

// 유클리드 호제법
func findGCD(_ n1: Int, _ n2: Int) -> Int {
    let minN = min(n1, n2)
    let maxN = max(n1, n2)
    let remain = maxN % minN
    
    if remain == 0 {
        return minN
    }
    
    return findGCD(minN, remain)
}
