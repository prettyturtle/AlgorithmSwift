let nm = readLine()!.split(separator: " ")
let n = Int(nm[0])!
let m = Int(nm[1])!

var castles = [String]()
var result = [0, 0]
for _ in 1...n {
    let castle = readLine()!
    castles.append(castle)
}
for castle in castles {
    if !castle.contains("X") {
        result[0] += 1
    }
}

var castleColumn = Array(repeating: "", count: m)
for castle in castles {
    for i in 0..<castle.count {
        castleColumn[i] += String(Array(castle)[i])
    }
}

for castle in castleColumn {
    if !castle.contains("X") {
        result[1] += 1
    }
}

result = result.sorted()
print(result[1])
