func solution(_ n: Int64) -> Int64 {
    let nn = Int64(n)
    var x: Int64 = 0
    
    for i in 1...nn {
        if i * i == nn {
            x = i
            break
        }
    }
    
    if x == 0 {
        return -1
    } else {
        return Int64((x+1) * (x+1))
    }
}
