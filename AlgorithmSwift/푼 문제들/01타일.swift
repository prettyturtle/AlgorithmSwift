let N = Int(readLine()!)!

/*
 N = 1 => 1 -> 1개
 N = 2 => 00, 11 -> 2개
 N = 3 => 100, 001, 111 -> 3개
 N = 4 => 0000, 0011, 1001, 1100, 1111 -> 5개
 N = 5 => 00001, 00100, 10000, 00111, 10011, 11001, 11100, 11111 -> 8개
 
 점화식
 a_n = a_(n-1) + a_(n-2)
*/

func solution(_ N: Int) -> Int {
    var dp = [0, 1, 2]
    switch N {
    case 1:
        return 1
    case 2:
        return 2
    default:
        for i in 3...N {
            dp.append((dp[i-1] + dp[i-2]) % 15746)
        }
        return dp[N]
    }
}

print(solution(N))
