import Foundation

func allCase(_ n: Int) -> [[Int]] {
    
    var ret = [[Int]]()
    let li = Array((1...n))
    
    func aa(current: [Int], numLi: [Int]) {
        if current.count == n {
            ret.append(current)
        }
        
        for i in numLi.indices {
            let newCurrent = current + [numLi[i]]
            var newLi = numLi
            newLi.remove(at: i)
            aa(current: newCurrent, numLi: newLi)
        }
    }
    
    aa(current: [], numLi: li)
    
    for i in ret.indices {
        for j in ret[i].indices {
            ret[i][j] -= 1
        }
    }
    
    return ret
}



func solution(_ k: Int, _ dungeons: [[Int]]) -> Int {
    let all = allCase(dungeons.count)
    
    var ret = [Int]()
    
    for i in all {
        var count = 0
        var k = k
        for j in i {
            if k >= dungeons[j][0] {
                count += 1
                k -= dungeons[j][1]
            }
        }
        ret.append(count)
    }
    return ret.max()!
}

print(solution(80, [[80,20], [50,40], [30,10]]) == 3)
print(solution(40, [[40, 20], [10, 10], [10, 10], [10, 10], [10, 10]]) == 4)
