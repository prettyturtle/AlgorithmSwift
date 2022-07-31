let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0]
let m = nm[1]

let nums = readLine()!.split(separator: " ").map { Int($0)! }

var result = 0

for i in 0..<nums.count {
    var count = 0
    for j in i..<nums.count {
        count += nums[j]
        
        if count == m {
            result += 1
            break
        }
    }
}

print(result)
