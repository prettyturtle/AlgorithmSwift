import Foundation

func solution(_ s: String) -> Int {
    let numStr = [
        "zero": "0",
        "one": "1",
        "two": "2",
        "three": "3",
        "four": "4",
        "five": "5",
        "six": "6",
        "seven": "7",
        "eight": "8",
        "nine": "9"
    ]
    
    var temp = ""
    var result = [String]()
    
    for i in s {
        temp += String(i)
        if numStr[temp] != nil {
            result.append(numStr[temp]!)
            temp = ""
        } else if Int(temp) != nil {
            result.append(temp)
            temp = ""
        }
    }
    
    return Int(result.joined())!
}
