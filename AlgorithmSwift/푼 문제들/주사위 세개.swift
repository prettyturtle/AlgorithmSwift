var dices = readLine()!.split(separator: " ").map { Int($0)! }

let sameEye = Set(dices)

switch sameEye.count {
case 1:
    print(10000 + sameEye.first! * 1000)
case 2:
    dices.sort()
    print(1000 + dices[1] * 100)
case 3:
    print(sameEye.max()! * 100)
default:
    break
}
