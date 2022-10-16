import Foundation

extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let n = readLine()!.asInt

let ss = (1...n).map { String($0) }.joined().components(separatedBy: "\(n)").first!.count + 1
print(ss)
