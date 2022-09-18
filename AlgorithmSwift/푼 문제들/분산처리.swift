extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let t = readLine()!.asInt

for _ in 1...t {
    let ab = readLine()!.asIntArr
    let (a, b) = (ab[0], ab[1])
    
    var count = 1
    
    for _ in 1...b {
        count *= a
        count %= 10
    }
    
    let lastStr = String(count % 10)
    
    if lastStr == "0" {
        print("10")
    } else {
        print(lastStr)
    }
}
