// A -> B (A 1개 = B 1개)
// B -> BA (B 1개 = B 1개, A 1개)

func solution(ab: (Int, Int), count: Int) -> (Int, Int) {
    if count == 0 {
        return ab
    }
    return solution(ab: (ab.1, ab.1 + ab.0), count: count-1)
}

let result = solution(ab: (1, 0), count: Int(readLine()!)!)
print("\(result.0) \(result.1)")
