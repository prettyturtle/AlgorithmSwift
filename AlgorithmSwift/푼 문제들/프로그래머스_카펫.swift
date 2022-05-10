import Foundation

func solution(_ brown: Int, _ yellow: Int) -> [Int] {
    
    let area = brown + yellow
    
    var li = [[Int]]()
    
    for i in 3...area {
        if area % i == 0 {
            if li.contains([max(i, area / i), min(i, area / i)]) { break }
            li.append([max(i, area / i), min(i, area / i)])
        }
    }
    if li.count == 1 {
        return li.first!
    }
    for i in li {
        if findSize(arr: i).0 == brown && findSize(arr: i).1 == yellow {
            return i
        }
    }

    return []
}

func findSize(arr: [Int]) -> (Int, Int) {
    let brown = arr[0] * 2 + (arr[1] - 2) * 2
    let yellow = (arr[0] * arr[1]) - brown
    let ret = (brown, yellow)
    return ret
}

print(solution(10, 2) == [4, 3])
print(solution(8, 1) == [3, 3])
print(solution(24, 24) == [8, 6])
