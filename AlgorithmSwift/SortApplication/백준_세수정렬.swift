let n = readLine()!.split(separator: " ").map { Int($0)! }
let (a, b, c) = (n[0], n[1], n[2])

if a < b && b < c {
    print(a, b, c)
} else if a < c && c < b {
    print(a, c, b)
} else if b < a && a < c {
    print(b, a, c)
} else if b < c && c < a {
    print(b, c, a)
} else if c < a && a < b {
    print(c, a, b)
} else {
    print(c, b, a)
}
