import Foundation

func solution(_ absolutes: [Int], _ signs: [Bool]) -> Int {
    
    var count = 0
    
    for i in 0..<signs.count {
        if signs[i] { count += absolutes[i] }
        else { count -= absolutes[i] }
    }
    
    return count
}


// 이전 풀이
func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {

    var absolutes = absolutes
    var signs = signs

    for i in 0..<absolutes.count {
        if signs[i] == false {
            absolutes[i] *= -1
        }
    }

    let result = absolutes.reduce(0, +)

    return result
}

