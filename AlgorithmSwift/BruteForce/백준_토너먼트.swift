let njh = readLine()!.split(separator: " ").map { Int($0)! }
let (n, j, h) = (njh[0], njh[1], njh[2])

var newJ = j
var newH = h

var count = 1

while true {
    if min(newH, newJ) % 2 == 1 && min(newH, newJ) + 1 == max(newH, newJ) {
        print(count)
        break
    }
    
    if newJ == 1 && newH == 1 {
        print(-1)
        break
    }
    
    if newJ % 2 == 0 {
        newJ = newJ / 2
    } else {
        newJ = (newJ + 1) / 2
    }
    
    if newH % 2 == 0 {
        newH = newH / 2
    } else {
        newH = (newH + 1) / 2
    }
    
    count += 1
}
