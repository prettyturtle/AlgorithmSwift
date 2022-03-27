import Foundation

func solution(_ numbers: [Int]) -> String {
    let sortedNumbers = numbers
        .sorted { Int("\($0)\($1)")! > Int("\($1)\($0)")! }
        .map { String($0) }
    
    if sortedNumbers[0] == "0" {
        return "0"
    }
    
    return sortedNumbers.joined(separator: "")
}

