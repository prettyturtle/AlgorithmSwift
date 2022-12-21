import Foundation

func solution(_ num: Int, _ total: Int) -> [Int] {
    
    let x = (total - (0..<num).reduce(0, +)) / num
    
    let ret = (0..<num).map { x + $0 }
    
    return ret
}
