let N = Int(readLine()!)!
let rings = readLine()!.split(separator: " ").map { Int($0)! }
let firstRing = rings[0]

func gcd(_ num1: Int, _ num2: Int) -> Int {
    if num1 <= 1 || num2 <= 1 {
        return 1
    }
    var ret = 1
    for i in 2...min(num1, num2) {
        if num1 % i == 0 && num2 % i == 0 {
            ret = i
        }
    }
    return ret
}

for i in 1..<rings.count {
    var nums = [firstRing, rings[i]]
    while gcd(nums[0], nums[1]) != 1 {
        let gcd = gcd(nums[0], nums[1])
        nums[0] = nums[0] / gcd
        nums[1] = nums[1] / gcd
    }
    print("\(nums[0])/\(nums[1])")
}
