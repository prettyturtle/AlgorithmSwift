let nmk = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m, k) = (nmk[0], nmk[1], nmk[2])

var map = Array(repeating: Array(repeating: false, count: m), count: n)

for _ in 1...k {
    let rc = readLine()!.split(separator: " ").map { Int($0)! }
    let (r, c) = (rc[0], rc[1])
    map[r-1][c-1] = true
}

var mainVisited = Array(repeating: Array(repeating: false, count: m), count: n)

func bfs(_ start: (Int, Int)) -> Int {
    mainVisited[start.0][start.1] = true
    var ret = 0
    var queue = [start]
    var visited = Array(repeating: Array(repeating: false, count: m), count: n)
    
    let directions = [(1, 0), (0, 1), (-1, 0), (0, -1)]
    
    while !queue.isEmpty {
        let fir = queue.removeFirst()
        
        if !visited[fir.0][fir.1] {
            visited[fir.0][fir.1] = true
            ret += 1
            for direction in directions {
                let dr = fir.0 + direction.0
                let dc = fir.1 + direction.1
                
                if (0..<n) ~= dr && (0..<m) ~= dc && !visited[dr][dc] && map[dr][dc] {
                    if mainVisited[dr][dc] { break }
                    queue.append((dr, dc))
                }
            }
        }
    }
    return ret
}

var count = 0

for i in 0..<n {
    for j in 0..<m {
        if map[i][j] {
            count = max(bfs((i, j)), count)
        }
    }
}

print(count)
