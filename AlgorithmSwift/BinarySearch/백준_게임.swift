let xy = readLine()!.split(separator: " ").map { Int($0)! }
var (x, y) = (xy[0], xy[1])

let z = (y * 100 / x)

var count = -1

var left = 1
var right = 1000000000

while left <= right {
    let mid = (left + right) / 2
    
    let nx = x + mid
    let ny = y + mid
    let nz = (ny * 100 / nx)
    
    if z != nz {
        right = mid - 1
        count = mid
    } else {
        left = mid + 1
    }
}
print(count)
