import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    
    var 신고딕셔너리 = [String: [String]]() // 신고당한 사람: 신고한 사람
    
    // 신고딕셔너리 저장
    for i in Set(report) {
        let 신고한사람과신고당한사람 = i.split(separator: " ").map { String($0) }
        let 신고한사람 = 신고한사람과신고당한사람[0]
        let 신고당한사람 = 신고한사람과신고당한사람[1]
        
        if 신고딕셔너리[신고당한사람] == nil {
            신고딕셔너리[신고당한사람] = [신고한사람]
        } else {
            신고딕셔너리[신고당한사람]!.append(신고한사람)
        }
    }
    
    var returnDict = [String: Int]()
    
    // 한사람당 신고한 개수 추가하기 (없으면 추가 안함)
    for 신고 in 신고딕셔너리 {
        if 신고.value.count >= k {
            for 신고한사람 in 신고.value {
                if returnDict[신고한사람] == nil {
                    returnDict[신고한사람] = 1
                } else {
                    returnDict[신고한사람]! += 1
                }
            }
        }
    }
    
    var returnArray = [Int]()

    // 모든 사람들을 돌면서 확인, 신고한 적이 없으면 0, 있으면 그 값
    for id in id_list {
        if returnDict[id] == nil {
            returnArray.append(0)
        } else {
            returnArray.append(returnDict[id]!)
        }
    }
    
    return returnArray
}


// 재풀이
import Foundation

func solution(_ id_list: [String], _ report: [String], _ k: Int) -> [Int] {
    
    let setReport = Set(report).map { $0.split(separator: " ").map { String($0) } }
    var reportDict = [String: [String]]()
    
    for i in setReport {
        if reportDict[i[1]] == nil {
           reportDict[i[1]] = [i[0]]
        } else {
            reportDict[i[1]]!.append(i[0])
        }
    }
        
    var mailDict = [String: Int]()
    
    for i in id_list {
        mailDict[i] = 0
    }
    
    for value in reportDict.values {
        if value.count >= k {
            for i in value {
                mailDict[i]! += 1
            }
        }
    }
    
    var ret = [Int]()
    
    for i in id_list {
        ret.append(mailDict[i]!)
    }
    
    return ret
}
// https://velog.io/@yc1303/%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%A8%B8%EC%8A%A4-Lv.1-%EC%8B%A0%EA%B3%A0-%EA%B2%B0%EA%B3%BC-%EB%B0%9B%EA%B8%B0-Swift-%EB%AC%B8%EC%A0%9C%ED%92%80%EC%9D%B4
