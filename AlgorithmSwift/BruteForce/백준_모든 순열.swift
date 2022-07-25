func permute(_ targetNum: Int) -> [[Int]] {
    var ret = [[Int]]()
    var visited = Array(repeating: false, count: targetNum)
    
    func permutation(_ temp: [Int]) {
        if temp.count == targetNum {
            ret.append(temp)
            return
        }
        
        for i in 0..<targetNum {
            if !visited[i] {
                visited[i] = true
                permutation(temp + [i+1])
                visited[i] = false
            }
        }
    }
    permutation([])
    return ret
}

let n = Int(readLine()!)!

for i in permute(n) {
    i.forEach {
        print($0, terminator: " ")
    }
    print()
}
