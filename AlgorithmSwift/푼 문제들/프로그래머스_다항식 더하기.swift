import Foundation

func solution(_ polynomial: String) -> String {
    
    let a = polynomial.filter { $0 != " " }.split(separator: "+").map { String($0) }
    
    let x = a.filter { $0.contains("x") }.map { $0.replacingOccurrences(of: "x", with: "") }.map { Int($0) ?? 1 }.reduce(0, +)
    let y = a.filter { !$0.contains("x") }.map { Int($0) ?? 0 }.reduce(0, +)
    
    
    var ret = ""
    
    if x > 0 {
        if x == 1 {
            ret += "x"
        } else {
            ret += "\(x)x"
        }
        
        if y != 0 {
            ret += " + \(y)"
        }
    } else {
        if y != 0 {
            ret += "\(y)"
        }
    }
    
    return ret
}
