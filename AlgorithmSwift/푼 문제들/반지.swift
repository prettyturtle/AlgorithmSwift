import Foundation

extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let s = readLine()!

let n = readLine()!.asInt

var nums = [String]()

for _ in 1...n {
    let temp = readLine()!
    nums += [temp + temp]
}

print(nums.filter { $0.contains(s) }.count)
