import Foundation

func selectionSort(_ data: [Int]) -> [Int] {
    var data = data
    for stand in 0..<data.count-1 {
        var lowest = stand
        for num in (stand+1)..<data.count {
            if data[lowest] > data[num] {
                lowest = num
            }
        }
        data.swapAt(lowest, stand)
    }
    return data
}
