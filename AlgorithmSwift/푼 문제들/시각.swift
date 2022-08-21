let nk = readLine()!.split(separator: " ").map { Int($0)! }
let (n, k) = (nk[0], nk[1])

var count = 0

for h in 0...n {
    for m in 0...59 {
        for s in 0...59 {
            var hour = String(h)
            var minu = String(m)
            var sec = String(s)
            
            if hour.count == 1 {
                hour = "0" + hour
            }
            if minu.count == 1 {
                minu = "0" + minu
            }
            if sec.count == 1 {
                sec = "0" + sec
            }
            
            if hour.contains(where: { String($0) == String(k) }) || minu.contains(where: { String($0) == String(k) }) || sec.contains(where: { String($0) == String(k) }) {
                count += 1
            }
        }
    }
}

print(count)
