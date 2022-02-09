let N = Int(readLine()!)!

var map = [[Int]]()
var check = Array(repeating: Array(repeating: false, count: N+2), count: N+2)

for _ in 1...N {
    var row = Array(readLine()!).map { Int(String($0))! }
    row.insert(0, at: 0)
    row.append(0)
    map.append(row)
}

map.insert(Array(repeating: 0, count: N+2), at: 0)
map.append(Array(repeating: 0, count: N+2))

var result = [Int]()

let directions = [(0, 0), (-1, 0), (1, 0), (0, -1), (0, 1)]

func bfs(row: Int, col: Int) {
    var count = 0
    var queue = [(row, col)]
    
    while !queue.isEmpty {
        let (currentRow, currentCol) = queue.removeFirst()
        
        for direction in directions {
            let drow = currentRow + direction.0
            let dcol = currentCol + direction.1
            
            if map[drow][dcol] == 1 && !check[drow][dcol] {
                queue.append((drow, dcol))
                count += 1
                check[drow][dcol] = true
            }
        }
    }
    result.append(count)
}

for row in 1...N {
    for col in 1...N {
        if map[row][col] == 1 && !check[row][col] {
            bfs(row: row, col: col)
        }
    }
}

print(result.count)
result.sort()
for i in result {
    print(i)
}
