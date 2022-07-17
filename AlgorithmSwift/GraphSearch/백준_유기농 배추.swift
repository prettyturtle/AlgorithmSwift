let t = Int(readLine()!)!

for _ in 1...t {
    let mnk = readLine()!.split(separator: " ").map { Int($0)! }
    let (m, n, k) = (mnk[0], mnk[1], mnk[2])
    
    var map = Array(repeating: Array(repeating: 0, count: m + 2), count: n + 2)
    var check = Array(repeating: Array(repeating: false, count: m + 2), count: n + 2)
    
    for _ in 1...k {
        let b = readLine()!.split(separator: " ").map { Int($0)! }
        map[b[1]+1][b[0]+1] = 1
    }
    
    var count = 0
    
    func bfs(x: Int, y: Int) {
        check[y][x] = true
        let directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]
        for direction in directions {
            let dx = direction.0 + x
            let dy = direction.1 + y
            
            if map[dy][dx] == 1 && !check[dy][dx] {
                bfs(x: dx, y: dy)
            }
        }
    }
    
    for x in 1...m {
        for y in 1...n {
            if !check[y][x] && map[y][x] == 1 {
                count += 1
                bfs(x: x, y: y)
            }
        }
    }
    
    print(count)
}
