let s = readLine()!.map { String($0) }

var sl = ""

var len = 0

for i in s {
    if sl.isEmpty {
        len += 10
    } else {
        if sl == i {
            len += 5
        } else {
            len += 10
        }
    }
    sl = i
}

print(len)
