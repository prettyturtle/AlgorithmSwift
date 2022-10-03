extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}


let nums = (1...10).map { _ in readLine()!.asInt }.sorted()
let avg = nums.reduce(0, +) / 10

var maxCount = 0
var dic = [Int: Int]()

for num in nums {
    if dic[num] == nil {
        dic[num] = 1
        maxCount = max(dic[num]!, maxCount)
    } else {
        dic[num]! += 1
        maxCount = max(dic[num]!, maxCount)
    }
}

var dd = [Int: Int]()

for (key, value) in dic {
    dd[value] = key
}

print(avg)
print(dd[maxCount]!)
