extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let n = readLine()!.asInt

var dic = [Int: Int]()

readLine()!.asIntArr.forEach { if dic[$0] == nil { dic[$0] = 1 } else { dic[$0]! += 1 } }

print(dic[readLine()!.asInt] ?? 0)
