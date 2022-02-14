import Foundation

func solution(_ answers:[Int]) -> [Int] {
    
    let first = [1, 2, 3, 4, 5]
    let second = [2, 1, 2, 3, 2, 4, 2, 5]
    let third = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var count = [0, 0, 0, 0]
    
    for i in 0..<answers.count {
        if answers[i] == first[i % (first.count)] {
            count[1] += 1
        }
        if answers[i] == second[i % (second.count)] {
            count[2] += 1
        }
        if answers[i] == third[i % (third.count)] {
            count[3] += 1
        }
    }
    
    var returnArray = [Int]()
    
    for i in 1...3 {
        if count[i] == count.max() {
            returnArray.append(i)
        }
    }
    
    return returnArray
}
