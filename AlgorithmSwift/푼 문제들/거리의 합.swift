extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}


let n = readLine()!.asInt

let nums = readLine()!.asIntArr

var d = 0

for num1 in nums {
    var temp = 0
    for num2 in nums {
        temp += abs(num1 - num2)
    }
    d += temp
}

print(d)
