extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let n = readLine()!.asInt

var nums = (1...n).map { $0 }

if nums.count == 1 {
    print(nums[0])
} else if nums.count == 2 {
    print(nums[0], nums[1])
} else {
    while nums.count > 1 {
        print(nums.removeFirst(), terminator: " ")
        nums += [nums.first!]
        nums.removeFirst()
    }
    print(nums[0])
}
