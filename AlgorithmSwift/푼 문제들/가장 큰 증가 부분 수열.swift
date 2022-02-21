let N = Int(readLine()!)!

let arr = readLine()!.split(separator: " ").map { Int($0)! }

var dp = arr

for i in 1..<N {
    for j in 0..<i {
        if arr[i] > arr[j] {
            dp[i] = max(dp[j] + arr[i], dp[i])
        }
    }
}

print(dp.max()!)
