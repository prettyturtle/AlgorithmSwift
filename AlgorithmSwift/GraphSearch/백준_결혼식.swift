let n = Int(readLine()!)!
let m = Int(readLine()!)!

var map = Array(repeating: [Int](), count: n + 1)

for _ in 1...m {
    let temp = readLine()!.split(separator: " ").map { Int($0)! }
    map[temp[0]].append(temp[1])
    map[temp[1]].append(temp[0])
}

var result = Set<Int>()

map[1].forEach {
    result.insert($0)
}

for i in map[1] {
    map[i].forEach {
        result.insert($0)
    }
    
}

print(result.filter { $0 != 1 }.count)
