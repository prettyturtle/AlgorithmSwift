let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0]
let m = nm[1]

var map = [[String]]()

for _ in 1...n {
    let line = readLine()!.map { String($0) }
    map.append(line)
}

func sol(_ s: String, _ m: [[String]], _ i: Int, _ j: Int) -> Int {
    var count = 0
    var header = s
    var curr = header
    var r = i
    var c = j
    
    for _ in 0..<8 {
        for _ in 0..<8 {
            if m[r][c] != curr {
                count += 1
            }
            curr = rev(curr)
            c += 1
        }
        header = rev(header)
        curr = header
        r += 1
        c = j
    }
    return count
}

func rev(_ s: String) -> String {
    if s == "B" { return "W" }
    else { return "B" }
}


var minV = Int.max

for i in 0..<n {
    for j in 0..<m {
        if (0...n-8) ~= i && (0...m-8) ~= j {
            minV = min(minV, sol("B", map, i, j), sol("W", map, i, j))
        } else {
            continue
        }
    }
}

print(minV)
