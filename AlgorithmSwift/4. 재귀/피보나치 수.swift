//func fibonacci(_ n: Int) -> Int {
//    if n == 0 {
//        return 0
//    }
//    if n == 1 {
//        return 1
//    }
//    return fibonacci(n-1) + fibonacci(n-2)
//}


//func fibonacci(_ n: Int) -> Int {
//    var cache = [0, 1]
//    if n != 0 {
//        for _ in 0..<(n-1) {
//            cache.append(cache[cache.index(before: cache.endIndex)] &+ cache[cache.index(before: cache.endIndex-1)])
//        }
//    }
//    return cache[n]
//}

func fibonacci(_ n: Int) -> Int {
    var n = n, a = 0, b = 1
    var temp = a
    while n > 0 {
        a = b
        b = temp+b
        temp = a
        n -= 1
    }
    return a
}



let n = Int(readLine()!)!
print(fibonacci(n))
