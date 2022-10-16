extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let n = readLine()!.asInt

var names = Set<String>()
var dic = [String: String]()

for _ in 1...n {
    let temp = readLine()!.split(separator: " ").map { String($0) }
    
    let name = temp[0]
    let enle = temp[1]
    
    names.insert(name)
    
    dic[name] = enle
}

var answer = [String]()

for name in names {
    if dic[name] == "enter" {
        answer += [name]
    }
}

answer.sorted(by: >).forEach { print($0) }
