extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

extension Int {
    var asString: String { String(self) }
}

print(readLine()!.split(separator: " ").map { String($0).reversed().map { String($0) }.joined(separator: "").asInt }.reduce(0, +).asString.reversed().map { String($0) }.joined(separator: "").asInt)
