import Foundation

func solution(_ n: Int) -> Int {
    let newN = n - 1
    for i in 2...newN {
        if newN % i == 0 {
            return i
        }
    }
    return 0
}
