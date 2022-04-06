import Foundation

func solution(_ s: String) -> [Int] {
    var s = s
    
    var count = 0
    var zeroCount = 0
    
    while !(String(s.count, radix: 2) == "1") {
        count += 1
        _ = s.map { if $0 == "0" { zeroCount += 1 } }
        s.removeAll(where: { $0 == "0" })
        let tempCount = s.count
        s = String(tempCount, radix: 2)
    }
    
    return [count, zeroCount]
}

print(solution("110010101001") == [3,8])
print(solution("01110") == [3,3])
print(solution("1111111") == [4,1])
