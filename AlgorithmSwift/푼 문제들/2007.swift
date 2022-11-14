extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let xy = readLine()!.asIntArr
let (x, y) = (xy[0], xy[1])

enum Yoil: CaseIterable {
    case MON
    case TUE
    case WED
    case THU
    case FRI
    case SAT
    case SUN
}


let month = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

var sum = 0

for i in 0..<x {
    sum += month[i]
}

var cur = Yoil.MON

for i in 0..<sum + y {
    cur = Yoil.allCases[i % Yoil.allCases.count]
}

print(cur)
