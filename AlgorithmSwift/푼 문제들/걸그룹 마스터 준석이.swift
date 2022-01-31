//let nm = readLine()!.split(separator: " ").map { Int($0)! }
//let n = nm[0]
//let m = nm[1]
//
//var girlGroup: [String: [String]] = [:]
//
//for _ in 1...n {
//    let teamName = readLine()!
//    girlGroup[teamName] = []
//    let numberOfMembers = Int(readLine()!)!
//    for _ in 1...numberOfMembers {
//        let member = readLine()!
//        girlGroup[teamName]!.append(member)
//    }
//    girlGroup[teamName]! = girlGroup[teamName]!.sorted()
//}
//
//for _ in 1...m {
//    let quiz = readLine()!
//    let quizKind = Int(readLine()!)!
//
//    answerQuiz(kind: quizKind, quiz: quiz)
//}
//
//func answerQuiz(kind: Int, quiz: String) {
//    if kind == 0 {
//
//        for girlGroupMember in girlGroup[quiz]! {
//            print(girlGroupMember)
//        }
//
//    } else if kind == 1 {
//        let findResult = girlGroup.first { (key: String, value: [String]) in
//            value.contains(quiz)
//        }
//        print(findResult!.key)
//    }
//}
//

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0]
let m = nm[1]

var teamAndName: [String: [String]] = [:]
var nameAndTeam: [String: String] = [:]


for _ in 1...n {
    let teamName = readLine()!
    teamAndName[teamName] = []
    let numberOfMembers = Int(readLine()!)!
    for _ in 1...numberOfMembers {
        let member = readLine()!
        teamAndName[teamName]!.append(member)
        nameAndTeam[member] = teamName
    }
    teamAndName[teamName]! = teamAndName[teamName]!.sorted()
}

for _ in 1...m {
    let quiz = readLine()!
    let quizKind = Int(readLine()!)!
    
    answerQuiz(kind: quizKind, quiz: quiz)
}

func answerQuiz(kind: Int, quiz: String) {
    if kind == 0 {
        
        for member in teamAndName[quiz]! {
            print(member)
        }
        
    } else if kind == 1 {
        print(nameAndTeam[quiz]!)
    }
}
