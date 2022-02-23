let S = readLine()!

let count0 = S.split(separator: "1").count
let count1 = S.split(separator: "0").count

print(min(count0, count1))

//let S = readLine()!.map { String($0) }
//var tot = 1
//for i in 1..<S.count {
//    if S[i] != S[i-1] {
//        tot += 1
//    }
//}
//
//print(tot / 2)
