import Foundation

func solution(_ lottos: [Int], _ win_nums: [Int]) -> [Int] {
    
    var maxCount = 7
    var minCount = 7
    
    for i in lottos {
        if win_nums.contains(i) {
            maxCount -= 1
            minCount -= 1
        }
    }
    
    for i in lottos {
        if i == 0 {
            maxCount -= 1
        }
    }
    if minCount == 7 {
        minCount = 6
    }
    if maxCount == 7 {
        maxCount = 7
    }
    return [maxCount, minCount]
}
