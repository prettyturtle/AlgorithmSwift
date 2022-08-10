let s = Int(readLine()!)!
let sqs = readLine()!.split(separator: " ").map { Int($0)! }

func combination(_ nums: [Int], _ targetNum: Int) -> [[Int]] {
    var result = [[Int]]()
    
    func combi(_ index: Int, _ currentCombi: [Int]) {
        if currentCombi.count == targetNum {
            result.append(currentCombi)
            return
        }
        for i in index..<nums.count {
            combi(i + 1, currentCombi + [nums[i]])
        }
    }
    
    combi(0, [])
    
    return result
}

var temp = Set<Int>()

for i in 1...s {
    for j in combination(sqs, i) {
        temp.insert(j.reduce(0, +))
    }
}

let result = temp.map { $0 }.sorted()

var count = 1

while true {
    if count > result.count {
        break
    }
    
    if count == result[count - 1] {
        count += 1
    } else {
        break
    }
}
print(count)
