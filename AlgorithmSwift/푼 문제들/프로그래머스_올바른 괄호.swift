import Foundation

func solution(_ s: String) -> Bool {
    var ans = false

    let rightQueue = s.map { String($0) }
    if rightQueue.first == ")" || rightQueue.count == 1 {
        return false
    }
    
    var count = 0
    for i in rightQueue {
        if count == 0 && i == ")" {
            return false
        }
        
        if i == "(" {
            count += 1
        } else {
            count -= 1
        }
    }
    if count == 0 { ans = true }
    return ans
}

print(solution("()()") == true)
print(solution("(())()") == true)
print(solution(")()(") == false)
print(solution("(()(") == false)
print(solution("())(") == false)
