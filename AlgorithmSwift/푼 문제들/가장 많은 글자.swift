var texts = [String]()

while true {
    if let text = readLine() {
        texts += text.split(separator: " ").map { String($0) }
    } else {
        break
    }
}

var textss = texts.joined(separator: "")

var dic = [String: Int]()

for i in textss {
    let a = String(i)
    
    if dic[a] == nil {
        dic[a] = 1
    } else {
        dic[a]! += 1
    }
}

let b = dic.map { ($0.key, $0.value) }.sorted {
    if $0.1 == $1.1 {
        return $0.0 < $1.0
    } else {
        return $0.1 > $1.1
    }
}

print(b.first!.0, terminator: "")

for i in 1..<b.count {
    if b.first!.1 == b[i].1 {
        print(b[i].0, terminator: "")
    } else {
        break
    }
}
