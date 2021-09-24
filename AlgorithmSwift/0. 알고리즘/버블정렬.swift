import Foundation

func bubbleSort(_ data: [Int]) -> [Int] {
    var data = data
    let lengthData = data.count
    for i in 0..<lengthData - 1 {
        var swap = false
        for j in 0..<lengthData - i - 1 {
            if data[j] > data[j+1] {
                data.swapAt(j, j+1)
                swap = true
            }
        }
        if swap == false {
            break
        }
    }
    
    return data
}
