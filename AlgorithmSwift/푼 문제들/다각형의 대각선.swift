extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let n = readLine()!.asInt

if n == 3 {
    print(0)
} else if n == 4 {
    print(1)
} else if n == 5 {
    print(5)
} else {
    var count = 1
    for i in n-3...n {
        count *= i
    }
    for i in 1...4 {
        count /= i
    }
    print(count)
}
