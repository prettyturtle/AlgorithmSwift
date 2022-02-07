let N: Int = Int(readLine()!)!
var map: [[Int]] = [[Int]]()

for _ in 1...N {
    let row: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
    map.append(row)
}

var answer: Int = 10000

let directions: [(Int, Int)] = [(0, 0), (-1, 0), (1, 0), (0, -1), (0, 1)] // 중간,상,하,좌,우 방향벡터

func findFlower(list: [Int]) -> Int {
    var result: Int = 0
    var flowers: [[Int]] = [[Int]]()
    for i in list {
        let row: Int = i / N
        let col: Int = i % N
        
        if row != 0 && row != N-1 && col != 0 && col != N-1 {
            for direction in directions {
                if !flowers.contains([row + direction.0, col + direction.1]) {
                    flowers.append([row + direction.0, col + direction.1])
                    result += map[row + direction.0][col + direction.1]
                } else {
                    return 10000
                }
            }
        }
        
        if flowers.count == 15 {
            return result
        }
    }
    return 10000
}

for i in N+1..<N*N - N {
    for j in N+1..<N*N - N {
        for k in N+1..<N*N - N {
            answer = min(answer, findFlower(list: [i,j,k]))
        }
    }
}

print(answer)
