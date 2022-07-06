let ab = readLine()!.split(separator: " ").map { String($0) }
let a = ab[0]
let b = ab[1]

let ac = a.count
let bc = b.count

let aArr = a.map { String($0) }
let bArr = b.map { String($0) }

func hansu(_ x: [String], _ y: [String]) -> Int {
    var count = 0
    
    for i in 0..<x.count {
        if x[i] != y[i] {
            count += 1
        }
    }
    
    return count
}

var minV = 50

for i in 0...abs(ac-bc) {
    let x = aArr
    let y = bArr[i...].map { String($0) }
    minV = min(minV, hansu(x, y))
}

print(minV)
