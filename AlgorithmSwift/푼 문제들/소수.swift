extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let abn = readLine()!.asIntArr
let (a, b, n) = (abn[0], abn[1], abn[2])

var aa = a

for _ in 1...n {
    aa = aa % b
    aa *= 10
}
aa = aa / b

print(aa)
