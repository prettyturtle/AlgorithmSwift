import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    let arr = d.sorted()
    var budget = budget
    var ret = 0
    for i in arr {
        if budget >= i {
            budget -= i
            ret += 1
        }
    }
    
    return ret
}
