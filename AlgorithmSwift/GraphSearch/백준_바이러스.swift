let n = Int(readLine()!)!

var map = [Int: [Int]]()
var check = Array(repeating: false, count: n + 1)

for _ in 1...Int(readLine()!)! {
    let ab = readLine()!.split(separator: " ").map { Int($0)! }
    let (a, b) = (ab[0], ab[1])
    
    if map[a] != nil {
        map[a]!.append(b)
    } else {
        map[a] = [b]
    }
    
    if map[b] != nil {
        map[b]!.append(a)
    } else {
        map[b] = [a]
    }
}

var count = 0
var visited = [1]

while !visited.isEmpty {
    let f = visited.removeFirst()
    
    if !check[f] {
        check[f] = true
        visited.append(contentsOf: map[f]!)
        count += 1
    }
}

print(count - 1)
