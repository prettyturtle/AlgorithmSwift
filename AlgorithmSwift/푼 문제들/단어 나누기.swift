let s = readLine()!.map { String($0) }

let sc = s.count

var aa: String?
for i in 1...sc-2 {
    for j in 1...sc-i-1 {
        let a = s[0..<i].reversed().joined()
        let b = s[i..<i+j].reversed().joined()
        let c = s[i+j..<sc].reversed().joined()
        
        if aa == nil {
            aa = a + b + c
        } else {
            aa = min(aa!, a + b + c)
        }
    }
}
print(aa!)
