extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let n = readLine()!.asInt

for i in 1...n {
    print("Case #\(i): \(readLine()!.split(separator: " ").map { String($0) }.reversed().joined(separator: " "))")
}
