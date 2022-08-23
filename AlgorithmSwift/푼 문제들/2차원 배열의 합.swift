extension String {
    var asInt: Int { return Int(self)! }
    var asIntArr: [Int] { return self.split(separator: " ").map { Int($0)! } }
}

let nm = readLine()!.asIntArr
let (n, m) = (nm[0], nm[1])
var nums = [[Int]]()

for _ in 1...n {
    nums.append(readLine()!.asIntArr)
}

var dp = Array(
    repeating: Array(
        repeating: 0,
        count: m + 1
    ),
    count: n + 1
)

for i in 1...n {
    for j in 1...m {
        dp[i][j] = dp[i - 1][j]
                    + dp[i][j - 1]
                    - dp[i - 1][j - 1]
                    + nums[i - 1][j - 1]
        // 위쪽 누적합 + 옆쪽 누적합 - 대각선 누적합 + 현재 값
    }
}

let k = readLine()!.asInt

for _ in 1...k {
    let ijxy = readLine()!.asIntArr
    let (i, j, x, y) = (ijxy[0], ijxy[1], ijxy[2], ijxy[3])
    
    print(dp[x][y] - dp[x][j - 1] - dp[i - 1][y] + dp[i - 1][j - 1])
}
