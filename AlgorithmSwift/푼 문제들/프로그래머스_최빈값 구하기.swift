import Foundation

func solution(_ array: [Int]) -> Int {
    var dic = [Int: Int]()
    
    for i in array {
        if dic[i] == nil {
            dic[i] = 1
        } else {
            dic[i]! += 1
        }
    }
    
    let t = dic.sorted { $0.value > $1.value }
    
    if t.count == 1 {
        return t.first!.key
    } else {
        if t[0].value == t[1].value {
            return -1
        } else {
            return t.first!.key
        }
    }
}
