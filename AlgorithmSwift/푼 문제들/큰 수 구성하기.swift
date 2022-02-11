let NK = readLine()!.split(separator: " ").map { String($0) }

let N = NK[0]
let K = NK[1]

let setList = readLine()!.split(separator: " ").map { String($0) }

var tempList = Set<String>()

func makeNumber(li: [String], curr: String) {
    if curr.count == N.count {
        tempList.insert(curr)
        return
    }
    
    for i in 0..<li.count {
        let newCurr = li[i]
        
        makeNumber(li: li, curr: curr + newCurr)
    }
}
makeNumber(li: setList, curr: "")

let filtered = tempList.filter { $0 <= N }.max()

if filtered == nil {
    var tempNum = ""
    for _ in 0..<N.count-1 {
        tempNum += setList.max()!
    }
    print(tempNum)
} else {
    print(filtered!)
}
