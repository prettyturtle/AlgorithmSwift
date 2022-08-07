let n = Int(readLine()!)!

var dp = Array(repeating: [0, 0], count: n + 1)

dp[0] = [1, 0]
dp[1] = [0, 1]

func solution(_ n: Int) -> [Int] {
    if n <= 1 {
        return dp[n]
    }
    for i in 2...n {
        let x = dp[i - 1][0] + dp[i - 2][0]
        let y = dp[i - 1][1] + dp[i - 2][1]
        dp[i] = [x, y]
    }
    return dp[n]
}
let sol = solution(n)
print(sol[0], sol[1])
