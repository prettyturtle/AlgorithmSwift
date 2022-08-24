extension String {
    var asInt: Int { return Int(self)! }
    var asIntArr: [Int] { return self.split(separator: " ").map { Int($0)! } }
}

let n = readLine()!.asInt
let nums = readLine()!.asIntArr

let maxValue = nums.max()!

if maxValue < 0 {
    print(maxValue)
} else {
    
    var result = 0
    var now = 0
    
    for num in nums {
        now += num
        
        if now < 0 {
            now = 0
        }
        
        if result < now {
            result = now
        }
    }
    
    print(result)
}
