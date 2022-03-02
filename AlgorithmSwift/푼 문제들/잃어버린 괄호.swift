let expression = readLine()!.split(separator: "-").map { String($0) }

if expression.count == 1 {
    let answer = expression[0].split(separator: "+").map { Int($0)! }.reduce(0, +)
    print(answer)
} else {
//    let answer = Int(expression[0])!
    let answer = expression[0].split(separator: "+").map { Int($0)! }.reduce(0, +)
    var subAnswer = 0
    for i in 1..<expression.count {
        let subExpression = expression[i].split(separator: "+").map { Int($0)! }
        for j in subExpression {
            subAnswer += j
        }
    }
    print(answer - subAnswer)
}
