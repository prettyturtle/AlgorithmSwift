let nq = readLine()!.split(separator: " ").map { Int($0)! }
let (n, q) = (nq[0], nq[1])

var visited = Set<Int>()

func search(_ start: Int) -> Int { // 3
    var current = start // 3
    var first = 0 // 0
    
    while current != 1 {
        if visited.contains(current) {
            first = current
        }
        
        current /= 2 // 1
    }
    
    if first == 0 { // 0
        visited.insert(start) // [3]
    }
    return first
}

for _ in 1...q {
    let x = Int(readLine()!)!
    
    print(search(x))
}
