import Foundation

func solution(_ n: Int) -> Int {
    var answer = n + 1
    let nBinary1Count = String(n, radix: 2).reduce(0) { partialResult, char in
        if char == "1" {
            return partialResult + 1
        }
        return partialResult
    }
    
    while true {
        let answerBinary1Count = String(answer, radix: 2).reduce(0) { partialResult, char in
            if char == "1" {
                return partialResult + 1
            }
            return partialResult
        }
        
        if answerBinary1Count == nBinary1Count {
            break
        } else {
            answer += 1
        }
    }
    return answer
}

print(solution(78) == 83)
print(solution(15) == 23)
