let T = Int(readLine()!)!

let directions = [(-2, -1), (-2, 1), (-1, -2), (1, -2), (-1, 2), (1, 2), (2, -1), (2, 1)]

for _ in 1...T {
    sol()
}
func sol() {
    let mapEdge = Int(readLine()!)!
    let currentLocation = readLine()!.split(separator: " ").map { Int($0)! }
    let toMoveLocation = readLine()!.split(separator: " ").map { Int($0)! }
    let map = makeMap(mapEdge)

    let res = bfs(map: map, currentLocation: currentLocation, toMoveLocation: toMoveLocation)
    print(res)
}
func makeMap(_ n: Int) -> [[Int]] {
    var map = [[Int]]()
    for _ in 1...n {
        let row = Array(repeating: 0, count: n)
        map.append(row)
    }
    return map
}
func bfs(map: [[Int]], currentLocation: [Int], toMoveLocation: [Int]) -> Int {
    var map = map
    var queue = [currentLocation]
    map[currentLocation[0]][currentLocation[1]] = 1
    while !queue.isEmpty {
        let current = queue.removeFirst()
        for direction in directions {
            let xx = current[0] + direction.0
            let yy = current[1] + direction.1
            
            if (0..<map.count).contains(xx) && (0..<map.count).contains(yy) && map[xx][yy] == 0 {
                queue.append([xx, yy])
                map[xx][yy] = map[current[0]][current[1]] + 1
            }
        }
    }
    return map[toMoveLocation[0]][toMoveLocation[1]] - 1
}
