let numberList = ["1", "2", "3"]

var 모든수조합리스트 = [String]()

func 모든수조합만들기(numberList: [String], currentNumber: String) {
    if currentNumber != "" {
        모든수조합리스트.append(currentNumber)
    }
    
    for i in 0..<numberList.count {
        var newNumberList = numberList
        let newCurrentNumber = newNumberList.remove(at: i)
        
        모든수조합만들기(numberList: newNumberList, currentNumber: currentNumber + newCurrentNumber)
    }
}

모든수조합만들기(numberList: numberList, currentNumber: "")

print(Set(모든수조합리스트))
