let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])

var map = [Array(repeating: 0, count: n + 1)]

for _ in 1...n {
    map.append([0] + readLine()!.split(separator: " ").map { Int($0)! })
}

var psums = Array(repeating: Array(repeating: 0, count: n + 1), count: n + 1)

for r in 1...n {
    for c in 1...n {
        psums[r][c] = psums[r - 1][c] + psums[r][c - 1] - psums[r - 1][c - 1] + map[r][c]
    }
}

for _ in 1...m {
    let x1y1x2y2 = readLine()!.split(separator: " ").map { Int($0)! }
    let (x1, y1, x2, y2) = (x1y1x2y2[0], x1y1x2y2[1], x1y1x2y2[2], x1y1x2y2[3])

    print(psums[x2][y2] - psums[x1 - 1][y2] - psums[x2][y1 - 1] + psums[x1 - 1][y1 - 1])
}
