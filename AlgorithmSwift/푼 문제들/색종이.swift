extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let n = readLine()!.asInt

var nums = [[Int]]()

for _ in 1...n {
    let temp = readLine()!.asIntArr
    nums.append(temp)
}

var map = Array(repeating: Array(repeating: 0, count: 100), count: 100)

for num in nums {
    for i in num[0]..<num[0]+10 {
        for j in num[1]..<num[1]+10 {
            map[i][j] += 1
        }
    }
}

var count = 0

for i in 0..<100 {
    for j in 0..<100 {
        if map[i][j] >= 1 {
            count += 1
        }
    }
}

print(count)
