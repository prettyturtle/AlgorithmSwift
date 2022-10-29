extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

var dic = [Int: Bool]()

for i in 1...30 {
    dic[i] = false
}

for _ in 1...28 {
    dic[readLine()!.asInt] = true
}

for i in 1...30 {
    if !dic[i]! { print(i) }
}
