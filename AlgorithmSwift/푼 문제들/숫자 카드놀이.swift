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

func mult(_ str: String) -> String {
    str.map { String($0).asInt }.reduce(1, *).asString
}

while true {
    var n = readLine()!
    if n == "0" { break }
    
    while true {
        print(n, terminator: " ")
        if n.count == 1 {
            break
        }
        n = mult(n)
    }
    print()
}
