extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let nm = readLine()!.asIntArr
let (n, m) = (nm[0], nm[1])

if n == 0 {
    print(0)
} else {
    let nums = readLine()!.asIntArr
    var count = 0
    var idx = 0
    var temp = 0
    
    while true {
        if idx == n {
            if temp != 0 { count += 1 }
            break
        }
        
        if temp + nums[idx] <= m {
            temp += nums[idx]
            idx += 1
        } else {
            count += 1
            temp = 0
        }
    }
    print(count)
}
