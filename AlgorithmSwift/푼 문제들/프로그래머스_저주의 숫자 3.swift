import Foundation

func solution(_ n: Int) -> Int {
    
    var a = 0
    
    for i in 1...n {
        a += 1
        while a % 3 == 0 || String(a).contains("3") {
            a += 1
        }
        
    }
    
    return a
}
