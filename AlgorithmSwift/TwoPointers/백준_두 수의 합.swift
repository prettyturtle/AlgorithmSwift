let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
let x = Int(readLine()!)!

var (left, right) = (0, n - 1)

var count = 0

while left < right {
    if (nums[left] + nums[right]) == x {
        print(left, right)
        count += 1
        left += 1
    } else if (nums[left] + nums[right]) < x {
        left += 1
    } else {
        right -= 1
    }
}
print(count)
