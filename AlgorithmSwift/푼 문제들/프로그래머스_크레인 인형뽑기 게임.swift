import Foundation

func solution(_ board: [[Int]], _ moves: [Int]) -> Int {
    
    var rotatedBoard = Array(repeating: [Int](), count: board.first!.count + 1)
    
    for i in 0..<board.count {
        for j in 0..<board[i].count {
            if board[i][j] != 0 {
                rotatedBoard[j+1].append(board[i][j])
            }
        }
    }
    
    var box = [Int]()
    var result = 0
    
    for move in moves {
        if !rotatedBoard[move].isEmpty {
            let el = rotatedBoard[move].removeFirst()
            if box.last == el {
                box.removeLast()
                result += 2
            } else {
                box.append(el)
            }
        }
    }
    return result
}
