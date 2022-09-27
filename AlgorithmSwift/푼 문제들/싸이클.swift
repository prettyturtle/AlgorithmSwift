extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let np = readLine()!.asIntArr
let (n, p) = (np[0], np[1])

var dic = [Int: Int]()

var temp = n

dic[n] = 1

while true {
    temp = (temp * n) % p
    if dic[temp] == nil {
        dic[temp] = 1
    } else {
        if dic[temp]! >= 2 {
            break
        } else {
            dic[temp]! += 1
        }
    }
}

print(dic.filter { $0.value == 2 }.count)
