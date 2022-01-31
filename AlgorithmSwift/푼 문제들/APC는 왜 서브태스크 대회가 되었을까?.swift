let nlk = readLine()!.split(separator: " ").map { Int($0)! }
let n = nlk[0]
let l = nlk[1]
var k = nlk[2]

var quizList: [[Int]] = []

for _ in 1...n {
    let sub12 = readLine()!.split(separator: " ").map { Int($0)! }
    quizList.append([sub12[0], sub12[1]])
}

//quizList = quizList.sorted {
//    if $0[1] != $1[1] {
//        return $0[1] < $1[1]
//    } else {
//        return $0[0] < $1[0]
//    }
//}
//
//var score = 0
//
//for quiz in quizList {
//
//    if k == 0 {
//        break
//    }
//
//    if quiz[1] <= l {
//        score += 140
//        k -= 1
//    } else {
//        if quiz[0] <= l {
//            score += 100
//            k -= 1
//        }
//    }
//}
//print(score)

var hard = 0
var easy = 0

var score = 0

for quiz in quizList {
    if quiz[0] <= l && quiz[1] <= l {
        hard += 1
    } else if quiz[0] <= l && quiz[1] > l {
        easy += 1
    }
}

score += min(k, hard) * 140

if hard < k {
    score += min(k-hard, easy) * 100
}

print(score)
