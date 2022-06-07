let NM = readLine()!.split(separator: " ").map { Int(String($0))! }
let N = NM[0]
let M = NM[1]

let nums = readLine()!.split(separator: " ").map { Int(String($0))! }

var psum = Array(repeating: nums[0], count: N)

for i in 1..<N {
    psum[i] = psum[i-1] + nums[i]
}
psum = [0] + psum

for _ in 1...M {
    let ij = readLine()!.split(separator: " ").map { Int(String($0))! }
    let i = ij[0]
    let j = ij[1]
    print(psum[j] - psum[i-1])
}
