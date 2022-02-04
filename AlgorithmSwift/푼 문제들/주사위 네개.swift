let n: Int = Int(readLine()!)!

var moneyList: [Int] = []

for _ in 1...n {
    var dices: [Int] = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
    let sameEye = Set(dices)
    
    switch sameEye.count {
    case 1:
        moneyList.append(sameEye.first!*5000 + 50000)
    case 2:
        if dices[1] == dices[2] {
            moneyList.append(dices[1]*1000 + 10000)
        } else {
            moneyList.append(2000 + dices[1]*500 + dices[2]*500)
        }
    case 3:
        for i in sameEye {
            let index = dices.firstIndex(of: i)
            dices.remove(at: index!)
        }
        moneyList.append(dices[0]*100 + 1000)
    case 4:
        moneyList.append(dices.last! * 100)
    default:
        break
    }
}

print(moneyList.max()!)
