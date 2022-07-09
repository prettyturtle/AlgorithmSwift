let n = Int(readLine()!)!
let a = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)
let b = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)

print((0..<n).map { i in a[i] * b[i] }.reduce(0, +))
