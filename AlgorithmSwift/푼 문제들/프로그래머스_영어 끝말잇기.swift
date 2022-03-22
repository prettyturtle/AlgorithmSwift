import Foundation

func solution(_ n: Int, _ words: [String]) -> [Int] {
    
    var li = [String]()
    var lastChar = ""
    var person = 1
    for i in 0..<words.count {
        if person == n+1 {
            person = 1
        }
        if li.isEmpty {
            li.append(words[i])
            lastChar = String(words[i].last!)
            person += 1
            continue
        }
        
        if !li.contains(words[i]) && String(words[i].first!) == lastChar {
            li.append(words[i])
            lastChar = String(words[i].last!)
            person += 1
        } else {
            return [person, (i / n) + 1]
        }
    }
    
    return [0, 0]
}
