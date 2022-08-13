// MARK: - 프로그래머스 Lv.2 문자열 압축
import Foundation

func solution(_ s: String) -> Int {
    
    if s.count == 1 {
        return 1
    }
    
    var count = s.count
    
    for i in 1...s.count / 2 {
        let splited = splitedString(s, of: i) // i 개씩 묶은 배열을 만든다
        let compare = compareArr(splited) // 비교하여 새로운 문자열을 만든다
        count = min(count, compare.count)
    }
    
    return count
}

func compareArr(_ arr: [String]) -> String {
    var ret = ""
    
    var temp = ""
    var count = 0
    
    for i in arr {
        if temp.isEmpty {
            temp = i
            count = 1
        } else {
            if temp == i {
                count += 1
            } else {
                ret += "\(count != 1 ? count.description : "")\(temp)"
                temp = i
                count = 1
            }
        }
    }
    
    if !temp.isEmpty {
        ret += "\(count != 1 ? count.description : "")\(temp)"
    }
    return ret
}

func splitedString(_ str: String, of: Int) -> [String] {
    var ret = [String]()
    var temp = ""
    
    var count = 0
    
    for i in str {
        if count == of {
            ret.append(temp)
            temp = ""
            count = 0
        }
        temp += String(i)
        count += 1
    }
    if !temp.isEmpty {
        ret.append(temp)
    }
    return ret
}

print(solution("aabbaccc") == 7)
print(solution("ababcdcdababcdcd") == 9)
print(solution("abcabcdede") == 8)
print(solution("abcabcabcabcdededededede") == 14)
print(solution("xababcdcdababcdcd") == 17)
