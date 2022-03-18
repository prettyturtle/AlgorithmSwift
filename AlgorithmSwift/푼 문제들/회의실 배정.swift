let N = Int(readLine()!)!

var times = [(Int, Int)]()

for _ in 1...N {
    let time = readLine()!.split(separator: " ").map { Int($0)! }
    times.append((time[0], time[1]))
}

times.sort { if $0.1 == $1.1 { return $0.0 < $1.0 } else { return $0.1 < $1.1 } }

var lastTime = -1
var result = 0

for time in times {
    if time.0 >= lastTime {
        lastTime = time.1
        result += 1
    }
}

print(result)
