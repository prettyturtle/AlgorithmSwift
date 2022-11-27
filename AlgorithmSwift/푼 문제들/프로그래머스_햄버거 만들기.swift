import Foundation

func solution(_ ingredient: [Int]) -> Int {
    
    var left = [Int]()
    let right = ingredient
    var count = 0
    
    for i in right {
        left.append(i)
        let lc = left.count
        if lc >= 4 {
            if left[lc - 1] == 1 && left[lc - 2] == 3 && left[lc - 3] == 2 && left[lc - 4] == 1 {
                for _ in 1...4 {
                    left.removeLast()
                }
                count += 1
            }
        }
    }
    
    return count
}
