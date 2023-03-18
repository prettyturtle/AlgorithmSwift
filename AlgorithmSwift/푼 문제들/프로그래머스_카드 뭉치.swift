import Foundation

func solution(_ cards1: [String], _ cards2: [String], _ goal: [String]) -> String {
    
    var idx1 = 0
    var idx2 = 0
    
    for gol in goal {
        if idx1 < cards1.count && idx2 < cards2.count {
            if cards1[idx1] == gol {
                idx1 += 1
                continue
            } else if cards2[idx2] == gol {
                idx2 += 1
                continue
            } else {
                return "No"
            }
        } else if idx1 == cards1.count {
            if cards2[idx2] == gol {
                idx2 += 1
                continue
            } else {
                return "No"
            }
        } else if idx2 == cards2.count {
            if cards1[idx1] == gol {
                idx1 += 1
                continue
            } else {
                return "No"
            }
        }
        
        
    }
    
    return "Yes"
}
