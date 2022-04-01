import Foundation

func rotate(arr: [[Int]]) -> [[Int]] {
    var ret = Array(repeating: [Int](), count: arr.first!.count)
    for i in arr {
        for j in 0..<i.count {
            ret[j].append(i[j])
        }
    }
    return ret
}

func product(arr1: [Int], arr2: [Int]) -> Int {
    var ret = 0
    
    for i in 0..<arr1.count {
        ret += arr1[i] * arr2[i]
    }
    
    return ret
}

func solution(_ arr1: [[Int]], _ arr2: [[Int]]) -> [[Int]] {
    let rotatedArr2 = rotate(arr: arr2)
    let row = arr1.count
    let col = rotatedArr2.count
    
    var ret = Array(repeating: Array(repeating: 0, count: col), count: row)
    
    for r in 0..<row {
        for c in 0..<col {
            let cell = product(arr1: arr1[r], arr2: rotatedArr2[c])
            ret[r][c] = cell
        }
    }
    return ret
}

print(solution([[1, 4], [3, 2], [4, 1]], [[3, 3], [3, 3]]) == [[15, 15], [15, 15], [15, 15]])
print(solution([[2, 3, 2], [4, 2, 4], [3, 1, 4]], [[5, 4, 3], [2, 4, 1], [3, 1, 1]]) == [[22, 22, 11], [36, 28, 18], [29, 20, 14]])
