import Foundation

func solution(_ record:[String]) -> [String] {
    var tempRet = [String]()
    var idDict = [String: String]()
    for i in record {
        let info = i.split(separator: " ").map { String($0) }
        let status = info[0]
        let id = info[1]
        switch status {
        case "Enter":
            tempRet.append("E \(id)")
            idDict[id] = info[2]
        case "Leave":
            tempRet.append("L \(id)")
        case "Change":
            idDict[id] = info[2]
        default:
            break
        }
    }
    var ret = [String]()
    for i in tempRet {
        let i = i.split(separator: " ").map { String($0) }
        if i[0] == "E" {
            ret.append("\(idDict[i[1]]!)님이 들어왔습니다.")
        } else if i[0] == "L" {
            ret.append("\(idDict[i[1]]!)님이 나갔습니다.")
        }
    }
    
    return ret
}
