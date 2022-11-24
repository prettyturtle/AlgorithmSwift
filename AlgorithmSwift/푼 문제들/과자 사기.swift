extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

var x = ("", 0.0)

for i in ["S", "N", "U"] {
    let temp = readLine()!.asIntArr
    let p = temp[0]
    let w = temp[1]
    
    let w10 = w * 10
    var p10 = p * 10
    
    if p10 >= 5000 { p10 -= 500 }
    
    let ga = Double(w10) / Double(p10)
    
    if x.1 < ga {
        x.0 = i
        x.1 = ga
    }
}

print(x.0)
