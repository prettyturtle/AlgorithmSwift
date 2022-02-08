let NM = readLine()!.split(separator: " ").map { Int($0)! }
let N = NM[0]
let M = NM[1]

var map = [[Int]]()

for _ in 1...N {
    var row = Array(readLine()!).map { Int(String($0))! }
    row.insert(0, at: 0)
    row.append(0)
    map.append(row)
}
map.append(Array(repeating: 0, count: M+2))
map.insert(Array(repeating: 0, count: M+2), at: 0)

var check = Array(repeating: Array(repeating: 0, count: M+2), count: N+2)

let directions = [(-1, 0), (1, 0), (0, -1), (0, 1)] // 상 하 좌 우 방향벡터
var queue: [(Int, Int)] = [(1, 1)]

check[1][1] = 1
while !queue.isEmpty {
    let (nowN, nowM) = queue.removeFirst()
    
    for direction in directions {
        let nn = nowN + direction.0
        let mm = nowM + direction.1
        
        if map[nn][mm] == 1 && check[nn][mm] == 0 {
            queue.append((nn, mm))
            check[nn][mm] = check[nowN][nowM] + 1
        }
    }
}

print(check[N][M])
