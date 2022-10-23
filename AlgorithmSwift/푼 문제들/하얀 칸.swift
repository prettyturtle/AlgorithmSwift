let field = (1...8).map { _ in readLine()!.map { String($0) } }

var answer = 0

for i in 0...7 {
    for j in 0...7 {
        if (i + j) % 2 == 0 {
            if field[i][j] == "F" {
                answer += 1
            }
        }
    }
}
print(answer)
