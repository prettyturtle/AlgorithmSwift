let xyp1p2 = readLine()!.split(separator: " ").map { Int($0)! }

let x = xyp1p2[0]
let y = xyp1p2[1]
var p1 = xyp1p2[2]
var p2 = xyp1p2[3]

var setNums = Set<Int>()
var setCount = setNums.count

while true {
    if setNums.count > 1000000 {
        print(-1)
        break
    }
    
    setNums.insert(p1)
    if setCount == setNums.count {
        print(p1)
        break
    } else {
        setCount = setNums.count
    }
    setNums.insert(p2)
    if setCount == setNums.count {
        print(p2)
        break
    } else {
        setCount = setNums.count
    }
    
    p1 += x
    p2 += y
}
