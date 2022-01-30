
let n = readLine()!
let list = readLine()!.split(separator: " ").map { Int($0)! }

print(list.max()! - list.min()!)
