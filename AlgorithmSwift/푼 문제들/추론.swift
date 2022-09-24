extension String {
    var asInt: Int { Int(self)! }
}

let n = readLine()!.asInt

let nums = (1...n).map { _ in readLine()!.asInt }

if nums[1] - nums[0] == nums[2] - nums[1] {
    print(nums.last! + nums[2] - nums[1])
} else {
    print(nums.last! * (nums[2] / nums[1]))
}
