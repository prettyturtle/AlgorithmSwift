extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}


let nums = (1...5).map { _ in readLine()!.asInt }.sorted()
let avg = nums.reduce(0, +) / nums.count
let cen = nums[nums.count / 2]

print(avg)
print(cen)
