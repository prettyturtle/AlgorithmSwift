import Foundation

func solution(_ s:String) -> [Int] {
    // sol (1)
//    let arrS = Array(s).map { String($0) }
//
//    var li = [[String]]()
//    var tempLi = [String]()
//
//    var isAppend = false
//
//    for i in 1..<arrS.count-1 {
//        if arrS[i] == "{" && (arrS[i-1] == "{" || arrS[i-1] == ",") {
//            isAppend = true
//            continue
//        }
//
//        if arrS[i] == "}" && (arrS[i+1] == "}" || arrS[i+1] == ",") {
//            isAppend = false
//            li.append(tempLi)
//            tempLi = []
//            continue
//        }
//
//        if isAppend {
//            tempLi.append(arrS[i])
//        }
//    }
//
//    li.sort { $0.count < $1.count }
//
//    var ret = [String]()
//    for i in li {
//        var temp = ""
//        for j in i {
//            if j == "," {
//                if !ret.contains(temp) {
//                    ret.append(temp)
//                    temp = ""
//                } else {
//                    temp = ""
//                }
//            } else {
//                temp += j
//            }
//        }
//        if temp != "" {
//            if !ret.contains(temp) {
//                ret.append(temp)
//                temp = ""
//            } else {
//                temp = ""
//            }
//        }
//    }
//
//    return ret.map { Int($0)! }
    
    
    // sol (2)
    var ret = [Int]()
    
    let _ = s.components(separatedBy: "{{")[1]
        .components(separatedBy: "}}")[0]
        .components(separatedBy: "},{")
        .map { $0.split(separator: ",").map { String($0) } }
        .sorted { $0.count < $1.count }
        .map {
            $0.map {
                if !ret.contains(Int($0)!) { ret.append(Int($0)!) }
            }
        }
    
    return ret
}

let solLi = [
    "{{2},{2,1},{2,1,3},{2,1,3,4}}",
    "{{1,2,3},{2,1},{1,2,4,3},{2}}",
    "{{20,111},{111}}",
    "{{123}}",
    "{{4,2,3},{3},{2,3,4,1},{2,3}}"
]
let resultLi = [
    [2,1,3,4],
    [2,1,3,4],
    [111,20],
    [123],
    [3,2,4,1]
]

for i in 0..<solLi.count {
    if solution(solLi[i]) == resultLi[i] {
        print("true!")
    } else {
        print("false!")
    }
}
