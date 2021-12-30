let n = Int(readLine()!)!

var dic = [String: Int]()

for _ in 1...n {
    let book = readLine()!

    if dic.keys.contains(book) {
        dic[book]! += 1
    } else {
        dic[book] = 1
    }
}

var li = Array(dic).sorted {
    if $0.1 == $1.1 {
        return $0.0 < $1.0
    } else {
        return $0.1 > $1.1
    }
}

print(li[0].0)
