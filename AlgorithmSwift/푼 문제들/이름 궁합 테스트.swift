func replaceStringToInt(_ string: String) -> Int {
    let table: [String: Int] = [
        "A": 3, "B": 2, "C": 1,
        "D": 2, "E": 4, "F": 3,
        "G": 1, "H": 3, "I": 1,
        "J": 1, "K": 3, "L": 1,
        "M": 3, "N": 2, "O": 1,
        "P": 2, "Q": 2, "R": 2,
        "S": 1, "T": 2, "U": 1,
        "V": 1, "W": 1, "X": 2,
        "Y": 2, "Z": 1
    ]
    return table[string]!
}

let nameLengthList = readLine()!.split(separator: " ").map { Int($0)! }
let n = nameLengthList[0]
let m = nameLengthList[1]

let nameList = readLine()!.split(separator: " ").map { String($0) }
let a = nameList[0].map { String($0) }
let b = nameList[1].map { String($0) }

var ab: String = ""

let minLen = min(n, m)

for i in 0..<minLen {
    ab += a[i] + b[i]
}

ab += a[minLen...].reduce("", +) + b[minLen...].reduce("", +)

var lst = Array(repeating: 0, count: ab.count)

for i in 0..<ab.count {
    let abArray = ab.map { String($0) }
    lst[i] = replaceStringToInt(abArray[i])
}

while lst.count != 2 {
    for i in 0..<lst.count - 1 {
        lst[i] = (lst[i] + lst[i+1]) % 10
    }
    lst.removeLast()
}

print("\(lst[0] * 10 + lst[1])%")

//var firstNameCount = 0
//var secondNameCount = 1
//
//if n < m {
//    for i in firstName {
//        mixedNameList[firstNameCount] = String(i)
//        firstNameCount += 2
//    }
//
//    for i in secondName {
//        if secondNameCount >= firstNameCount - 1 {
//            mixedNameList[secondNameCount] = String(i)
//            secondNameCount += 1
//        } else {
//            mixedNameList[secondNameCount] = String(i)
//            secondNameCount += 2
//        }
//    }
//} else {
//    for i in secondName {
//        mixedNameList[secondNameCount] = String(i)
//        secondNameCount += 2
//    }
//
//    for i in firstName {
//        if firstNameCount >= secondNameCount - 1 {
//            mixedNameList[firstNameCount] = String(i)
//            firstNameCount += 1
//        } else {
//            mixedNameList[firstNameCount] = String(i)
//            firstNameCount += 2
//        }
//    }
//}
//
//var nameNumberList = Array(repeating: 0, count: n+m)
//
//for i in 0..<n+m {
//    nameNumberList[i] = replaceStringToInt(mixedNameList[i])
//}
//
//while nameNumberList.count != 2 {
//    var count = 0
//    while count < nameNumberList.count - 1 {
//        nameNumberList[count] = (nameNumberList[count] + nameNumberList[count + 1]) % 10
//        count += 1
//    }
//    nameNumberList.removeLast()
//}
//
//
//print("\(nameNumberList[0] * 10 + nameNumberList[1])%")
