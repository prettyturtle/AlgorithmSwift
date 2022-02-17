let NK = readLine()!.split(separator: " ").map { Int($0)! }
let N = NK[0]
let K = NK[1]

let directions = [(-1, 0), (1, 0), (0, -1), (0, 1)]

var map = [[Int]]()

for _ in 1...N {
    let row = Array(readLine()!).map { Int(String($0))! }
    map.append(row)
}

func resetArray(n: Int) -> [[Bool]] {
    return Array(repeating: Array(repeating: false, count: 10), count: n)
}

var check = resetArray(n: N)
var isRemoved = resetArray(n: N)

// 연결되어있는 숫자들의 개수가 K개 이상인지 확인하는 함수
func dfs(x: Int, y: Int) -> Int {
    var ret = 1
    check[y][x] = true
    
    for direction in directions {
        let xx = x + direction.1
        let yy = y + direction.0
        
        if !(0...N-1).contains(yy) || !(0...9).contains(xx) {
            continue
        }
        if !check[yy][xx] && map[yy][xx] == map[y][x] {
            ret += dfs(x: xx, y: yy)
        }
    }
    return ret
}
// 삭제하는 함수
func remove(x: Int, y: Int, startValue: Int) {
    isRemoved[y][x] = true
    map[y][x] = 0
    for direction in directions {
        let xx = x + direction.1
        let yy = y + direction.0
        
        if !(0...N-1).contains(yy) || !(0...9).contains(xx) {
            continue
        }
        if !isRemoved[yy][xx] && map[yy][xx] == startValue {
            remove(x: xx, y: yy, startValue: startValue)
        }
    }
}
// 밑으로 내리는 함수
func down() {
    while true {
        var exist = false
        for y in (0...N-2).reversed() {
            for x in 0..<10 {
                if map[y][x] != 0 && map[y+1][x] == 0 {
                    map[y+1][x] = map[y][x]
                    map[y][x] = 0
                    exist = true
                }
            }
        }
        if !exist {
            break
        }
    }
}

while true {
    var exist = false
    check = resetArray(n: N)
    isRemoved = resetArray(n: N)
    
    for y in 0..<N {
        for x in 0..<10 {
            if map[y][x] != 0 && !check[y][x] {
                let count = dfs(x: x, y: y)
                
                if count >= K {
                    exist = true
                    remove(x: x, y: y, startValue: map[y][x])
                }
            }
        }
    }
    if !exist {
        break
    }
    down()
}

for i in map {
    let i = i.map { String($0) }
    print(i.joined(separator: ""))
}
