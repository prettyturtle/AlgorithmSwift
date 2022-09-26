extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let n = readLine()!.asInt

func isG(_ s: String) -> Bool {
    for i in s {
        if i != "4" && i != "7" {
            return false
        }
    }
    return true
}

for i in (1...n).reversed() {
    if isG(i.description) {
        print(i)
        break
    }
}
