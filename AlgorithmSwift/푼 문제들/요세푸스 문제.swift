let NK = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = NK[0]
let K = NK[1]

var map = (1...N).map { $0 }
var index = K - 1
var res = [Int]()

while true {
    res.append(map.remove(at: index))
    if map.isEmpty { break }
    index = (index + K - 1) % map.count
}

let resString = "<" + res.map { String($0) }.joined(separator: ", ") + ">"
print(resString)
