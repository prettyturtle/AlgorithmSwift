let N = readLine()!

let count = N.count

var condition = Int(String(repeating: "1", count: count))!

if N == "0" {
    print("1")
} else if condition <= Int(N)! {
    print(count)
} else {
    print(count - 1)
}
