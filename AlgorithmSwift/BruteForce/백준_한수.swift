func hansu(_ n: String) -> Bool {
    if n.count <= 2 {
        return true
    }
    
    let nArr = n.map { Int(String($0))! }
    let g = nArr[0] - nArr[1]
    
    for i in 0..<nArr.count - 1 {
        if nArr[i] - nArr[i+1] != g {
            return false
        }
    }
    return true
}

let n = Int(readLine()!)!

var count = 0
for i in 1...n {
    if hansu(String(i)) { count += 1 }
}

print(count)
