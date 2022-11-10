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

func change(_ bs: [Int], _ b1: Int, _ b2: Int) -> [Int] {
    var bs = bs
    let temp = bs[b1 - 1]
    bs[b1 - 1] = bs[b2 - 1]
    bs[b2 - 1] = temp
    return bs
}

var bs = (1...n).map { $0 }

for _ in 1...m {
    let ij = readLine()!.asIntArr
    let (i, j) = (ij[0], ij[1])
    
    bs = change(bs, i, j)
}

print(bs.map { String($0) }.joined(separator: " "))
