extension String {
    var asInt: Int { Int(self)! }
}

let n = readLine()!.asInt

func solution(_ nn: Int) -> Int {
    if nn == 1 {
        return -1
    }
    
    let mock = nn / 5
    
    let na = nn % 5
    
    if na % 2 == 1 {
        if mock == 0 {
            return -1
        }
        var count = 0
        count += mock - 1
        count += (na + 5) / 2
        return count
    } else {
        return mock + (na / 2)
    }
}

print(solution(n))
