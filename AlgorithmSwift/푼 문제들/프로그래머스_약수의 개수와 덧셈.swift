/*
 제곱수를 제외한 나머지 수들은
 약수의 개수가 모두 짝수개 이다.
 제곱수인지만 판별하면 된다.
 */

func isSquareNumber(_ n: Int, li: [Int]) -> Bool {
    if li.contains(n) {
        return true
    } else {
        return false
    }
}

func solution(_ left:Int, _ right:Int) -> Int {
    let squareNumberList = (1...32).map { $0 * $0 }
    var answer = 0
    for i in left...right {
        if isSquareNumber(i, li: squareNumberList) {
            answer -= i
        } else {
            answer += i
        }
    }
    
    return answer
}

