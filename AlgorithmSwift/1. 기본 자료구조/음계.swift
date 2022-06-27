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


// 재풀이
let nums = readLine()!.split(separator: " ").map { Int($0)! }
var aflag = true
var dflag = true

for i in 1..<nums.count {
    if nums[i] > nums[i - 1] {
        dflag = false
    } else if nums[i] < nums[i - 1] {
        aflag = false
    }
}

if aflag {
    print("ascending")
} else if dflag {
    print("descending")
} else {
    print("mixed")
}
