func gcd(_ a: Int, _ b: Int) -> Int {
    var ret = 0
    let minValue = min(a, b)
    for i in 1...minValue {
        if a % i == 0 && b % i == 0 {
            ret = i
        }
    }
    return ret
}

func solution(_ arr: [Int]) -> Int {
    var lcm = 1
    for i in arr {
        lcm = (lcm * i) / gcd(lcm, i)
    }
    return lcm
}

print(solution([2,6,8,14]) == 168)
print(solution([1,2,3]) == 6)
