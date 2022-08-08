let n = Int(readLine()!)!

var words = [String]()

for _ in 1...n {
    words.append(readLine()!)
}

words = Array(Set(words))

words.sort {
    if $0.count == $1.count {
        return $0 < $1
    } else {
        return $0.count < $1.count
    }
}

for word in words {
    print(word)
}
