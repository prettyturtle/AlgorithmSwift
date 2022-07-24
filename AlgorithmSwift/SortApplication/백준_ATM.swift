let n = Int(readLine()!)!
var nums = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

for i in 0..<n {
    if i > 0 {
        nums[i] += nums[i-1]
    }
}
print(nums.reduce(0, +))
