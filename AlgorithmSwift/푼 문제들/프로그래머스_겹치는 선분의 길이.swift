import Foundation

func solution(_ lines: [[Int]]) -> Int {
    
    var dict = [String: Int]()
    
    for line in lines {
        for i in line[0]..<line[1] {
            let key = "\(i),\(i + 1)"
            if dict[key] == nil {
                dict[key] = 1
            } else {
                dict[key]! += 1
            }
        }
    }
    
    var sum = 0
    
    for (key, value) in dict {
        if value >= 2 {
            sum += 1
        }
    }
    
    return sum
}
