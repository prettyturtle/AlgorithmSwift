// MARK: - 프로그래머스 Lv.2 행렬 테두리 회전하기
import Foundation

func solution(_ rows: Int, _ columns: Int, _ queries: [[Int]]) -> [Int] {
    
    var map = Array(repeating: Array(repeating: 0, count: columns), count: rows)
    
    var dict = [[Int]: Int]()
    
    var count = 1
    
    for i in 0..<rows {
        for j in 0..<columns {
            map[i][j] = count
            dict[[i, j]] = count
            count += 1
        }
    }
    
    var result = [Int]()
    
    for query in queries {
        let rotated = rotate(map, query, rows, columns)
        map = rotated.0
        result.append(rotated.1)
    }
    
    return result
}

func rotate(_ map: [[Int]], _ q: [Int], _ r: Int, _ c: Int) -> ([[Int]], Int) {
    var ret = map
    let (x1, y1, x2, y2) = (q[0]-1, q[1]-1, q[2]-1, q[3]-1)
    
    var minValue = r * c
    
    // 상단 가로 이동
    for i in y1..<y2 {
        ret[x1][i + 1] = map[x1][i]
        minValue = min(minValue, map[x1][i])
    }
    
    // 우측 세로 이동
    for i in x1..<x2 {
        ret[i + 1][y2] = map[i][y2]
        minValue = min(minValue, map[i][y2])
    }
    
    // 하단 가로 이동
    for i in (y1+1...y2).reversed() {
        ret[x2][i - 1] = map[x2][i]
        minValue = min(minValue, map[x2][i])
    }
    
    // 좌측 세로 이동
    for i in (x1+1...x2).reversed() {
        ret[i - 1][y1] = map[i][y1]
        minValue = min(minValue, map[i][y1])
    }
    
    return (ret, minValue)
}

print(solution(6, 6, [[2,2,5,4],[3,3,6,6],[5,1,6,3]]) == [8, 10, 25])
print(solution(3, 3, [[1,1,2,2],[1,2,2,3],[2,1,3,2],[2,2,3,3]]) == [1, 1, 5, 3])
print(solution(100, 97, [[1,1,100,97]]) == [1])
