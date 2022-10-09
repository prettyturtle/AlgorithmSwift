extension String {
    var asInt: Int { Int(self)! }
}

let n = readLine()!.asInt

var nums = (1...n).map { _ in readLine()!.asInt }

var a = nums.first!
nums.remove(at: 0)
var count = 0
if nums.isEmpty {
    print(0)
} else {
    while a <= nums.max()! {
        count += 1
        nums.sort(by: >)
        nums[0] -= 1
        a += 1
    }
    print(count)
}
