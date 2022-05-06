let N = Int(readLine()!)!

var houses = [[Int]]()

for _ in 1...N {
    let house = readLine()!.split(separator: " ").map { Int($0)! }
    houses.append(house)
}

var dp = Array(repeating: [0, 0, 0], count: N+1)

for i in 1...N {
    dp[i][0] = min(dp[i-1][1], dp[i-1][2]) + houses[i - 1][0]
    dp[i][1] = min(dp[i-1][0], dp[i-1][2]) + houses[i - 1][1]
    dp[i][2] = min(dp[i-1][0], dp[i-1][1]) + houses[i - 1][2]
}

print(dp.last!.min()!)
