let N = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)

print(nums.first! * nums.last!)
