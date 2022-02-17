let N = Int(readLine()!)!

var board = [[Int]]()

for _ in 1...N {
    let row = readLine()!.split(separator: " ").map { Int($0)! }
    board.append(row)
}

func ret(_ b: [[Int]]) -> Int {
    var retList = [Int]()
    for i in b {
        retList.append(i.max()!)
    }
    return retList.max()!
}
func makeSwipedBoard(b: [[Int]], n: Int) -> [[Int]] {
    var rotatedBoard = [[Int]]()
    for row in b {
        let newRow = swipeToLeft(row: row, n: n)
        rotatedBoard.append(newRow)
    }
    return rotatedBoard
}
func swipeToLeft(row: [Int], n: Int) -> [Int] {
    var row = row
    row.removeAll { $0 == 0 }
    for i in 0..<row.count {
        if i == 0 {
            continue
        }
        if row[i-1] == row[i] {
            row[i-1] = row[i-1] * 2
            row[i] = 0
        }
    }
    row.removeAll { $0 == 0 }
    
    for _ in 0..<(n - row.count) {
        row.append(0)
    }
    return row
}
func makeRotatedBoard(b: [[Int]], n: Int) -> [[Int]] {
    var newBoard = b
    for i in 0..<n {
        for j in 0..<n {
            newBoard[j][n-i-1] = b[i][j]
        }
    }
    return newBoard
}

func dfs(b: [[Int]], n: Int, count: Int) -> Int {
    var ret = ret(b)
    if count == 0 {
        return ret
    }
    var b = b
    for _ in 1...4 {
        let tempBoard = makeSwipedBoard(b: b, n: n)
        if tempBoard != b {
            ret = max(ret, dfs(b: tempBoard, n: n, count: count-1))
        }
        b = makeRotatedBoard(b: b, n: n)
    }
    return ret
}

print(dfs(b: board, n: N, count: 5))
