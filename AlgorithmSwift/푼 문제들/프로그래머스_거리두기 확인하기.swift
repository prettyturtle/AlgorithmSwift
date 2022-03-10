/*
 1. P를 기준으로 상하좌우에 P가 있다면 거리두기 X
    -> PP
 2. O를 기준으로 상하좌우에 P가 2개 이상 있다면 거리두기 X
    -> POP
    -> OP
       PX
 */

import Foundation

func solution(_ places:[[String]]) -> [Int] {
    var ret = [Int]()
    let range = 0...4
    let directions = [ (1, 0), (-1, 0), (0, 1), (0, -1) ]
    
    for place in places {
        let map = place.map { Array($0).map { String($0) } }
        var result = true
        for i in range {
            for j in range {
                if map[i][j] == "P" {
                    for direction in directions {
                        let xx = i + direction.0
                        let yy = j + direction.1
                        
                        if range.contains(xx) && range.contains(yy) && map[xx][yy] == "P" {
                            result = false
                            break
                        }
                    }
                } else if map[i][j] == "O" {
                    var count = 0
                    for direction in directions {
                        let xx = i + direction.0
                        let yy = j + direction.1
                        
                        if range.contains(xx) && range.contains(yy) && map[xx][yy] == "P" {
                            count += 1
                        }
                    }
                    if count >= 2 {
                        result = false
                    }
                }
            }
        }
        if result {
            ret.append(1)
        } else {
            ret.append(0)
        }
        
    }
    
    return ret
}

let places = [
    ["POOOP", "OXXOX", "OPXPX", "OOXOX", "POXXP"],
    ["POOPX", "OXPXP", "PXXXO", "OXXXO", "OOOPP"],
    ["PXOPX", "OXOXP", "OXPOX", "OXXOP", "PXPOX"],
    ["OOOXX", "XOOOX", "OOOXX", "OXOOX", "OOOOO"],
    ["PXPXP", "XPXPX", "PXPXP", "XPXPX", "PXPXP"]
]
print(solution(places))
