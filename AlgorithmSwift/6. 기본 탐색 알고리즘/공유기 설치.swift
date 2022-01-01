let nc = readLine()!.split(separator: " ")

let n = Int(nc[0])!
let c = Int(nc[1])!

var houses = [Int]()

for _ in 1...n {
    houses.append(Int(readLine()!)!)
}

houses = houses.sorted()

var start = 1
var end = houses.last! - houses.first!
var result = 0

while start <= end {
    
    let center = (start + end) / 2
    
    var value = houses[0]
    var count = 1
    
    for i in 1..<houses.count {
        if houses[i] >= value + center {
            value = houses[i]
            count += 1
        }
    }
    if count >= c {
        start = center + 1
        result = max(result, center)
    } else {
        end = center - 1
    }
}
print(result)

