let n = Int(readLine()!)!
var numberList: [Int] = []

for _ in 1...n {
    numberList.append(Int(readLine()!)!)
}

numberList.sort()

for i in numberList {
    print(i)
}



// 재풀이
let t = Int(readLine()!)!

var result = [Int]()

for _ in 1...t {
    let number = Int(readLine()!)!
    result.append(number)
}

result.sort()

for i in result {
    print(i)
}
