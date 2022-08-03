func combination(_ nums: [Int], _ targetNum: Int) -> [[Int]] {
    var result = [[Int]]()
    
    func combi(_ index: Int, _ currentCombi: [Int]) {
        print(currentCombi, "🩱")
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


print(combination([1,2,3,4,5], 3))
