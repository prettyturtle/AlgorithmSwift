import Foundation

func solution(_ park: [String], _ routes: [String]) -> [Int] {
    
    let parkk = park.map { $0.map { String($0) } }
    
    var s: [Int]?
    
    for row in 0..<parkk.count {
        for col in 0..<parkk.first!.count {
            if parkk[row][col] == "S" {
                s = [row, col]
                break
            }
        }
        if let _ = s { break }
    }
    
    var current = s!
    
    for route in routes {
        let directionDistance = route.split(separator: " ").map { String($0) }
        let direction = directionDistance[0]
        let distance = Int(directionDistance[1])!
        
        var dxdy = [0, 0]
        var d = 0
        
        if direction == "E" {
            dxdy = [0, distance]
            d = 1
        } else if direction == "W" {
            dxdy = [0, -distance]
            d = 1
        } else if direction == "N" {
            dxdy = [-distance, 0]
            d = 0
        } else if direction == "S" {
            dxdy = [distance, 0]
            d = 0
        }
        
        let neww = [current[0] + dxdy[0], current[1] + dxdy[1]]
        
        if neww[0] < 0 || neww[0] >= park.count || neww[1] < 0 || neww[1] >= park.first!.count {
            continue
        } else {
            var flag = false
            if d == 0 {
                for i in min(current[0], neww[0])...max(current[0], neww[0]) {
                    if parkk[i][neww[1]] == "X" {
                        flag = true
                        break
                    }
                }
            } else {
                for i in min(current[1], neww[1])...max(current[1], neww[1]) {
                    if parkk[neww[0]][i] == "X" {
                        flag = true
                        break
                    }
                }
            }
            
                            
            if flag {
                continue
            } else {
                current = neww
            }
        }
    }
    
    return current
}
