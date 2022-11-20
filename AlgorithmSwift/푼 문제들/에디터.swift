var text = readLine()!.map { String($0) }
let m = Int(readLine()!)!

var stack = [String]()

for _ in 1...m {
    let temp = readLine()!.split(separator: " ").map { String($0) }
    switch temp[0] {
    case "L":
        if !text.isEmpty {
            let la = text.removeLast()
            stack.append(la)
        }
    case "D":
        if !stack.isEmpty {
            let la = stack.removeLast()
            text.append(la)
        }
    case "B":
        if !text.isEmpty {
            text.removeLast()
        }
    case "P":
        text.append(temp[1])
    default:
        break
    }
}

text = text + stack.reversed()

print(text.joined())
