 import Foundation

func eratos(number: Int) -> [Int] {
    var numbers = Array(repeating: true, count: number + 1)
    numbers[0] = false
    numbers[1] = false
    for idx in 2..<numbers.count {
        if numbers[idx] {
            if idx * 2 < numbers.count {
                for idx2 in stride(from: idx * 2, to: numbers.count, by: idx) {
                    numbers[idx2] = false
                }
            }
        }
    }
    let primes = numbers.enumerated().filter({$0.element}).map({$0.offset})
    return primes
}

func a(_ n: Int, _ primes: [Int]) -> Int {
    var n = n

    var ret = 1

    for prime in primes {
        if n < prime { break }
        var temp = 0

        while n % prime == 0 {
            n /= prime
            temp += 1
        }
        if temp > 0 {
            ret *= temp + 1
        }
    }
    
    return ret
}


func solution(_ number: Int, _ limit: Int, _ power: Int) -> Int {
    
    var ret = 0
    let primes = eratos(number: number)
    
    for i in 1...number {
        let n = a(i, primes)
        
        if n > limit {
            ret += power
        } else {
            ret += n
        }
    }
    
    return ret
}
