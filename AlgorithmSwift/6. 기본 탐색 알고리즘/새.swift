
var n = Int(readLine()!)!

var result = 0
var count = 1

while n != 0 {
    if n >= count {
        n -= count
        count += 1
        result += 1
    } else {
        count = 1
    }
}

print(result)
