import Foundation

extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let mushs = (1...10).map { _ in readLine()!.asInt }

var idx = 0

var ssum = 0

for i in 0..<10 {
    ssum += mushs[i]
    
    if ssum == 100 {
        print(100)
        exit(0)
    } else if ssum > 100 {
        idx = i
        break
    }
}

let pre = ssum - mushs[idx]

let aa = abs(ssum - 100)
let bb = abs(pre - 100)

if aa > bb {
    print(pre)
} else {
    print(ssum)
}
