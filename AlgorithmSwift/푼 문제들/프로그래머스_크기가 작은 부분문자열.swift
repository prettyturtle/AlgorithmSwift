import Foundation

func solution(_ t: String, _ p: String) -> Int {
    
    var ts = [String]()
    
    let tarr = t.map { String($0) }
    
    for i in 0..<(t.count - p.count + 1) {
        ts.append(tarr[i..<i+p.count].joined())
    }
    
    return ts.filter { $0 <= p }.count
}
