extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let nk = readLine()!.asIntArr

let (n, k) = (nk[0], nk[1])


print((1...k).map { String(n * $0) }.map { $0.reversed() }.map { String($0).asInt }.sorted(by: >).first!)
