func solution(_ num: Int) -> Int {
    return aaa(num, 0)
}

func aaa(_ num: Int, _ count: Int) -> Int {
    if count >= 501 && num != 1 {
        return -1
    }
    
    if num == 1 {
        return count
    }
    
    var temp = num
    
    if num % 2 == 0 {
        temp = num / 2
    }
    
    if num % 2 == 1 {
        temp = num * 3 + 1
    }
    
    return aaa(temp, count + 1)
}
