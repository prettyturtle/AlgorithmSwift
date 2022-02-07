let directions = [(-1, 0), (1, 0), (0, -1), (0, 1)] // 상 하 좌 우 방향벡터

let T = Int(readLine()!)!
for _ in 1...T {
    let MNK = readLine()!.split(separator: " ").map { Int($0)! }
    let M = MNK[0]
    let N = MNK[1]
    let K = MNK[2]
    
    // map
    var map = Array(repeating: Array(repeating: 0, count: M+2), count: N+2)
    var check = Array(repeating: Array(repeating: false, count: M+2), count: N+2)
    var result = 0
    for _ in 1...K {
        let XY = readLine()!.split(separator: " ").map { Int($0)! }
        let X = XY[0]
        let Y = XY[1]
        
        map[Y+1][X+1] = 1
    }
    
    func dfs(x: Int, y: Int) {
        check[y][x] = true
        for direction in directions {
            let xx = x + direction.1
            let yy = y + direction.0
            
            if map[yy][xx] == 1 && check[yy][xx] == false {
                dfs(x: xx, y: yy)
            }
        }
    }
    
    for y in 1...N {
        for x in 1...M {
            if map[y][x] == 1 && check[y][x] == false {
                dfs(x: x, y: y)
                result += 1
            }
        }
    }
    print(result)
}
