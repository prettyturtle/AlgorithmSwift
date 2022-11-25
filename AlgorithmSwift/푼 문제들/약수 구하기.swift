import Foundation

extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let nk = readLine()!.asIntArr

let (n, k) = (nk[0], nk[1])

var count = 0

for i in 1...n {
    if n % i == 0 {
        count += 1
        if count == k {
            print(i)
            exit(0)
        }
    }
}

print(0)
