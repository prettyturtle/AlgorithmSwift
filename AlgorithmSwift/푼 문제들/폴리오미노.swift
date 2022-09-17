import Foundation

let n = readLine()!.map { String($0) }

var count = 0

var result = ""

for i in n {
    if i == "X" {
        count += 1
    }
    
    if i == "." {
        if count == 4 {
            result += "AAAA"
            count = 0
        } else if count == 2 {
            result += "BB"
            count = 0
        } else if count == 0 {
            result += "."
            continue
        } else {
            print("-1")
            count = 0
            exit(0)
        }
        count = 0
        result += "."
    }
    
    if i == "X" {
        if count == 4 {
            result += "AAAA"
            count = 0
        }
    }
}
if count == 2 {
    result += "BB"
    print(result)
} else if count == 0 {
    print(result)
    exit(0)
} else {
    print("-1")
}
