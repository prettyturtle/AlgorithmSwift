import Foundation

func getIntersectionPoint(equ1: [Int], equ2: [Int]) -> [Int] {
    let equ1 = equ1.map { Double($0) }
    let equ2 = equ2.map { Double($0) }
    let A = equ1[0]
    let B = equ1[1]
    let E = equ1[2]
    let C = equ2[0]
    let D = equ2[1]
    let F = equ2[2]
    
    let 분모 = A * D - B * C
    let x분자 = B * F - E * D
    let y분자 = E * C - A * F
    if 분모 == 0.0 {
        return []
    } else {
        let x = x분자 / 분모
        let y = y분자 / 분모
        let xd = x분자.truncatingRemainder(dividingBy: 분모)
        let yd = y분자.truncatingRemainder(dividingBy: 분모)
        
        if xd == 0.0 && yd == 0.0 {
            return [Int(x), Int(y)]
        }
        
        return []
    }
}

func solution(_ line: [[Int]]) -> [String] {
    var intersectionPoints = [[Int]]()
    for i in 0..<line.count - 1 {
        for j in i+1..<line.count {
            let intersectionPoint = getIntersectionPoint(equ1: line[i], equ2: line[j])
            if !intersectionPoint.isEmpty { intersectionPoints.append(intersectionPoint) }
        }
    }
    
    let ySortedIntersectionPoints = intersectionPoints.sorted {
        if $0[1] != $1[1] {
            return $0[1] > $1[1]
        } else {
            return $0[0] < $1[0]
        }
    }
    
    let xSortedIntersectionPoints = intersectionPoints.sorted {
        if $0[0] != $1[0] {
            return $0[0] > $1[0]
        } else {
            return $0[1] < $1[1]
        }
    }
    
    let width = xSortedIntersectionPoints.first![0] - xSortedIntersectionPoints.last![0] + 1
    let height = ySortedIntersectionPoints.first![1] - ySortedIntersectionPoints.last![1] + 1
    var map: [[String]] = Array(repeating: Array(repeating: "", count: width), count: height)
    let startX = xSortedIntersectionPoints.last![0]
    var startY = ySortedIntersectionPoints.first![1]
    
    for i in 0..<map.count {
        var x = startX
        for j in 0..<map[i].count {
            if ySortedIntersectionPoints.contains([x, startY]) {
                map [i][j] = "*"
                
            } else {
                map[i][j] = "."
            }
            x += 1
        }
        startY -= 1
    }
    
    
    var ret = [String]()
    
    for i in map {
        ret.append(i.joined(separator: ""))
    }
    
    return ret
}

print(solution([[2, -1, 4], [-2, -1, 4], [0, -1, 1], [5, -8, -12], [5, 8, 12]]) == ["....*....", ".........", ".........", "*.......*", ".........", ".........", ".........", ".........", "*.......*"])
print(solution([[0, 1, -1], [1, 0, -1], [1, 0, 1]]) == ["*.*"])
print(solution([[1, -1, 0], [2, -1, 0]]) == ["*"])
print(solution([[1, -1, 0], [2, -1, 0], [4, -1, 0]]) == ["*"])
