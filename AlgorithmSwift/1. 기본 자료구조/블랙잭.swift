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
