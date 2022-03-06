let NK = readLine()!.split(separator: " ").map { Int($0)! }
let N = NK[0]
let K = NK[1]
if K == 0 || K == N {
    print(1)
} else {
    
    let 분자 = (N-K+1...N).reduce(1, *)
    let 분모 = (1...K).reduce(1, *)
    print(분자 / 분모)
}
