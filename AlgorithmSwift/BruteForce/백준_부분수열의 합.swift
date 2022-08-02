let ns = readLine()!.split(separator: " ").map { Int($0)! }
let (n, s) = (ns[0], ns[1])

let seq = readLine()!.split(separator: " ").map { Int($0)! }

func combi(_ nums: [Int], _ targetNum: Int) -> [[Int]] {
    var result = [[Int]]()
    
    func combination(_ index: Int, _ nowCombi: [Int]) {
        if nowCombi.count == targetNum {
            result.append(nowCombi)
            return
        }
        for i in index..<nums.count {
            combination(i + 1, nowCombi + [nums[i]])
        }
    }
    
    combination(0, [])
    
    return result
}

var count = 0

for i in 1...n {
    for j in combi(seq, i) {
        if j.reduce(0, +) == s { count += 1 }
    }
}

print(count)
