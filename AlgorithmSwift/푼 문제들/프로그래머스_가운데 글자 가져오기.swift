func solution(_ s: String) -> String {
    
    let arrS = s.map { String($0) }
    let n = s.count
    
    // s = "a" -> n = 1, return: "a" = s
    // s = "ab" -> n = 2, return: "ab" = s
    // s = "abc" -> n = 3, return: "b" = arrS[n/2]
    // s = "abcd" -> n = 4, return: "bc" = arrS[n/2-1...n/2]
    // s = "abcde" -> n = 5, return: "c" = arrS[n/2]
    
    if n == 1 || n == 2 {
        return s
    } else {
        if n % 2 == 0 {
            let ret = arrS[(n/2)-1...n/2].joined(separator: "")
            return ret
        } else {
            return String(arrS[n/2])
        }
    }
}
