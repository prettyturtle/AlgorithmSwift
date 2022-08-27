extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let n = readLine()!.asInt
var Ai = readLine()!.asIntArr

let bc = readLine()!.asIntArr
let (b, c) = (bc[0], bc[1])



Ai = Ai.map { $0 - b }.map { $0 < 0 ? 0 : $0 }

var result = n

for i in Ai {
    if i == 0 {
        continue
    }
    if i % c == 0 {
        result += i / c
    } else {
        result += i / c + 1
    }
}

print(result)
