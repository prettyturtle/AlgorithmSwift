import Foundation

func solution(_ k: Int, _ score: [Int]) -> [Int] {
    var arr = [Int]()
    
    var answer = [Int]()
    
    for i in score {
        if arr.count < k {
            arr.append(i)
        } else {
            arr.sort(by: >)
            for j in 0..<k {
                if i >= arr[j] {
                    arr.removeLast()
                    arr = [i] + arr
                    break
                }
            }
        }
        arr.sort(by: >)
        answer.append(arr.last!)
    }
    print(answer)
    return answer
}
