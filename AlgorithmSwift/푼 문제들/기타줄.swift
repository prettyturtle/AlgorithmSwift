extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let nm = readLine()!.asIntArr
let (n, m) = (nm[0], nm[1])

var aa = [Int]()
var bb = [Int]()

for _ in 1...m {
    let ab = readLine()!.asIntArr
    let (a, b) = (ab[0], ab[1])
    
    aa.append(a)
    bb.append(b)
}

let aMin = aa.min()!
let bMin = bb.min()!

if Double(bMin) < Double(aMin) / 6.0 {
    print(n * bMin)
} else {
    let q = n / 6
    let d = n % 6
    
    let s = q * aMin + d * bMin
    let ss = (q + 1) * aMin
    
    if s < ss {
        print(s)
    } else {
        print(ss)
    }
}
