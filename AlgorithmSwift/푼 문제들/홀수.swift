extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}


let nums = (1...7).map { _ in readLine()!.asInt }.filter { $0 % 2 == 1 }
let sum = nums.reduce(0, +)
let min = nums.min() ?? -1

if sum == 0 {
    print(min)
} else {
    print(sum)
    print(min)
}
