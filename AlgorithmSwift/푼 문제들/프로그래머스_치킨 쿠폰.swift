import Foundation
func aa(_ num: Int) -> (Int, Int) {
    
    return (num / 10, num % 10)
}
func solution(_ chicken:Int) -> Int {
    var chi = chicken
    var cou = 0
    
    var answer = 0
    
    while true {
        if chi == 0 {
            let re = cou / 10
            answer += re
            cou -= re * 10
            cou += re
            
            answer += cou / 10
            break
        }
        let res = aa(chi)
        chi = res.0
        answer += res.0
        cou += res.1
    }
    return answer
}
