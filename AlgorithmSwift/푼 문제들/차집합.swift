extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let nanb = readLine()!.asIntArr
let (na, nb) = (nanb[0], nanb[1])

let a = readLine()!.asIntArr.sorted(by: <)
let b = readLine()!.asIntArr


var dic = [Int: Bool]()

for i in a {
    dic[i] = true
}

for i in b {
    if dic[i] != nil {
        dic[i] = false
    }
}

var answer = [Int]()

for i in a {
    if dic[i]! {
        answer += [i]
    }
}

if answer.isEmpty {
    print(0)
} else {
    print(answer.count)
    print(answer.map { String($0) }.joined(separator: " "))
}
