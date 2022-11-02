extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}



let n = readLine()!.asInt

var q = [String]()

for _ in 1...n {
    let commend = readLine()!.split(separator: " ").map { String($0) }
    
    switch commend[0] {
    case "push":
        q.append(commend[1])
    case "front":
        print(q.first ?? "-1")
    case "back":
        print(q.last ?? "-1")
    case "size":
        print(q.count)
    case "empty":
        print(q.isEmpty ? "1" : "0")
    case "pop":
        if !q.isEmpty {
            let firstNumber = q.removeFirst()
            print(firstNumber)
        } else {
            print("-1")
        }
    default:
        break
    }
}
