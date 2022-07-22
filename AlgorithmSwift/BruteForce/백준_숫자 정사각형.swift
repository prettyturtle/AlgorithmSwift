let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0]
let m = nm[1]

var map = [[Int]]()

for _ in 1...n {
    let a = readLine()!.map { Int(String($0))! }
    map.append(a)
}

var len = n < m ? n : m
var result = 1

while len > 1 {
    let directions = [(0, len-1), (len-1, 0), (len-1, len-1)]
    for x in 0..<n {
        for y in 0..<m {
            
            let curr = map[x][y]
            
            var count = 1
            
            for direction in directions {
                let dx = direction.0 + x
                let dy = direction.1 + y
                
                if dx >= 0 && dx < n && dy >= 0 && dy < m && map[dx][dy] == curr {
                    count += 1
                }
            }
            if count == 4 {
                result = max(len*len, result)
                break
            }
        }
    }
    len -= 1
}

print(result)
