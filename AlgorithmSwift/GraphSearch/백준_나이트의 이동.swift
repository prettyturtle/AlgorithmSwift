let t = Int(readLine()!)!

for _ in 1...t {
    let n = Int(readLine()!)!
    let c = readLine()!.split(separator: " ").map { Int($0)! }
    let w = readLine()!.split(separator: " ").map { Int($0)! }
    
    var map = Array(repeating: Array(repeating: 0, count: n), count: n)
    
    let directions = [
        (2, 1), (1, 2),
        (1, -2), (2, -1),
        (-1, -2), (-2, -1),
        (-2, 1), (-1, 2)
    ]
    
    if c == w {
        print(0)
        continue
    }
    
    func bfs(_ start: (Int, Int), _ currentMap: [[Int]]) -> [[Int]] {
        var currentMap = currentMap
        
        var queue = [start]
        currentMap[start.1][start.0] = 0
        
        while !queue.isEmpty {
            let f = queue.removeFirst()
            for direction in directions {
                let dx = direction.0 + f.0
                let dy = direction.1 + f.1
                
                if dx >= 0 && dx < n && dy >= 0 && dy < n && currentMap[dy][dx] == 0 {
                    queue.append((dx, dy))
                    currentMap[dy][dx] = currentMap[f.1][f.0] + 1
                }
            }
        }
        return currentMap
    }
    
    print(bfs((c[0], c[1]), map)[w[1]][w[0]])
}
