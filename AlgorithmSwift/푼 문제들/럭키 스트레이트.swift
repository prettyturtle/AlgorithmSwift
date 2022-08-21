let n = readLine()!.map { Int(String($0))! }

let nCount = n.count
var nSum = 0

for i in 0..<nCount {
    if i < nCount / 2 {
        nSum += n[i]
    } else {
        nSum -= n[i]
    }
}

print(nSum == 0 ? "LUCKY" : "READY")
