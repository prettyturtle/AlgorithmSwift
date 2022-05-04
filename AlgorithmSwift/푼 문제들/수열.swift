let NK = readLine()!.split(separator: " ").map { Int($0)! }
let N = NK[0]
let K = NK[1]

let degrees = readLine()!.split(separator: " ").map { Int($0)! }

var sums = [Int]()

for i in degrees.indices {
    if i > N - K {
        break
    }
    var temp = 0
    
    if i == 0 {
        for j in i...i+K-1 {
            temp += degrees[j]
        }
        sums.append(temp)
    }
    
    if i >= 1 {
        temp = sums.last!
        temp -= degrees[i-1]
        temp += degrees[i+K-1]
        sums.append(temp)
    }
}
print(sums.max()!)
