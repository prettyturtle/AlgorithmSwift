let testCase = Int(readLine()!)!

for _ in 1...testCase {

    let f = Int(readLine()!)!

    var parent: [String: String] = [:]
    var count: [String: Int] = [:]
    
    func findParent(_ x: String) -> String {
        if parent[x] == x {
            return x
        } else {
            let lastParent = findParent(parent[x]!)
            parent[x] = lastParent
            return parent[x]!
        }
    }
    func union(_ x: String, _ y: String) -> Void {
        let parentX = findParent(x)
        let parentY = findParent(y)
        
        if parentX != parentY {
            parent[parentY] = parentX
            count[parentX]! += count[parentY]!
        }

    }
    
    for _ in 1...f {
        let names = readLine()!.split(separator: " ")
        let left = String(names[0]), right = String(names[1])
        
        if parent.keys.contains(left) == false {
            parent[left] = left
            count[left] = 1
        }
        if parent.keys.contains(right) == false {
            parent[right] = right
            count[right] = 1
        }
        
        union(left, right)
        print(count[findParent(left)]!)
        
    }
}


