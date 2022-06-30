import Foundation

let testCase = Int(readLine()!)!

for _ in 1...testCase {
    let inputNM = readLine()!.split(separator: " ").map { Int($0)! }
    let m = inputNM[1]

    var printCount = 0

    var tempPriorityList = readLine()!.split(separator: " ").map{ Int($0)! }
    var priorityList: [(Int, Int)] = []

    for (index, priority) in tempPriorityList.enumerated() {
        let tuple = (priority, index)
        priorityList.append(tuple)
    }

    tempPriorityList.sort()

    while true {
        if priorityList[0].0 == tempPriorityList.max() {
            printCount += 1
            if priorityList[0].1 == m {
                print(printCount)
                break
            } else {
                priorityList.removeFirst()
                tempPriorityList.popLast()
            }
        } else {
            priorityList.append(priorityList.removeFirst())
        }
    }
}



// 재풀이
let t = Int(readLine()!)!

for _ in 1...t {
    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    let n = nm[0]
    let m = nm[1]
    
    let docs = readLine()!.split(separator: " ").map { Int($0)! }
    
    var tup = (0..<n).map { (docs[$0], $0) }
    
    var count = 0
    
    while true {
        if tup[0].0 == tup.max(by: { $0.0 < $1.0 })?.0 {
            count += 1
            if tup[0].1 == m {
                print(count)
                break
            } else {
                tup.remove(at: 0)
            }
        } else {
            tup.append(tup.remove(at: 0))
        }
    }
}
