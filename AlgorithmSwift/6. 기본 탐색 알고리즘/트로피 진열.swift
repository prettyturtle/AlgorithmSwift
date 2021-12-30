let n = Int(readLine()!)!

var tropys = [Int]()
for _ in 1...n {
    let tropy = Int(readLine()!)!
    tropys.append(tropy)
}

func ascending(array: [Int]) {
    var maxHeight = 0
    var result = 0
    for i in 0..<array.count {
        if array[i] > maxHeight {
            maxHeight = array[i]
            result += 1
        }
    }
    print(result)
}

ascending(array: tropys)
ascending(array: tropys.reversed())
