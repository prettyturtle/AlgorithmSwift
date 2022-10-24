while true {
    let temp = readLine()!.lowercased()
    
    if temp == "#" { break }
    
    var count = 0
    
    for i in temp {
        if i == "a" || i == "e" || i == "i" || i == "o" || i == "u" {
            count += 1
        }
    }
    
    print(count)
}
