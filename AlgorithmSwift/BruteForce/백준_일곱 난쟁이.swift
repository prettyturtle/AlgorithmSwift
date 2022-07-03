var heights = [Int]()

for _ in 0..<9 {
    heights.append(Int(readLine()!)!)
}

let sum = heights.reduce(0, +)

var i = 0

var running = true

while running {
    for j in i+1..<9 {
        if (sum - heights[i] - heights[j]) == 100 {
            heights[i] = 0
            heights[j] = 0
            running = false
            break
        }
    }
    i += 1
}

heights.sort()

heights[2..<9].forEach {
    print($0)
}
