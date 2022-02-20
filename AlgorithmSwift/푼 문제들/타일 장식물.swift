let N = Int(readLine()!)!

var dp = [0, 1]

var result = 0

if N == 1 {
    result = 2
} else {
    for i in 2...N {
        dp.append(dp[i-1] + dp[i-2])
    }

    result = dp.reduce(0, { $0 + ($1*2) })
}

result += 2
print(result)
