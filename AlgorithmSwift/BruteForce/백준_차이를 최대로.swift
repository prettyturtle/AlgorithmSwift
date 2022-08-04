let n = Int(readLine()!)!

let nums = readLine()!.split(separator: " ").map { Int($0)! }

var count = 0

func permutation(_ arr: [Int], _ target: Int) -> [[Int]] {
    var result = [[Int]]()
    var arrDict = [Int: Bool]()
    for i in arr {
        arrDict[i] = false
    }
    
    func permute(_ current: [Int]) {
        if current.count == target {
            result.append(current)
            return
        }
        
        for i in 0..<arr.count {
            if arrDict[i] == true {
                continue
            } else {
                arrDict[i] = true
                permute(current + [arr[i]])
                arrDict[i] = false
            }
        }
        
    }
    
    permute([])
    
    return result
}

for i in permutation(nums, n) {
    var temp = 0
    for j in 1..<n {
        temp += abs(i[j] - i[j-1])
    }
    count = max(temp, count)
}

print(count)
