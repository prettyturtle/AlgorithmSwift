import Foundation

func solution(_ array: [Int], _ n: Int) -> Int {
    
    var idx = -1
    var miin = 100
    
    for i in 0..<array.count {
        let temp = abs(array[i] - n)
        if temp < miin {
            miin = temp
            idx = i
        } else if temp == miin {
            if array[idx] > array[i] {
                idx = i
            }
            miin = temp
        }
    }
    
    return array[idx]
}
