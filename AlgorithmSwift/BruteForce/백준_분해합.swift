let n = Int(readLine()!)!

func sol(_ b: Int) -> Int {
    return String(b).map { Int(String($0))! }.reduce(0, +) + b
}

for i in 1...n {
    if n == sol(i) {
        print(i)
        break
    } else {
        if n == i {
            print(0)
        }
    }
}
