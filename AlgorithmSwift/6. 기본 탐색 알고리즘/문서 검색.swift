import Foundation

let document = Array(readLine()!)
let keyword = readLine()!

var currentIndex = -1
var result = 0

for i in 0..<document.count {
    if i > currentIndex && i + keyword.count <= document.count {
        if keyword == String(document[i..<i + keyword.count]) {
            currentIndex = i + keyword.count - 1
            result += 1
        }
    }
}

print(result)



//
//import Foundation
//
//let document = Array(readLine()!)
//let keyword = readLine()!
//
//var currentIndex = 0
//var result = 0
//
//while document.count - currentIndex >= keyword.count {
//    if String(document[currentIndex..<currentIndex + keyword.count]) == keyword {
//        result += 1
//        currentIndex += keyword.count
//    } else {
//        currentIndex += 1
//    }
//}
//
//print(result)
