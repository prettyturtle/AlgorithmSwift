extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let n = readLine()!.asInt

let nums = readLine()!.asIntArr

let m = readLine()!.asInt

let mnums = readLine()!.asIntArr

var dict = [Int: Int]()

for num in nums { if dict[num] == nil { dict[num] = 1 } else { dict[num]! += 1 } }

mnums.map { if dict[$0] == nil { return 0 } else { return dict[$0]! } }.forEach { print($0, terminator: " ") }
