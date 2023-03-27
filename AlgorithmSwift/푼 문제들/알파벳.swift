import Foundation

let s = readLine()!.split(separator: " ").map { Int($0)! }
let (r, c) = (s[0], s[1])

var map = [[Int]]()

for _ in 1...r {
    let m = readLine()!.map { Int($0.asciiValue!) - 65 }

    map.append(m)
}

let directions = [(0, 1), (1, 0), (0, -1), (-1, 0)]

var answer = 0

func ddfs(_ start: (Int, Int), _ val: Int, _ bit: Int) {
    answer = max(answer, val)
    
    for direction in directions {
        let dr = start.0 + direction.0
        let dc = start.1 + direction.1
        
        if (0..<r).contains(dr) && (0..<c).contains(dc) {
            let n = 1 << map[dr][dc]
            
            if bit & n == 0 {
                ddfs((dr, dc), val + 1, bit | n)
            }
        }
    }
}

ddfs((0, 0), 1, 1 << map[0][0])
print(answer)
