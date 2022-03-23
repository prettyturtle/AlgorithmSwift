import Foundation

func nextGameNumber(_ n: Int) -> Int {
    if n % 2 == 0 {
        return n / 2
    } else {
        return (n + 1) / 2
    }
}

func solution(_ n: Int, _ a: Int, _ b: Int) -> Int {
    
    var round = 0
    var numberA = a
    var numberB = b
   
    while numberB != numberA {
        round += 1
        numberA = nextGameNumber(numberA)
        numberB = nextGameNumber(numberB)
    }
    return round
}
