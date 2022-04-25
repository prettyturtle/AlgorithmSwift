import Foundation

func isRight(_ arr: [String]) -> Bool {
    var leftStack = [String]()
    for i in arr {
        if leftStack.isEmpty { leftStack.append(i) }
        else {
            switch i {
            case ")":
                if leftStack.last == "(" { leftStack.removeLast() }
                else { leftStack.append(i) }
            case "}":
                if leftStack.last == "{" { leftStack.removeLast() }
                else { leftStack.append(i) }
            case "]":
                if leftStack.last == "[" { leftStack.removeLast() }
                else { leftStack.append(i) }
            default:
                leftStack.append(i)
            }
        }
    }
    return leftStack.isEmpty ? true : false
}
func solution(_ s: String) -> Int {
    var ret = 0
    var count = s.count
    var arrS = s.map { String($0) }
    
    while count > 0 {
        count -= 1
        if isRight(arrS) {
            ret += 1
        }
        let first = arrS.removeFirst()
        arrS.append(first)
    }
    return ret
}

print(solution("[](){}") == 3)
print(solution("}]()[{") == 2)
print(solution("[)(]") == 0)
print(solution("}}}") == 0)
