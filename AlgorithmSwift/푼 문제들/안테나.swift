let n = Int(readLine()!)!
let houses = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

if houses.count % 2 == 1 {
    print(houses[n / 2])
} else {
    print(houses[(n-1) / 2])
}
