import Foundation

extension ArraySlice where Element: Hashable {
    var asSet: Set<Element> {
        return Set(self)
    }
}

func solution(_ k: Int, _ tangerine: [Int]) -> Int {
    
    var dic = [Int: Int]()
    
    for i in tangerine {
        if dic[i] == nil {
            dic[i] = 1
        } else {
            dic[i]! += 1
        }
    }
    
    var arr = Array(repeating: 0, count: tangerine.count)
    
    let a = dic.sorted { $0.value > $1.value }
    
    var count = 0
    
    for (key, value) in a {
        for _ in 0..<value {
            arr[count] = key
            count += 1
        }
    }
    
    return arr[0..<k].asSet.count
}
