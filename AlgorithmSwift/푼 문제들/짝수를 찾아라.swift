extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let t = readLine()!.asInt

for _ in 1...t {
    let nums = readLine()!.asIntArr.filter { $0 % 2 == 0 }.sorted(by: <)
    
    print(nums.reduce(0, +), nums[0])
}
