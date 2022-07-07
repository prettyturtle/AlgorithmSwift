func check(_ ss: Int) -> Bool {
    let ssArr = String(ss).map { String($0) }
    for i in 0..<ssArr.count - 2 {
        if ssArr[i] == "6" && ssArr[i+1] == "6" && ssArr[i+2] == "6" {
            return true
        }
    }
    return false
}

let n = Int(readLine()!)!

var s = 666
var count = 1

while count != n {
    s += 1
    if check(s) {
        count += 1
    }
}
print(s)
