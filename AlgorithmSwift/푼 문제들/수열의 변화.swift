extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let nk = readLine()!.asIntArr
let (n, k) = (nk[0], nk[1])

var nums = readLine()!.split(separator: ",").map { Int($0)! }

var new = [Int]()

var count = n
var i = k

while i > 0 {
    i -= 1
    
    for j in 1..<count {
        new += [nums[j] - nums[j - 1]]
    }
    
    nums = new
    new = []
    
    count = nums.count
}

let answer = nums.map { String($0) }.joined(separator: ",")
print(answer)
