let s = readLine()!

func is팰린드롬(_ ss: [String]) -> Bool {
    let count = ss.count
    if count == 1 {
        return true
    }
    
    if count % 2 == 0 {
        for i in 0..<(count/2) {
            if ss[i] != ss[count - i - 1] {
                return false
            }
        }
    } else {
        for i in 0..<(count/2 + 1) {
            if ss[i] != ss[count - i - 1] {
                return false
            }
        }
    }
    return true
}
print(is팰린드롬(s.map { String($0) }) ? 1 : 0)
