extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let l = readLine()!.asInt
let a = readLine()!.asInt
let b = readLine()!.asInt
let c = readLine()!.asInt
let d = readLine()!.asInt


var aCount = 0
var bCount = 0

while aCount * c < a {
    aCount += 1
}

while bCount * d < b {
    bCount += 1
}

print(l - max(aCount, bCount))
