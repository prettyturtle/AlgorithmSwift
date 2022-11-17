func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}

let nm = readLine()!.split(separator: ":").map { Int($0)! }
let (n, m) = (nm[0], nm[1])
let g = gcd(n, m)

print("\(n / g):\(m / g)")
