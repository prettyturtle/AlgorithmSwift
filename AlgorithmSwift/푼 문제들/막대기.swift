extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}
let n = readLine()!.asInt
let nums = (1...n).map { _ in readLine()!.asInt }
var count = 0
var temp = 0
for i in (0..<n).reversed() {
    if nums[i] > temp {
        temp = nums[i]
        count += 1
    }
}
print(count)
