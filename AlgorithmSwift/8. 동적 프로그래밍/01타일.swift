let n = Int(readLine()!)!

var dp = Array(repeating: 0, count: 1000001)

dp[1] = 1
dp[2] = 2
dp[3] = 3
dp[4] = 5

if n >= 5 {
    for i in 5...n {
        dp[i] = (dp[i-1] + dp[i-2]) % 15746
    }
}

print(dp[n])
