import Foundation

let inputLine = readLine()!.components(separatedBy: " ").map { Int($0)! }

var ascending = true
var descending = true

for i in 0...(inputLine.count - 2) {
    if inputLine[i] < inputLine[i + 1] {
        descending = false
    } else if inputLine[i] > inputLine[i + 1] {
        ascending = false
    }
}

if ascending {
    print("ascending")
} else if descending {
    print("descending")
} else {
    print("mixed")
}
