extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

extension Array where Element == Int {
    var asSet: Set<Int> { return Set(self) }
    var asStringArr: [String] { return self.map { String($0) } }
}

let n = readLine()!.asInt

let nums = readLine()!.asIntArr.asSet.sorted(by: <).asStringArr.joined(separator: " ")
print(nums)
