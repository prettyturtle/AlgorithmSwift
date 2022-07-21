// 최소신장트리
let t = Int(readLine()!)!

for _ in 1...t {
    let nm = readLine()!.split(separator: " ").map { Int($0)! }
    let (n, m) = (nm[0], nm[1])
    
    for _ in 1...m {
        let _ = readLine()!.split(separator: " ").map { Int($0)! }
    }
    print(n-1)
}
