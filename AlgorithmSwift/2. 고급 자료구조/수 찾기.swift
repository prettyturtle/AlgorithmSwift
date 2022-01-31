//let n = readLine()!
//let setA = Set(readLine()!.split(separator: " "))
//let m = readLine()!
//let setM = readLine()!.split(separator: " ")
//
//for i in setM {
//    if setA.contains(i) {
//        print(1)
//    } else {
//        print(0)
//    }
//}

let n = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map { Int($0)! }
let m = Int(readLine()!)!
let mArr = readLine()!.split(separator: " ").map { Int($0)! }

var Adict: [Int: Int] = [:]

for i in A {
    Adict[i] = 1
}

for i in mArr {
    print(Adict[i] ?? 0)
}
