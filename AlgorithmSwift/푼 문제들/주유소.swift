let N = Int(readLine()!)!
let distance = readLine()!.split(separator: " ").map { Int($0)! }
let price = readLine()!.split(separator: " ").map { Int($0)! }
var map = [(Int, Int)]()

for i in 0..<N {
    if i == N-1 {
        map.append((price[i], 0))
    } else {
        map.append((price[i], distance[i]))
    }
}

var totalPrice = 0
var currentMinPrice = 1000000001

for i in 0..<map.count {
    if map[i].1 != 0 {
        if map[i].0 < currentMinPrice {
            totalPrice += map[i].0 * map[i].1
            currentMinPrice = map[i].0
        } else {
            totalPrice += currentMinPrice * map[i].1
        }
    }
}

print(totalPrice)
