let NK = readLine()!.split(separator: " ").map { Int($0)! }
let N = NK[0]
let K = NK[1]

var check = Array(repeating: false, count: 100001)

func bfs(start: Int) {
    var queue: [(Int, Int)] = [(start, 0)]
    check[start] = true
    
    while !queue.isEmpty {
        let (currentNode, currentIndex) = queue.removeFirst()
        
        if currentNode == K {
            print(currentIndex)
            return
        }
        
        if currentNode > 0 {
            if !check[currentNode - 1] && currentNode - 1 >= 0 {
                queue.append((currentNode - 1, currentIndex + 1))
                check[currentNode - 1] = true
            }
        }
        
        if currentNode <= 99999 {
            if !check[currentNode + 1] {
                queue.append((currentNode + 1, currentIndex + 1))
                check[currentNode + 1] = true
            }
        }
        
        if currentNode * 2 <= 100000 {
            if !check[currentNode * 2] {
                queue.append((currentNode * 2, currentIndex + 1))
                check[currentNode * 2] = true
            }
        }
    }
}

bfs(start: N)
