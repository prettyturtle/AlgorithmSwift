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

var mat1 = [[Int]]()

for _ in 1...n {
    let temp = readLine()!.asIntArr
    mat1.append(temp)
}

let jk = readLine()!.asIntArr
let (j, k) = (jk[0], jk[1])

var mat2 = [[Int]]()
var rotateMat2 = Array(repeating: Array(repeating: 0, count: j), count: k)

for _ in 1...j {
    let temp = readLine()!.asIntArr
    mat2.append(temp)
}

for i in 0..<mat2.count {
    for j in 0..<mat2[i].count {
        rotateMat2[j][i] = mat2[i][j]
    }
}

var answer = Array(repeating: Array(repeating: 0, count: k), count: n)

for m1 in 0..<mat1.count {
    for m2 in 0..<rotateMat2.count {
        var count = 0
        for i in 0..<mat1[m1].count {
            let r = mat1[m1][i]
            let c = rotateMat2[m2][i]
            
            count += r * c
        }
        answer[m1][m2] = count
    }
}

answer.forEach { $0.forEach { print($0, terminator: " ") }; print() }
