import Foundation

extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let n = readLine()!.asInt
let nums = readLine()!.asIntArr.sorted()

var aa = [Int]()

for i in 0..<nums.count - 1 {
    aa.append(abs(nums[i] - nums[i + 1]))
}
aa.append(abs(nums.first! - nums.last!))
print(aa.reduce(0, +))
