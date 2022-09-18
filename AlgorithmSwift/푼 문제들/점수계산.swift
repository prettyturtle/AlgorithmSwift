extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let n = readLine()!.asInt

let numArr = readLine()!.asIntArr

var bool = false

var count = 0

var temp = 1

for num in numArr {
    if num == 0 {
        bool = false
        temp = 1
    } else {
        if bool {
            temp += 1
        }
        count += temp
        bool = true
    }
}

print(count)
