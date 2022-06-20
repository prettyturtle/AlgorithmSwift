import Foundation

// MARK: - Sol 1
func solution1(_ numbers: [Int], _ hand: String) -> String {
    
    var lh = "*"
    var rh = "#"
    var result = [String]()
    
    for number in numbers {
        switch number {
        case 1, 4, 7:
            lh = "\(number)"
            result.append("L")
        case 3, 6, 9:
            rh = "\(number)"
            result.append("R")
        case 2, 5, 8, 0:
            let dlh = findDistance(lh, to: number)
            let drh = findDistance(rh, to: number)
            
            if dlh > drh {
                rh = "\(number)"
                result.append("R")
            } else if dlh < drh {
                lh = "\(number)"
                result.append("L")
            } else {
                if hand == "right" {
                    rh = "\(number)"
                    result.append("R")
                } else {
                    lh = "\(number)"
                    result.append("L")
                }
            }
        default:
            break
        }
    }
    
    return result.joined(separator: "")
}

func findDistance(_ from: String, to: Int) -> Int {
    if from == "#" || from == "*" {
        if to == 2 { return 4 }
        else if to == 5 { return 3 }
        else if to == 8 { return 2 }
        else if to == 0 { return 1 }
    }
    
    if from == "1" || from == "3" {
        if to == 2 { return 1 }
        else if to == 5 { return 2 }
        else if to == 8 { return 3 }
        else if to == 0 { return 4 }
    }
    
    if from == "4" || from == "6" {
        if to == 2 { return 2 }
        else if to == 5 { return 1 }
        else if to == 8 { return 2 }
        else if to == 0 { return 3 }
    }
    
    if from == "7" || from == "9" {
        if to == 2 { return 3 }
        else if to == 5 { return 2 }
        else if to == 8 { return 1 }
        else if to == 0 { return 2 }
    }
    
    if from == "2" {
        if to == 5 { return 1 }
        else if to == 8 { return 2 }
        else if to == 0 { return 3 }
    }
    if from == "5" {
        if to == 2 { return 1 }
        else if to == 8 { return 1 }
        else if to == 0 { return 2 }
    }
    if from == "8" {
        if to == 2 { return 2 }
        else if to == 5 { return 1 }
        else if to == 0 { return 1 }
    }
    if from == "0" {
        if to == 2 { return 3 }
        else if to == 5 { return 2 }
        else if to == 8 { return 1 }
    }
    return 0
}



// MARK: - ****** Sol 2 ******
func solution2(_ numbers: [Int], _ hand: String) -> String {
    let coordDict = [
        "1": [0, 0], "2": [0, 1], "3": [0, 2],
        "4": [1, 0], "5": [1, 1], "6": [1, 2],
        "7": [2, 0], "8": [2, 1], "9": [2, 2],
        "*": [3, 0], "0": [3, 1], "#": [3, 2]
    ]
    
    var lh = "*"
    var rh = "#"
    var result = [String]()
    
    for number in numbers {
        let num = String(number)
        switch num {
        case "1", "4", "7":
            lh = num
            result.append("L")
        case "3", "6", "9":
            rh = num
            result.append("R")
        case "2", "5", "8", "0":
            let dlh = findDistance(coordDict[lh]!, to: coordDict[num]!)
            let drh = findDistance(coordDict[rh]!, to: coordDict[num]!)
            
            if dlh > drh {
                rh = num
                result.append("R")
            } else if dlh < drh {
                lh = num
                result.append("L")
            } else {
                if hand == "right" {
                    rh = num
                    result.append("R")
                } else {
                    lh = num
                    result.append("L")
                }
            }
        default:
            break
        }
    }
    return result.joined()
}

func findDistance(_ from: [Int], to: [Int]) -> Int {
    return abs(from[0] - to[0]) + abs(from[1] - to[1])
}
