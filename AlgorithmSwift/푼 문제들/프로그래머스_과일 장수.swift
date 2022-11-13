func solution(_ k: Int, _ m: Int, _ score: [Int]) -> Int {
    
    let sscore = score.sorted(by: >)
    
    let scoreLength = score.count
    
    let c = scoreLength / m
    
    var cc = 0
    
    var ssscore = [[Int]]()
    
    for _ in 0..<c {
        var temp = [Int]()
        for _ in 1...m {
            temp += [sscore[cc]]
            cc += 1
        }
        ssscore.append(temp.sorted(by: <))
    }
    var answer = 0
    
    for sss in ssscore {
        answer += m * sss.min()!
    }
    
    return answer
}

print(solution(3, 4, [1, 2, 3, 1, 2, 3, 1]) == 8)
print(solution(4, 3, [4, 1, 2, 2, 4, 4, 4, 4, 1, 2, 4, 2]) == 33)
