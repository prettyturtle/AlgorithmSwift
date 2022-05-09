func solution(n: Int) {
    var dict = [Int: Int]()
    for i in 1..<n {
        if i != n-i {
            dict[i] = n - i
        }
    }
    var result = Set<[Int]>()
    for i in 1..<n {
        if let pair = dict[i] {
            let temp = [min(i, pair), max(i, pair)]
            result.insert(temp)
        }
    }
    let answer = Array(result).sorted { $0[0] < $1[0] }
    let resultString = answer.map { "\($0[0]) \($0[1])" }.joined(separator: ", ")
    print("Pairs for \(n): \(resultString)")
}

let n = Int(readLine()!)!
for _ in 1...n {
    let k = Int(readLine()!)!
    solution(n: k)
}
