let NM = readLine()!.split(separator: " ").map { Int($0)! }
let N = NM[0]
let M = NM[1]

let knight = readLine()!.split(separator: " ").map { Int($0)! }
var opponentList = [[Int]]()

var distanceMap = Array(repeating: Array(repeating: 0, count: N+2), count: N+2)

let directions = [[-2, -1], [-2, 1], [-1, -2], [-1, 2], [1, -2], [1, 2], [2, -1], [2, 1]]

for _ in 1...M {
    opponentList.append(readLine()!.split(separator: " ").map { Int($0)! })
}

func bfs() {
    var queue = [[knight[0], knight[1], 0]]
    
    while !queue.isEmpty {
        let current = queue.removeFirst()
        
        for direction in directions {
            let xx = current[0] + direction[0]
            let yy = current[1] + direction[1]
            if (1...N).contains(xx) && (1...N).contains(yy) {
                if distanceMap[xx][yy] == 0 {
                    distanceMap[xx][yy] = current[2] + 1
                    queue.append([xx, yy, current[2] + 1])
                }
            }
        }
    }
}

bfs()

for opponent in opponentList {
    print(distanceMap[opponent[0]][opponent[1]], terminator: " ")
}
