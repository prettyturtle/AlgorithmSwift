let n = Int(readLine()!)!
let lst = readLine()!.split(separator: " ").map { Int($0)! }

var result = Array(repeating: 0, count: n)

result[0] = lst[0]
for i in 1..<n {
    result[i] = lst[i] * (i+1) - result.reduce(0, +)
}

for i in result {
    print(i, terminator: " ")
}
