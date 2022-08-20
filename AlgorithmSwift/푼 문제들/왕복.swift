let nk = readLine()!.split(separator: " ").map { Int($0)! }
var (n, k) = (nk[0], nk[1])

let map = readLine()!.split(separator: " ").map { Int($0)! }

var course = [(Int, Int)]()

for i in 0..<n {
    course.append((i + 1, map[i]))
}

course.append(contentsOf: course.reversed())

var i = 0

while true {
    k -= course[i].1
    
    if k < 0 {
        print(course[i].0)
        break
    }
    i += 1
}
