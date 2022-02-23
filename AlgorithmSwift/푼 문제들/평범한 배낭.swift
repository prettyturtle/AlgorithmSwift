let NK = readLine()!.split(separator: " ").map { Int($0)! }
let N = NK[0]
let K = NK[1]

var items = [(W: Int, V: Int)]()

for _ in 1...N {
    let WV = readLine()!.split(separator: " ").map { Int($0)! }
    let W = WV[0]
    let V = WV[1]
    items.append((W: W, V: V))
}

var dp = Array(repeating: Array(repeating: 0, count: K+1), count: N+1)

for i in 1...items.count {
    
    let current = items[i-1]
    
    for j in 0...K {
        if i == 1 {
            if j >= current.W {
                dp[i][j] = current.V
            }
        } else {
            if j < current.W {
                dp[i][j] = dp[i-1][j]
            } else {
                dp[i][j] = max(dp[i-1][j], current.V + dp[i-1][j-current.W])
            }
        }
    }
}

print(dp.last!.max()!)

/*
4 7
6 13
4 8
3 6
5 12
 */
// 14

/*
10 999
46 306
60 311
33 724
18 342
57 431
49 288
12 686
89 389
82 889
16 289
*/
// 4655
