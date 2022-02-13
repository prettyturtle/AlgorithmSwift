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
