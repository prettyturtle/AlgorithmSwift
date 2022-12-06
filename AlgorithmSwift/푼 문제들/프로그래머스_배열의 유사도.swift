import Foundation

func solution(_ s1: [String], _ s2: [String]) -> Int {
    var dic = [String: Bool]()
    
    for i in s1 {
        dic[i] = true
    }
    
    var count = 0
    
    for i in s2 {
        if dic[i] != nil {
            count += 1
        }
    }
    
    return count
}
