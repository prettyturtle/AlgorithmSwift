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

var m1 = [[Int]]()
var m2 = [[Int]]()

for _ in 1...n {
    m1.append(readLine()!.asIntArr)
}

for _ in 1...n {
    m2.append(readLine()!.asIntArr)
}

var m3 = [[Int]]()

for i in 0..<n {
    var temp = [Int]()
    
    for j in 0..<m {
        temp += [m1[i][j] + m2[i][j]]
    }
    
    m3.append(temp)
}

m3.forEach {
    print($0.map { String($0) }.joined(separator: " "))
}
