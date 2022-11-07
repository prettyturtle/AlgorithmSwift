extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let n = readLine()!.asInt

let temp = [1, 2, 3, 4, 5, 4, 3, 2]

print(temp[(n-1) % 8])
