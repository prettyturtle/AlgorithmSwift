extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let a = readLine()!.asIntArr.reduce(0, +)
let b = readLine()!.asIntArr.reduce(0, +)

print(a > b ? a : b)
