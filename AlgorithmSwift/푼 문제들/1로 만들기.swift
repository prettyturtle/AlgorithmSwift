let n = Int(readLine()!)!
if n == 1 {
    print(0)
} else if n == 2 {
    print(1)
} else if n == 3 {
    print(1)
} else {
    var dp = Array(repeating: 0, count: n + 1)
    dp[1] = 0
    dp[2] = 1
    dp[3] = 1
    for i in 4...n {
        dp[i] = 1 + dp[i - 1]
        if i % 2 == 0 {
            dp[i] = min(dp[i], 1 + dp[i / 2])
        }
        if i % 3 == 0 {
            dp[i] = min(dp[i], 1 + dp[i / 3])
        }
    }
    print(dp[n])
}
