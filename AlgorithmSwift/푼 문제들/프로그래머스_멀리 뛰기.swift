func solution(_ n: Int) -> Int {
    var dp = Array(repeating: 0, count: n+1)
    if n == 1 || n == 2 {
        return n
    }
    dp[1] = 1
    dp[2] = 2
    
    if n > 2 {
        for i in 3...n {
            dp[i] = (dp[i-1] + dp[i-2]) % 1234567
        }
    }
    return dp[n]
}

// n = 1 -> 1 => 1
// n = 2 -> 1 1, 2 => 2
// n = 3 -> 1 1 1, 1 2, 2 1 => 3
// n = 4 -> 1 1 1 1, 1 1 2, 2 1 1, 1 2 1, 2 2 => 5
// n = 5 -> 1 1 1 1 1, 1 1 1 2, 1 1 2 1, 2 1 1 1, 1 2 1 1, 1 2 2, 2 2 1, 2 1 2 => 8
