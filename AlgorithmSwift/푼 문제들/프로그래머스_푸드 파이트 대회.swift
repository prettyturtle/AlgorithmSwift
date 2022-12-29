import Foundation

func solution(_ food: [Int]) -> String {
    let foods = food[1...].map { $0 / 2 }
    
    var ret = ""
    
    for i in 0..<foods.count {
        for j in 0..<foods[i] {
            ret += (i + 1).description
        }
    }
    
    return ret + "0" + ret.reversed()
}
