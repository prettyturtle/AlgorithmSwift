let N = Int(readLine()!)!

var grade = [Int]()

for _ in 1...N {
    grade.append(Int(readLine()!)!)
}

grade.sort()

var count = 0

for i in 0..<grade.count {
    count += abs((i+1) - grade[i])
}
print(count)
