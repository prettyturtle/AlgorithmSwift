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

let A: Set<Int> = Set(readLine()!.asIntArr)
let B: Set<Int> = Set(readLine()!.asIntArr)

print(A.subtracting(B).count + B.subtracting(A).count)
