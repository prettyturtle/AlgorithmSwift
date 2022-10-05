let ab = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
let (a, b) = (ab[0], ab[1])

let count = b - a + 1
let l = a + b

print(l * count / 2)
