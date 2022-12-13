import Foundation

func isEquation(_ x: Int, _ d: Int) -> Int {
    return Int(sqrt(Double(d * d - x * x)))
}

func solution(_ k: Int, _ d: Int) -> Int64 {
    var ret: Int64 = 0
    
    for i in 0...d {
        if i * k <= d {
            let y = isEquation(i * k, d)
            ret += Int64(y / k) + 1
        }
    }
    
    return ret
}
