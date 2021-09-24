import Foundation

func insertionSort(_ data: [Int]) -> [Int] {
    var data = data
    for stand in 0..<(data.count - 1) {
        for num in (1...(stand + 1)).reversed() {
            if data[num] < data[num-1] {
                data.swapAt(num, num-1)
            } else {
                break
            }
        }
    }
    return data
}
