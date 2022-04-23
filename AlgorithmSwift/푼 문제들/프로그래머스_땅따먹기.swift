import Foundation

func solution(_ land: [[Int]]) -> Int {
    var current = land[0]
    for i in 1..<land.count {
        current = compareArr(arr1: current, arr2: land[i])
    }
    
    return current.max()!
}

func compareArr(arr1: [Int], arr2: [Int]) -> [Int] {
    var arr2 = arr2
    let arrs = [
        [arr1[1], arr1[2], arr1[3]],
        [arr1[0], arr1[2], arr1[3]],
        [arr1[0], arr1[1], arr1[3]],
        [arr1[0], arr1[1], arr1[2]]
    ]
    for i in 0...3 {
        arr2[i] += arrs[i].max()!
    }
    return arr2
}
print(solution([[1,2,3,5],[5,6,7,8],[4,3,2,1]]) == 16)
print(solution([[1,2,3,5],[5,6,7,100],[4,3,2,1]]) == 107)

/*
 더 빠른 다른 사람의 풀이
 
 import Foundation

 func solution(_ land:[[Int]]) -> Int{
     var answer = 0
     var land = land
     for i in 0..<(land.count-1) {
         land[i+1][0] += max(land[i][1], land[i][2], land[i][3])
         land[i+1][1] += max(land[i][0], land[i][2], land[i][3])
         land[i+1][2] += max(land[i][0], land[i][1], land[i][3])
         land[i+1][3] += max(land[i][0], land[i][1], land[i][2])
     }

     guard let last = land.last else { return 0 }
     return max(last[0],last[1], last[2], last[3])
 }
 */
