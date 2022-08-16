let n = Int(readLine()!)!

var dp = Array(repeating: 0, count: 1001)

dp[1] = 1
dp[2] = 2
dp[3] = 3

if n >= 4 {
    for i in 4...n {
        dp[i] = (dp[i - 1] + dp[i - 2]) % 10007
    }
}
print(dp[n] % 10007)
