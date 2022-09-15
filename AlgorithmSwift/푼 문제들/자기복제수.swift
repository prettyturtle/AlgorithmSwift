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
    let n = readLine()!.asInt
    
    let nn = (n * n).description
    
    if nn.hasSuffix(n.description) {
        print("YES")
    } else {
        print("NO")
    }
}
