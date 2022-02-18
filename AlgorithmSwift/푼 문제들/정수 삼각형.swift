let n = Int(readLine()!)!

var arr = Array(repeating: Array(repeating: 0, count: n+1), count: n+1)

for i in 1...n {
    let line = readLine()!.split(separator: " ").map { Int($0)! }

    for j in 0..<i {
        arr[i][j+1] = line[j]
    }
}

var dp = Array(repeating: Array(repeating: 0, count: n+1), count: n+1)

for i in 1...n {
    for j in 1...i {
        dp[i][j] = arr[i][j] + max(dp[i-1][j], dp[i-1][j-1])
    }
}

print(dp[n].max()!)
