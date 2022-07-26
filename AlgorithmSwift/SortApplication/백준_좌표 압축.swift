let n = Int(readLine()!)!

let nums = readLine()!.split(separator: " ").map { Int($0)! }

var dic = [Int: Int]()

for (i, num) in Set(nums).sorted().enumerated() {
    if dic[num] == nil {
        dic[num] = i
    }
}

nums.forEach { print(dic[$0]!, terminator: " ") }
