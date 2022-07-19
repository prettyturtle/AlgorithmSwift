func bfs(_ x: Int, _ y: Int, _ map: [[Int]], check: inout [[Bool]], _ directions: [(Int, Int)]) {
    if !check[y][x] && map[y][x] == 1 {
        check[y][x] = true
        for direction in directions {
            let dx = x + direction.0
            let dy = y + direction.1
            
            if dx >= 0 && dx < map[0].count && dy >= 0 && dy < map.count {
                bfs(dx, dy, map, check: &check, directions)
            }
        }
    }
}

while true {
    let wh = readLine()!.split(separator: " ").map { Int($0)! }
    if wh == [0, 0] { break }
    
    let h = wh[1]
    
    var map = [[Int]]()
    
    for _ in 1...h {
        let temp = readLine()!.split(separator: " ").map { Int($0)! }
        map.append(temp)
    }
    
    var check = Array(repeating: Array(repeating: false, count: map[0].count), count: map.count)
    
    let directions = [(1,0),(-1,0),(0,1),(0,-1),(1,1),(1,-1),(-1,1),(-1,-1)]
    
    var count = 0
    
    for y in 0..<map.count {
        for x in 0..<map[0].count {
            if !check[y][x] && map[y][x] == 1 {
                count += 1
                bfs(x, y, map, check: &check, directions)
            }
        }
    }
    print(count)
}
