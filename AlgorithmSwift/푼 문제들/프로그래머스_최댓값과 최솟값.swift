func solution(_ s: String) -> String {
    let arrS = s.split(separator: " ").map { Int(String($0))! }
    let max = arrS.max()!
    let min = arrS.min()!
    
    return "\(min) \(max)"
}

print(solution("1 2 3 4") == "1 4")
print(solution("-1 -2 -3 -4") == "-4 -1")
print(solution("-1 -1") == "-1 -1")
