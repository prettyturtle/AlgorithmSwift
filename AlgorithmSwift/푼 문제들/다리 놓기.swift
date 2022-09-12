extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let t = readLine()!.asInt

var arr = Array(repeating: Array(repeating: 0, count: 31), count: 31)

for j in 0...30 {
    arr[1][j] = j
}

for i in 2...30 {
    for j in i...30 {
        arr[i][j] = arr[i - 1][j - 1] + arr[i][j - 1]
    }
}

for _ in 1...t {
    let nm = readLine()!.asIntArr
    let (n, m) = (nm[0], nm[1])
    
    if n == m { print(1); continue }
    if n == 1 { print(m); continue }
    
    print(arr[n][m])
}
