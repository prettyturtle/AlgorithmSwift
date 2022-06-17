import Foundation

func solution(_ citations: [Int]) -> Int {
    let citations = citations.sorted()
    var hIdx = 0
    
    for i in 0...citations.last! {
        var inyong = 0
        citations.map {
            if $0 >= i { inyong += 1 }
        }
        
        if inyong >= i {
            hIdx = max(hIdx, i)
        }
    }
    return hIdx
}
