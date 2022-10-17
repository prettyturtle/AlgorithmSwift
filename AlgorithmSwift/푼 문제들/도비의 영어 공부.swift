while true {
    let input = readLine()!.lowercased()
    if input == "#" { break }
    
    let fir = input.first!
    
    var count = -1
    
    for i in input {
        if fir == i {
            count += 1
        }
    }
    
    print(fir, count)
}
