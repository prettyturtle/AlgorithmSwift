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
var c = 1
for _ in 1...n {
    let name = readLine()!
    
    let f = name.first!.description
    
    if dic[f] == nil {
        dic[f] = 1
    } else {
        dic[f]! += 1
        c = max(dic[f]!, c)
    }
}

let a = dic.filter { $0.value >= 5 }.map { $0.key }.sorted().joined()

if a == "" {
    print("PREDAJA")
} else {
    print(a)
}

