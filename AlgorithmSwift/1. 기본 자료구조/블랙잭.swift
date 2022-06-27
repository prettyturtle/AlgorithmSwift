import Foundation

let inputLine = readLine()!.components(separatedBy: " ").map { Int($0)! }
let cardNums = readLine()!.components(separatedBy: " ").map { Int($0)! }
let lenOfCardNums = inputLine[0]
let limitNumber = inputLine[1]
var count = 0
for i in 0...lenOfCardNums-3 {
    for j in i+1...lenOfCardNums-2 {
        for k in j+1...lenOfCardNums-1 {
            let sumOfCards = cardNums[i]+cardNums[j]+cardNums[k]
            if sumOfCards <= limitNumber {
                count = max(count, sumOfCards)
            }
        }
    }
}
print(count)


// 재풀이
let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])
let cards = readLine()!.split(separator: " ").map { Int($0)! }

var maxValue = 0

for i in 0..<cards.count - 2 {
    for j in i+1..<cards.count - 1 {
        for k in j+1..<cards.count {
            let sum = cards[i] + cards[j] + cards[k]
            if sum <= m {
                maxValue = max(maxValue, sum)
            }
        }
    }
}

print(maxValue)
