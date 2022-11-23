let n = Int(readLine()!)!

func sol(_ n: Int) -> Int {
    if n == 1 {
        return 1
    }
    
    if n == 2 {
        return 3
    }
    
    var dp = Array(repeating: 0, count: n + 1)
    
    dp[1] = 1
    dp[2] = 3
    
    for i in 3...n {
        dp[i] = (dp[i - 1] + dp[i - 2] + dp[i - 2]) % 10007
    }
    return dp[n]
}

print(sol(n))
