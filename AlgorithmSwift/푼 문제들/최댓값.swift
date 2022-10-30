extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

var ma = (0, 0, 0)

for i in 0..<9 {
    
    let temp = readLine()!.asIntArr
    
    for j in 0..<9 {
        if temp[j] >= ma.0 {
            ma = (temp[j], i + 1, j + 1)
        }
    }
}

print(ma.0)
print(ma.1, ma.2)
