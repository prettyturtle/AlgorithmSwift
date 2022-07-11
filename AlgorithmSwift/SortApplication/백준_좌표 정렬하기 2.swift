let li: [[Int]] = (1...Int(readLine()!)!).map { _ in readLine()!.split(separator: " ").map { Int($0)! } }.sorted { return $0[1] == $1[1] ? $0[0] < $1[0] : $0[1] < $1[1] }


for i in li {
    print(i[0], i[1])
}
