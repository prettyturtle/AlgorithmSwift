extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let n = readLine()!.asInt

var dict = [String: Int]()

for _ in 1...n {
    let temp = readLine()!
    
    if let _ = dict[temp] {
        dict[temp]! += 1
    } else {
        dict[temp] = 1
    }
}


print(
    Array(dict).sorted {
        if $0.value == $1.value {
            return $0.key < $1.key
        } else {
            return $0.value > $1.value
        }
    }
        .first!
        .key
)
