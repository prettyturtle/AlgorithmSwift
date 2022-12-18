extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

for i in 1...readLine()!.asInt {
    print("Class \(i)")
    
    let nums = readLine()!.asIntArr[1...].sorted(by: >)
    
    let ax = nums.first!
    let ni = nums.last!
    
    var lg = 0
    
    for j in 0..<(nums.count - 1) {
        lg = max(lg, nums[j] - nums[j + 1])
    }
    
    print("Max \(ax), Min \(ni), Largest gap \(lg)")
}
