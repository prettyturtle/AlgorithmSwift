import Foundation

func solution(_ w:Int, _ h:Int) -> Int64{
    var answer:Int64 = 0

    
    func gcd(_ x: Int, _ y: Int) -> Int {
        let minV = min(x, y)
        var ret = 1
        for i in 1...minV {
            if x % i == 0 && y % i == 0 {
                ret = i
            }
        }
        return ret
    }
    
    let gcdV = gcd(w, h)
    let dx = w / gcdV
    let dy = h / gcdV
    
    let block = dx + dy - 1
    
    answer = Int64((w * h) - (block * (gcdV)))
    
    return answer
}
