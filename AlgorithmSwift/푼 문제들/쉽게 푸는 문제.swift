extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let ab = readLine()!.asIntArr
let (a, b) = (ab[0], ab[1])

var arr = Array(repeating: 0, count: b)

var num = 1
var count = 0

var bb = 0

while bb < b {
    if count != num {
        arr[bb] = num
        count += 1
    } else {
        num += 1
        arr[bb] = num
        count = 1
    }
    bb += 1
}

let aa = arr[a-1..<b].reduce(0, +)
print(aa)
