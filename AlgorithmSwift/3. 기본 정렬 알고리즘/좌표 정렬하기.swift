let n = Int(readLine()!)!
var xYArray: [(Int, Int)] = []

for _ in 1...n {
    let xAndY = readLine()!.split(separator: " ")
    let x = Int(xAndY[0])!
    let y = Int(xAndY[1])!
    xYArray.append((x, y))
}

xYArray.sort { (a, b) in
    if a.0 == b.0 {
        return a.1 < b.1
    }
    return a.0 < b.0
}

for i in xYArray {
    print(i.0, i.1)
}
