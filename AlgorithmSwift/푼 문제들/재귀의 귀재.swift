extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let t = readLine()!.asInt
var count = 1
func recursion(_ arr: [String], _ l: Int, _ r: Int) -> Int {
    if l >= r {
        return 1
    } else if arr[l] != arr[r] {
        return 0
    } else {
        count += 1
        return recursion(arr, l + 1, r - 1)
    }
}


func isPalindrome(_ arr: [String]) -> Int {
    return recursion(arr, 0, arr.count - 1)
}

for _ in 1...t {
    let s = readLine()!.map { String($0) }
    print(isPalindrome(s), count)
    count = 1
}
