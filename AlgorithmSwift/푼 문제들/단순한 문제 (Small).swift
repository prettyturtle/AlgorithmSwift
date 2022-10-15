extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let n = readLine()!.asInt

for _ in 1...n {
    let nums = readLine()!.asIntArr
    let a = nums[0]
    let b = nums[1]
    let c = nums[2]
    var count = 0
    for i in 1...a {
        for j in 1...b {
            for k in 1...c {
                if i % j == j % k && j % k == k % i && k % i == i % j {
                    count += 1
                }
            }
        }
    }
    print(count)
}
