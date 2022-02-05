func upend(_ s: String) -> String {
    return String(s.reversed())
}

let S = readLine()!

//var stack: [String] = [""]
//
//var index = 0
//
//for i in S {
//    if i == "<" {
//        stack.append("")
//        index += 1
//        stack[index].append(i)
//    } else if i == ">" {
//        stack[index].append(i)
//        index += 1
//        stack.append("")
//    } else if i == " " {
//        stack.append("")
//        index += 1
//        stack[index].append(i)
//        stack.append("")
//        index += 1
//    } else {
//        stack[index].append(i)
//    }
//}
//
//stack.removeAll { $0 == "" }
//
//var canChanged = true
//
//for i in 0..<stack.count {
//    if stack[i].contains("<") && stack[i].contains(">") {
//        canChanged = true
//        continue
//    } else if stack[i].contains("<") {
//        canChanged = false
//    } else if stack[i].contains(">") {
//        canChanged = true
//        continue
//    }
//
//
//    if canChanged {
//        stack[i] = upend(stack[i])
//    }
//}
//
//print(stack.joined())

var temp = ""
var answer = ""
var check = false

for i in S {
    let i = String(i)
    if i == " " {
        if check {
            answer += i
        } else {
            temp = String(temp.reversed())
            temp += i
            answer += temp
            temp = ""
        }
    } else if i == "<" {
        temp = String(temp.reversed())
        answer += temp
        temp = ""
        check = true
        answer += i
    } else if i == ">" {
        check = false
        answer += i
    } else {
        if check {
            answer += i
        } else {
            temp += i
        }
    }
}
temp = String(temp.reversed())
answer += temp
print(answer)
