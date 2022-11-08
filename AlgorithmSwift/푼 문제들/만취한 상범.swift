extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let t = readLine()!.asInt

func solution(_ n: Int) -> Int {
    var map = Array(repeating: false, count: n + 1)
    
    for i in 1...n {
        
        var count = 1
        
        while i * count <= n {
            map[i * count] = map[i * count] ? false : true
            count += 1
        }
    }
    
    return map.filter { $0 }.count
}

for _ in 1...t {
    let temp = readLine()!.asInt
    
    print(solution(temp))
}
