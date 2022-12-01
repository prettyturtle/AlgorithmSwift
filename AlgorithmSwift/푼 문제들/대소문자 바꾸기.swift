let arr1 = ["q", "w", "e", "r", "t", "y", "u", "i", "o", "p", "l", "k", "j", "h", "g", "f", "d", "s", "a", "z", "x", "c", "v", "b", "n", "m"]
let arr2 = ["Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P", "L", "K", "J", "H", "G", "F", "D", "S", "A", "Z", "X", "C", "V", "B", "N", "M"]

var dic1 = [String: String]()
var dic2 = [String: String]()

for i in 0..<arr1.count {
    dic1[arr1[i]] = arr2[i]
    dic2[arr2[i]] = arr1[i]
}

var s = readLine()!.map { String($0) }

for i in 0..<s.count {
    if let so = dic1[s[i]] {
        s[i] = so
        continue
    }
    if let de = dic2[s[i]] {
        s[i] = de
        continue
    }
}

print(s.joined())
