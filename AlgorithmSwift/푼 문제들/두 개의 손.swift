func RSPWin(hand: String) -> String {
    switch hand {
    case "R":
        return "S"
    case "S":
        return "P"
    case "P":
        return "R"
    default:
        return ""
    }
}

let MMTT = readLine()!.split(separator: " ").map { String($0) }

let MM = [MMTT[0], MMTT[1]]
let TT = [MMTT[2], MMTT[3]]

if [RSPWin(hand: MM[0]), RSPWin(hand: MM[0])] == TT || [RSPWin(hand: MM[1]), RSPWin(hand: MM[1])] == TT {
    print("MS")
} else if [RSPWin(hand: TT[0]), RSPWin(hand: TT[0])] == MM || [RSPWin(hand: TT[1]), RSPWin(hand: TT[1])] == MM {
    print("TK")
} else {
    print("?")
}
