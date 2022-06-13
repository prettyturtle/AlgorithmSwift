func solution(_ phone_number: String) -> String {
    
    let pCount = phone_number.count
    let star = String(repeating: "*", count: pCount - 4)
    let numbers = Array(phone_number)[pCount-4..<pCount].map { String($0) }.joined()
    
    return star + numbers
}
