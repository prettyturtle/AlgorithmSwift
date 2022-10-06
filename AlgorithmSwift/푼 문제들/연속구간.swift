let nums = (1...3).map { _ in readLine()!.map { String($0) } }

for num in nums {
    var pre = num.first!
    
    var count = 1
    var countArr = [Int]()
    for i in 1..<num.count {
        if num[i] == pre {
            count += 1
        } else {
            countArr += [count]
            count = 1
        }
        pre = num[i]
    }
    countArr += [count]
    print(countArr.max()!)
}
