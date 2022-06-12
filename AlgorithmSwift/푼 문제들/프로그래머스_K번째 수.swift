import Foundation

func solution(_ array: [Int], _ commands: [[Int]]) -> [Int] {
    
    var ret = [Int]()
    
    for command in commands {
        var arr = array
        arr = arr[command[0]-1...command[1]-1].map { $0 }.sorted()
        ret.append(arr[command[2]-1])
    }
    
    return ret
}
