extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let nd = readLine()!.asIntArr

let (n, d) = (nd[0], nd[1].description)

let s = (1...n).map { $0.description }.joined()

let answer = s.filter { String($0) == d }.count
print(answer)
