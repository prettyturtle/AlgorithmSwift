extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let nm = readLine()!.asIntArr
let (n, m) = (nm[0], nm[1])

var numDict = [String: String]()
var nameDict = [String: String]()

for i in 1...n {
    let name = readLine()!
    if numDict[name] == nil {
        numDict[name] = i.description
    }
    
    if nameDict[i.description] == nil {
        nameDict[i.description] = name
    }
}

for _ in 1...m {
    let q = readLine()!
    if Int(q) == nil {
        print(numDict[q]!)
    } else {
        print(nameDict[q]!)
    }
}
