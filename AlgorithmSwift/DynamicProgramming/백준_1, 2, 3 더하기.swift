let t = Int(readLine()!)!
var dp1 = Array(repeating: 0, count: 12)
var dp2 = Array(repeating: 0, count: 12)
for _ in 1...t {
    let n = Int(readLine()!)!
    
    dp1[1] = 1
    dp1[2] = 2
    dp1[3] = 4
    
    dp2[0] = 0
    dp2[1] = 1
    dp2[2] = 2
    
    if n <= 3 {
        print(dp1[n])
        continue
    }
    
    for i in 4...n {
        dp2[i-1] = dp2[i-2] + dp2[i-3] + dp2[i-4]
        dp1[i] = dp1[i-1] + dp2[i-1]
    }
    print(dp1[n])
}
