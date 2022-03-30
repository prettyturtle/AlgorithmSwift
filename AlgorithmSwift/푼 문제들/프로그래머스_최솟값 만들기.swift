import Foundation

func solution(_ A: [Int], _ B: [Int]) -> Int {
    var ans = 0
    
    let n = A.count
    let a = A.sorted(by: <)
    let b = B.sorted(by: >)
    
    for i in 0..<n {
        let value = a[i] * b[i]
        ans += value
    }

    return ans
}
