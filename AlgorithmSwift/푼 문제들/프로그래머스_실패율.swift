import Foundation

/*
 stages에서 1부터 N(스테이지 개수)까지
 각 스테이지에서 성공한 사람과 실패한 사람이 몇명인지 찾는다.
 -> 1스테이지에는 몇명, 2스테이지에는 몇명 ... ---(1)
 
 (1)에서 나온 수로 실패율을 계산(계산할 때, 성공한 사람들의 수가 0이면 실패율 0) ---(2)
 
 (2)에서 나온 실패율들을 스테이지 번호와 함께 배열에 저장 ---(3)
 
 실패율 배열에서 실패율을 기준으로 정렬한다(조건 확인!) ---(4)
 */



// 시간초과가 나는 풀이
// func solution(_ N:Int, _ stages:[Int]) -> [Int] {
//     // (실패율, 스테이지) 배열
//     var failRateList = [(Double, Int)]()
//     var stages = stages
    
//     for i in 1...N {
//         stages = stages.filter { $0 >= i }
//         // 현재 스테이지(i)를 실패한 사람들의 수(failCount)
//         let failCount = stages.filter { $0 == i }.count // ---(1)
//         // 현재 스테이지(i)를 성공한 사람들의 수(successCount)
//         let successCount = stages.count // ---(1)
        
//         // (2)
//         var failRate: Double = 0.0
//         if successCount == 0 {
//             failRate = 0.0
//         } else {
//             failRate = Double(failCount) / Double(successCount)
//         }
        
//         // (3)
//         failRateList.append((failRate, i))
//     }
    
//     // (4)
//     failRateList.sort {
//         if $0.0 == $1.0 {
//             return $0.1 < $1.1
//         } else {
//             return $0.0 > $1.0
//         }
//     }
    
//     let ret = failRateList.map { $0.1 }
//     return ret
// }


// 시간초과 안나는 풀이
func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    
    var stagesDict = [Int: Int]()
    for i in stages {
        if stagesDict[i] == nil {
            stagesDict[i] = 1
        } else {
            stagesDict[i]! += 1
        }
    }
    
    var failRateList = [(Double, Int)]()
    
    for i in 1...N {
        let failCount = stagesDict[i] ?? 0
        let successCount = stagesDict.reduce(0) {
            if $1.key >= i {
                return $0 + $1.value
            }
            return $0
        }
        
        var failRate: Double = 0.0
        if successCount == 0 {
            failRate = 0.0
        } else {
            failRate = Double(failCount) / Double(successCount)
        }
        
        failRateList.append((failRate, i))
    }
    
    failRateList.sort {
        if $0.0 == $1.0 {
            return $0.1 < $1.1
        } else {
            return $0.0 > $1.0
        }
    }
    
    let ret = failRateList.map { $0.1 }
    return ret
}

print(solution(5, [2, 1, 2, 6, 2, 4, 3, 3]) == [3,4,2,1,5])
print(solution(4, [4,4,4,4,4]) == [4,1,2,3])
