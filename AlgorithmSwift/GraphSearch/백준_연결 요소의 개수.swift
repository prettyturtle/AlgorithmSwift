let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])

var map = Array(repeating: [Int](), count: n + 1)
var check = Array(repeating: false, count: n + 1)

if m != 0 {
    for _ in 1...m {
        let uv = readLine()!.split(separator: " ").map { Int($0)! }
        let (u, v) = (uv[0], uv[1])
        
        map[u].append(v)
        map[v].append(u)
    }

    func bfs(_ start: Int, _ map: [[Int]]) {
        check[start] = true
        check[start] = true
        for i in map[start] {
            if !check[i] {
                bfs(i, map)
            }
        }
    }

    var count = 0

    for i in 1...n {
        if !check[i] {
            count += 1
            bfs(i, map)
        }
    }
    print(count)
} else {
    print(n)
}
