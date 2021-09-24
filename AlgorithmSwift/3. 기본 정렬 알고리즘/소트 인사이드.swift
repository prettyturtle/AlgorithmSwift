// 첫번째 방법
let nums = readLine()!
var num_count = Array(repeating: 0, count: 10)

for num in nums {
    num_count[Int(String(num))!] += 1
}

for i in (0...9).reversed() {
    if num_count[i] != 0 {
        for _ in 1...num_count[i] {
            print(i, terminator: "")
        }
    }
}



// 두번째 방법
//let nums = readLine()!

for i in (0...9).reversed() {
    for num in nums {
        if Int(String(num))! == i {
            print(i, terminator: "")
        }
    }
}

