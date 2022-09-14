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
    let ab = readLine()!.split(separator: " ").map { String($0) }
    let (a, b) = (ab[0], ab[1])
    
    let (intA, intB) = (Int(a, radix: 2)!, Int(b, radix: 2)!)
    
    let tenAB = String(intA + intB, radix: 2, uppercase: false)
    print(tenAB)
}
