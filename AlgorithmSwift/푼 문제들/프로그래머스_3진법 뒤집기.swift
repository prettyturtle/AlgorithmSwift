import Foundation

func solution(_ n: Int) -> Int {
    let base3 = String(n, radix: 3)
    let reversedBase3 = String(base3.reversed())
    let base10 = Int(reversedBase3, radix: 3)!
    
    return base10
}
