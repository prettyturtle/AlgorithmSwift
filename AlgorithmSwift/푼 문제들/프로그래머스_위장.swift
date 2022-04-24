import Foundation

func solution(_ clothes: [[String]]) -> Int {
    
    var dict = [String: Int]()
    
    for clothe in clothes {
        if dict[clothe[1]] == nil {
            dict[clothe[1]] = 2
        } else {
            dict[clothe[1]]! += 1
        }
    }
    let ret = dict.values.reduce(1, *)
    
    return ret - 1
}
