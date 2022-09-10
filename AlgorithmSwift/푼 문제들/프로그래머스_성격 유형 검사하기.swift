import Foundation

enum Sur: String {
    case RT
    case TR
    case FC
    case CF
    case MJ
    case JM
    case AN
    case NA
    
    var first: String {
        String(self.rawValue.first!)
    }
    
    var last: String {
        String(self.rawValue.last!)
    }
}

func solution(_ survey: [String], _ choices: [Int]) -> String {
    
    var dict = [
        "A": 0,
        "N": 0,
        
        "C": 0,
        "F": 0,
        
        "R": 0,
        "T": 0,
        
        "J": 0,
        "M": 0
    ]
    
    func sol(_ sur: Sur, choice: Int, dict: [String: Int]) -> [String: Int] {
        var dict = dict
        
        switch choice {
        case 1:
            dict[sur.first]! += 3
        case 2:
            dict[sur.first]! += 2
        case 3:
            dict[sur.first]! += 1
        case 4:
            break
        case 5:
            dict[sur.last]! += 1
        case 6:
            dict[sur.last]! += 2
        case 7:
            dict[sur.last]! += 3
        default:
            break
        }
        
        return dict
    }
    
    for i in 0..<survey.count {
        dict = sol(Sur(rawValue: survey[i])!, choice: choices[i], dict: dict)
    }
    
    func ssol(_ a: (String, Int), _ b: (String, Int)) -> String {
        if a.1 < b.1 {
            return b.0
        } else if a.1 > b.1 {
            return a.0
        } else {
            return a.0 < b.0 ? a.0 : b.0
        }
    }
    
    func ma(_ str: String, dic: [String: Int] = dict) -> (String, Int) {
        return (str, dic[str]!)
    }
    
    
    return ssol(ma("R"), ma("T")) + ssol(ma("C"), ma("F")) + ssol(ma("J"), ma("M")) + ssol(ma("A"), ma("N"))
}
