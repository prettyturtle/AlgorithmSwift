import Foundation

extension String {
    var asInt: Int { Int(self)! }
}

var n = readLine()!.asInt

func isPrime(_ a: Int) -> Bool {
    if a == 1 { return false }
    for i in 2..<Int(sqrt(Double(n))) + 1 {
        if a % i == 0 {
            return false
        }
    }
    return true
}

func is팰린드롬(_ a: Int) -> Bool {
    let aS = String(a).map { String($0) }
    
    for i in 0..<(aS.count / 2) {
        if aS[i] != aS[aS.count - i - 1] {
            return false
        }
    }
    return true
}

while !(isPrime(n) && is팰린드롬(n)) {
    n += 1
}

print(n)
