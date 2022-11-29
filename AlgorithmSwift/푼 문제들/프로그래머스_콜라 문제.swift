import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var cur = n
    var sum = 0
    
    while cur >= a {
        let temp1 = (cur / a) * b
        let temp2 = cur % a
        cur = temp1 + temp2
        sum += temp1
    }
    return sum
}
