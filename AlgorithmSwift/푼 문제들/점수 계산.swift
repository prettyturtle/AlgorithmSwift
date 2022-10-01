extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let nums = (1...8).map { i in (readLine()!.asInt, i) }.sorted(by: { $0.0 < $1.0 })

let an = nums[3...].map { $0.0 }.reduce(0, +)
print(an)
nums[3...].map { $0.1 }.sorted().forEach { print($0, terminator: " ") }
