extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let n = readLine()!.asInt

let ns = readLine()!.asIntArr

var a = Array(repeating: false, count: 101)

var count = 0

for i in ns {
    if !a[i] {
        a[i] = true
    } else {
        count += 1
    }
}

print(count)
