import Foundation

func solution(_ wallpaper: [String]) -> [Int] {
    
    var rn = Int.max
    var rx = Int.min
    var cn = Int.max
    var cx = Int.min
    
    let rowCount = wallpaper.count
    let colCount = wallpaper.first?.count ?? 0
    
    for row in 0..<rowCount {
        for col in 0..<colCount {
            let temp = wallpaper[row].map { String($0) }
            if temp[col] == "#" {
                rn = min(rn, row)
                rx = max(rx, row)
                cn = min(cn, col)
                cx = max(cx, col)
            }
        }
    }
    
    rx += 1
    cx += 1
    
    return [rn, cn, rx, cx]
}
