import Foundation

func solution(_ babbling: [String]) -> Int {
    let aa = [
        "aya": "*",
        "ye": "@",
        "woo": "!",
        "ma": "$"
    ]
    
    var babbling = babbling
    
    for i in 0..<babbling.count {        
        for (k, v) in aa {
            if babbling[i].contains(k) {
                babbling[i] = babbling[i].replacingOccurrences(of: k, with: v)
            }
        }
    }
    
    func isR(_ s: String) -> Bool {
        var cur = ""
        for i in s {
            if cur == String(i) {
                return false
            } else {
                cur = String(i)
            }
        }
        return true
    }
    
    var answer = 0
    
    babbling = babbling.filter { $0 == $0.uppercased() }
    
    for i in babbling {
        if isR(i) { answer += 1 }
    }
    
    return answer
}
