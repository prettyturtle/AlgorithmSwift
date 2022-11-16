extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let t = readLine()!.asInt

for _ in 1...t {
    let ab = readLine()!.asIntArr
    let (a, b) = (ab[0], ab[1])
    
    print(a * b / gcd(a, b))
}

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}
