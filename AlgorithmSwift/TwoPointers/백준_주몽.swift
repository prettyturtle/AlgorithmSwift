let n = Int(readLine()!)!
let m = Int(readLine()!)!

let nums = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

var (left, right) = (0, n - 1)

var count = 0

while left < right {
    if (nums[left] + nums[right]) == m {
        count += 1
        left += 1
    } else if (nums[left] + nums[right]) < m {
        left += 1
    } else {
        right -= 1
    }
}
print(count)
