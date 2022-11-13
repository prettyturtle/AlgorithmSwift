extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let n = readLine()!.asInt
let k = readLine()!.asInt

var arr = Array(repeating: Array(repeating: 0, count: n + 1), count: n + 1)

var cur = n

var count = cur

var start = (1, 1)

var directions = [(1, 0), (0, 1), (-1, 0), (0, -1)]

var num = n * n

var direction = 0

var answer = start

while true {
    if num == 0 {
        break
    }
    
    while count != 0 {
        arr[start.0][start.1] = num
        if num == k {
            answer = start
        }
        num -= 1
        if count > 1 {
            start.0 += directions[direction].0
            start.1 += directions[direction].1
        }
        count -= 1
    }
    direction = (direction + 1) % 4
    start.0 += directions[direction].0
    start.1 += directions[direction].1
    
    if direction == 0 {
        cur -= 2
        count = cur
    } else if direction == 1 || direction == 2 {
        count = cur - 1
    } else {
        count = cur - 2
    }
}

for i in 1..<arr.count {
    print(arr[i][1...].map { String($0) }.joined(separator: " "))
}
print(answer.0, answer.1)
