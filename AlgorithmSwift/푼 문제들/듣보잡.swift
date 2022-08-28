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


var d = Set<String>()
var b = Set<String>()

for _ in 1...n {
    d.insert(readLine()!)
}
for _ in 1...m {
    b.insert(readLine()!)
}
let result = d.intersection(b).sorted()
print(result.count)
result.forEach { print($0) }
