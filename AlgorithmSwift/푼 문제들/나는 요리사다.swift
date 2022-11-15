extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let nums = (1...5).map { i in (i, readLine()!.asIntArr.reduce(0, +)) }.sorted { $0.1 > $1.1 }.first!
print(nums.0, nums.1)
