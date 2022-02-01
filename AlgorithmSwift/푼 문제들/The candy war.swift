func candyLoop(_ n: Int, candyArr: [Int]) -> Int {
    if n == 1 {
        return 0
    }
    
    var candyArr = getCandy(n, candyArr: candyArr)
    
    if checkCandy(n, candyArr: candyArr) {
        return 0
    }
    
    var count = 0
    var loop = true
    
    while loop {
        let halfCandyArr = candyArr.map { $0 / 2 }
        candyArr = halfCandyArr
        for i in 0..<n {
            if i != n-1 {
                candyArr[i+1] += halfCandyArr[i]
            } else {
                candyArr[0] += halfCandyArr[i]
            }
        }
        candyArr = getCandy(n, candyArr: candyArr)
        count += 1
        loop = !checkCandy(n, candyArr: candyArr)
    }
    return count
}

func checkCandy(_ n: Int, candyArr: [Int]) -> Bool {
    if Set(candyArr).count == 1 {
        return true
    } else {
        return false
    }
}
func getCandy(_ n: Int, candyArr: [Int]) -> [Int] {
    var candyArr = candyArr
    for i in 0..<n {
        if candyArr[i] % 2 == 1 {
            candyArr[i] += 1
        }
    }
    return candyArr
}

let t = Int(readLine()!)!

for _ in 1...t {
    let n = Int(readLine()!)!
    let C = readLine()!.split(separator: " ").map { Int($0)! }
    print(candyLoop(n, candyArr: C))
}
