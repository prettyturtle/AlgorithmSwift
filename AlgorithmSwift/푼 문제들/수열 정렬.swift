extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let n = readLine()!.asInt

let nums = readLine()!.asIntArr

let sNums = nums.sorted()

var dic = [Int: [Int]]()
var cDic = [Int: Int]()
for i in 0..<sNums.count {
    let a = sNums[i]
    if dic[a] == nil {
        dic[a] = [i]
        cDic[a] = 1
    } else {
        dic[a]! += [i]
        cDic[a]! += 1
    }
}

for num in nums {
    print(dic[num]!.removeFirst(), terminator: " ")
}
