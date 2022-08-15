let nm = readLine()!.split(separator: " ").map { Int($0)! }
let (n, m) = (nm[0], nm[1])

let nums = readLine()!.split(separator: " ").map { Int($0)! }

var psum = Array(repeating: 0, count: n + 1)

for i in 1...n {
    psum[i] = psum[i-1] + nums[i-1]
}

for _ in 1...m {
    let ij = readLine()!.split(separator: " ").map { Int($0)! }
    let (i, j) = (ij[0], ij[1])
    
    print(psum[j] - psum[i - 1])
}
