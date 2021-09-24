// 시간초과

let n = Int(readLine()!)!

var countingArray = Array(repeating: 0, count: 10001)

for _ in 1...n {
    let num = Int(readLine()!)!
    countingArray[num] += 1
}

for i in 0..<countingArray.count {
    if countingArray[i] != 0 {
        for _ in 1...countingArray[i] {
            print(i)
        }
    }
}
