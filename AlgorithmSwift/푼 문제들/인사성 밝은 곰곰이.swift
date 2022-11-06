extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}


let n = readLine()!.asInt

var dic = [String: Int]()

var count = 0

for _ in 1...n {
    let temp = readLine()!
    
    if temp == "ENTER" {
        dic = [:]
    } else {
        if dic[temp] == nil {
            count += 1
        }
        dic[temp] = 0
    }
}

print(count)
