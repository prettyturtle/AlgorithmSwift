let testCase = Int(readLine()!)!

for _ in 1...testCase {
    let userInput = readLine()!
    var leftStack: [String] = []
    var rightStack: [String] = []
    for i in userInput {
        if i == "<" {
            if leftStack.isEmpty == false {
                let poppedLeftStack = leftStack.popLast()!
                rightStack.append(poppedLeftStack)
            }
        } else if i == ">" {
            if rightStack.isEmpty == false {
                let poppedRightStack = rightStack.popLast()!
                leftStack.append(poppedRightStack)
            }
        } else if i == "-" {
            if leftStack.isEmpty == false {
                leftStack.popLast()
            }
        } else {
            leftStack.append(String(i))
        }
    }
    rightStack.reverse()
    leftStack.append(contentsOf: rightStack)
    print(leftStack.joined(separator: ""))
}


// 재풀이
let t = Int(readLine()!)!

for _ in 1...t {
    let keys = readLine()!.map { String($0) }
    
    var lstack = [String]()
    var rstack = [String]()
    
    for i in keys {
        if i == "<" {
            if !lstack.isEmpty {
                rstack.append(lstack.removeLast())
            }
        } else if i == ">" {
            if !rstack.isEmpty {
                lstack.append(rstack.removeLast())
            }
        } else if i == "-" {
            if !lstack.isEmpty {
                lstack.removeLast()
            }
        } else {
            lstack.append(i)
        }
    }
    print((lstack + rstack.reversed()).joined())
}
