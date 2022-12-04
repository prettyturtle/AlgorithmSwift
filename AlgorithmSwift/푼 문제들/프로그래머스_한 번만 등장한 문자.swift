import Foundation

func solution(_ s: String) -> String {
    var dic = [String: Int]()
    
    let sArr = s.map { String($0) }
    
    for i in sArr {
        if dic[i] == nil {
            dic[i] = 1
        } else {
            dic[i]! += 1
        }
    }
    
    var answer = ""
    
    for i in sArr {
        if dic[i] == 1 {
            answer += i
        }
    }
    
    answer = answer.map { String($0) }.sorted().joined()
    
    return answer
}
