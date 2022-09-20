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

print(min(l, a, b) + min(c, d) - 50)
