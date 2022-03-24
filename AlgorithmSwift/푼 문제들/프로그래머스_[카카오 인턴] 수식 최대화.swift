import Foundation

func makeAllCase(li: [String], target: Int) -> [[String]] {
    var result = [[String]]()
    var isVisited = Array(repeating: false, count: li.count)
    
    func permutation(current: [String]) {
        if current.count == target {
            result.append(current)
            return
        }
        
        for i in 0..<li.count {
            if !isVisited[i] {
                isVisited[i] = true
                permutation(current: current + [li[i]])
                isVisited[i] = false
            }
        }
    }
    permutation(current: [])
    return result
}

func solution(_ expression: String) -> Int64 {
    
    let numbers = expression.split(whereSeparator: { !$0.isNumber }).map { Int64($0)! }
    let operators = expression.split(whereSeparator: { $0.isNumber }).map { String($0) }
    let operatorsSet = Array(Set(operators))
    let priorities = makeAllCase(li: operatorsSet, target: operatorsSet.count)
    var maxValue: Int64 = 0
    
    for priority in priorities {
        var newNumbers = numbers
        var newOperators = operators
        for pri in priority {
            while newOperators.contains(pri) {
                if let i = newOperators.firstIndex(of: pri) {
                    switch pri {
                    case "+":
                        newNumbers[i] += newNumbers[i+1]
                    case "-":
                        newNumbers[i] -= newNumbers[i+1]
                    case "*":
                        newNumbers[i] *= newNumbers[i+1]
                    default:
                        break
                    }
                    
                    newNumbers.remove(at: i+1)
                    newOperators.remove(at: i)
                }
            }
        }
        maxValue = max(maxValue, abs(newNumbers[0]))
    }
    
    return maxValue
}


print(solution("100-200*300-500+20") == 60420)
print(solution("50*6-3*2") == 300)
