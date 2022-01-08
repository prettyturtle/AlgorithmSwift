var graph = [String: [String]]()

graph["A"] = ["B", "C"]
graph["B"] = ["A", "D"]
graph["C"] = ["A", "G", "H", "I"]
graph["D"] = ["B", "E", "F"]
graph["E"] = ["D"]
graph["F"] = ["D"]
graph["G"] = ["C"]
graph["H"] = ["C"]
graph["I"] = ["C", "J"]
graph["J"] = ["I"]


func bfs(from graph: [String: [String]], at startNode: String) -> [String] {
    var visitedQueue = [String]()
    var needVisitedQueue = [String]()
    
    needVisitedQueue.append(startNode)
    
    while !needVisitedQueue.isEmpty {
        let node = needVisitedQueue.removeFirst()
        if !visitedQueue.contains(node) {
            visitedQueue.append(node)
            needVisitedQueue.append(contentsOf: graph[node] ?? [])
        }
    }
    return visitedQueue
}

func dfs(from graph: [String: [String]], at startNode: String) -> [String] {
    var visitedQueue = [String]()
    var needVisitedStack = [String]()
    
    needVisitedStack.append(startNode)
    
    while !needVisitedStack.isEmpty {
        let node = needVisitedStack.removeLast()
        if !visitedQueue.contains(node) {
            visitedQueue.append(node)
            needVisitedStack.append(contentsOf: graph[node] ?? [])
        }
    }
    return visitedQueue
}

print(bfs(from: graph, at: "A"))
print(dfs(from: graph, at: "A"))
