let n = Int(readLine()!)!

var numberList = (1...n).map {_ in
    Int(readLine()!)!
}

numberList.sort()

for number in numberList {
    print(number)
}
