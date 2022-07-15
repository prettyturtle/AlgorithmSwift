let nmv = readLine()!.split(separator: " ").map { Int($0)! }

let (n, m, v) = (nmv[0], nmv[1], nmv[2])

var g = [Int: [Int]]()

for _ in 1...m {
    let ab = readLine()!.split(separator: " ").map { Int($0)! }
    let (a, b) = (ab[0], ab[1])
    
    if g[a] == nil {
        g[a] = [b]
    } else {
        g[a]!.append(b)
    }
    if g[b] == nil {
        g[b] = [a]
    } else {
        g[b]!.append(a)
    }
}

func bfs(_ start: Int, _ graph: [Int: [Int]]) {
    var queue = [start]
    var check = Array(repeating: false, count: n+1)
    
    
    while !queue.isEmpty {
        let first = queue.removeFirst()
        
        if !check[first] {
            print(first, terminator: " ")
            check[first] = true
            let temp = (graph[first] ?? []).sorted()
            queue.append(contentsOf: temp)
        }
    }
}

func dfs(_ start: Int, _ graph: [Int: [Int]]) {
    var stack = [start]
    var check = Array(repeating: false, count: n+1)
    
    while !stack.isEmpty {
        let last = stack.removeLast()
        
        if !check[last] {
            print(last, terminator: " ")
            check[last] = true
            let temp = (graph[last] ?? []).sorted(by: >)
            stack.append(contentsOf: temp)
        }
    }
}

dfs(v, g)
print()
bfs(v, g)
