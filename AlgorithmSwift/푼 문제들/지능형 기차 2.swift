extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}


let nums = [[0, 0]] + (0..<10).map { _ in readLine()!.asIntArr }

var arr = Array(repeating: 0, count: 11)

for i in 1...10 {
    if i == 1 {
        arr[i] = nums[i][1]
    } else {
        arr[i] = arr[i - 1] + nums[i][1] - nums[i][0]
    }
}

print(arr.max()!)
