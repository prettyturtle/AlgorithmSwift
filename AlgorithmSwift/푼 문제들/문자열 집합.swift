// MARK: - Sol 1
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

var dict = [String: Int]()

for _ in 1...n {
    let temp = readLine()!
    if dict[temp] == nil {
        dict[temp] = 1
    }
}

var count = 0
for _ in 1...m {
    let temp = readLine()!
    if dict[temp] != nil {
        count += 1
    }
}

print(count)

// MARK: - Sol 2
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

var a = Set<String>()

for _ in 1...n {
    a.insert(readLine()!)
}

var count = 0
for _ in 1...m {
    let temp = readLine()!
    if a.contains(temp) {
        count += 1
    }
}

print(count)
