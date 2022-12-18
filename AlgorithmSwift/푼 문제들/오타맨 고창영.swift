extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

for _ in 1...readLine()!.asInt {
    let iSt     = readLine()!.split(separator: " ").map { String($0) }
    let i       = iSt[0].asInt
    let st      = iSt[1].map { String($0) }
    
    var answer = [String]()
    
    for j in 0..<st.count {
        if j + 1 != i {
            answer.append(st[j])
        }
    }
    
    print(answer.joined())
}
