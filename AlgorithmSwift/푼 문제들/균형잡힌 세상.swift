while true {
    var leftStack = [Character]()
    var check = true
    let str = readLine()!
    if str == "." { break }
    for i in str {
        if i == "(" || i == "[" {
            leftStack.append(i)
        }
        if i == ")" {
            if leftStack.last == "(" {
                leftStack.removeLast()
            } else {
                check = false
                break
            }
        }
        if i == "]" {
            if leftStack.last == "[" {
                leftStack.removeLast()
            } else {
               check = false
               break
           }
        }
    }
    
    if !check { print("no") }
    else {
        if leftStack.isEmpty {
            print("yes")
        } else {
            print("no")
        }
    }
}
