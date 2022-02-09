let computerCount = Int(readLine()!)!
let edges = Int(readLine()!)!

var graph = Array(repeating: [Int](), count: computerCount+1)
var check = Array(repeating: false, count: computerCount+1)

for _ in 1...edges {
    let pair = readLine()!.split(separator: " ").map { Int($0)! }
    graph[pair[0]].append(pair[1])
    graph[pair[1]].append(pair[0])
}

func bfs(startNode: Int) {
    var queue = [startNode]
    
    while !queue.isEmpty {
        let currentNode = queue.removeFirst()
        
        if !check[currentNode] {
            queue.append(contentsOf: graph[currentNode])
            check[currentNode] = true
        }
    }
}

bfs(startNode: 1)

let result = check.filter { $0 == true }

print(result.count - 1)
