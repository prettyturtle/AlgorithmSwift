import Foundation

func solution(_ board: [[Int]]) -> Int {
    let n = board.count
    var arr = Array(repeating: Array(repeating: false, count: n), count: n)
    
    let di = [(1, 0), (0, 1), (-1, 0), (0, -1), (1, 1), (-1, -1), (1, -1), (-1, 1)]
    
    for i in 0..<n {
        for j in 0..<n {
            if board[i][j] == 1 {
                arr[i][j] = true
                for d in di {
                    let x = i + d.0
                    let y = j + d.1
                    
                    if (0..<n) ~= x && (0..<n) ~= y {
                        arr[x][y] = true
                    }
                }
            }
        }
    }
    
    var ret = 0
    
    for i in 0..<n {
        for j in 0..<n {
            if !arr[i][j] {
                ret += 1
            }
        }
    }
    
    return ret
}
