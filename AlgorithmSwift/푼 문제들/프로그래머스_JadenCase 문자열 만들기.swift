func solution(_ s: String) -> String {
    var li = s.map { String($0.lowercased()) }
    
    if li.count == 1 && !Character(li[0]).isNumber {
        li[0] = li[0].uppercased()
        return li[0]
    }
    
    for i in 0..<li.count-1 {
        if i == 0 && !Character(li[i]).isNumber {
            li[0] = li[0].uppercased()
        }
        if li[i] == " " && !Character(li[i+1]).isNumber {
            li[i+1] = li[i+1].uppercased()
        }
    }
    return li.joined(separator: "")
}

print(solution(" 3peoPle unFollowed me ") == " 3people Unfollowed Me ")
print(solution("for the last week") == "For The Last Week")
print(solution("a") == "A")
