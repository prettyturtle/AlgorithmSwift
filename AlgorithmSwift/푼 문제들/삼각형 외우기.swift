extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let a = readLine()!.asInt
let b = readLine()!.asInt
let c = readLine()!.asInt

var s = Set<Int>()
var count = a + b + c

s.insert(a)
s.insert(b)
s.insert(c)


if count == 180 {
    if s.count == 1 {
        print("Equilateral")
    } else if s.count == 2 {
        print("Isosceles")
    } else {
        print("Scalene")
    }
} else {
    print("Error")
}
