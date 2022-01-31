let n = Int(readLine()!)!
let s = readLine()!.map { String($0) }

var bonusCount = 0
var score = 0

for i in 1...s.count {
    if s[i-1] == "O" {
        score += i + bonusCount
        bonusCount += 1
    } else {
        bonusCount = 0
    }
}

print(score)
