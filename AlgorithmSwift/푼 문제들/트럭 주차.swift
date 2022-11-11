extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}


let abc = readLine()!.asIntArr
let (a, b, c) = (abc[0], abc[1], abc[2])

var arr = Array(repeating: 0, count: 101)

for _ in 1...3 {
    let temp = readLine()!.asIntArr
    
    for i in temp[0]..<temp[1] {
        arr[i] += 1
    }
}

arr = arr.filter { $0 != 0 }

var count = 0

for i in arr {
    var t = a
    
    if i == 2 {
        t = b
    } else if i == 3 {
        t = c
    }
    
    count += t * i
}
print(count)
