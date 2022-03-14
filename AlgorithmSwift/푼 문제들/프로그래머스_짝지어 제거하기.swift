import Foundation

func solution(_ s: String) -> Int {
    var stack = [Character]()
    let arrS = Array(s)
    
    for i in 0..<arrS.count {
        if stack.isEmpty {
            stack.append(arrS[i])
        } else {
            if stack.last! == arrS[i] {
                stack.removeLast()
            } else {
                stack.append(arrS[i])
            }
        }
        
    }
    
    return stack.isEmpty ? 1 : 0
}

print(solution("baabaa") == 1)
print(solution("cdcd") == 0)
print(solution("") == 1)
