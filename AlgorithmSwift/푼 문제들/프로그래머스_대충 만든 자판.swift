import Foundation

func solution(_ keymap: [String], _ targets: [String]) -> [Int] {
    
    var dic = [String: Int]()
    
    for m in keymap {
        let temp = m.map { String($0) }
        
        for i in 0..<temp.count {
            let co = i + 1
            
            if dic[temp[i]] != nil {
                dic[temp[i]]! = min(dic[temp[i]]!, co)
            } else {
                dic[temp[i]] = co
            }
        }
        
        
    }
    
    return targets.map { target -> Int in
        let temp = target.map { String($0) }
        
        var sum = 0
        
        for i in 0..<temp.count {
            if dic[temp[i]] == nil {
                return -1
            } else {
                sum += dic[temp[i]]!
            }
        }
        
        return sum
    }
}
