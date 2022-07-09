var w = [Int]()
var k = [Int]()
for _ in 1...10 {
    w.append(Int(readLine()!)!)
}
for _ in 1...10 {
    k.append(Int(readLine()!)!)
}

w.sort()
k.sort()

let wm = w[9] + w[8] + w[7]
let km = k[9] + k[8] + k[7]

print(wm, km)
