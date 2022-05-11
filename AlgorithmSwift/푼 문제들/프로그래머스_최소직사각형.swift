import Foundation

// func solution(_ sizes: [[Int]]) -> Int {
//     let sortedSizes = sizes.map { $0.sorted() }
//     var maxHeight = 0
//     var maxWidth = 0
    
//     for size in sortedSizes {
//         maxWidth = max(maxWidth, size[0])
//         maxHeight = max(maxHeight, size[1])
//     }
    
//     return maxWidth * maxHeight
// }

func solution(_ sizes: [[Int]]) -> Int {
    var maxHeight = 0
    var maxWidth = 0
    
    for size in sizes {
        maxWidth = max(maxWidth, size.max()!)
        maxHeight = max(maxHeight, size.min()!)
    }
    
    return maxWidth * maxHeight
}
