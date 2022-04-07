import Foundation

func exchangeMin(_ s: String) -> Int {
    let arrS = s.split(separator: ":").map { Int(String($0))! }
    let hour = arrS[0]
    let minute = arrS[1] + hour * 60
    return minute
}

func solution(_ fees: [Int], _ records: [String]) -> [Int] {
    let defaultTime = fees[0]
    let defaultPrice = fees[1]
    let unitTime = fees[2]
    let unitPrice = fees[3]
    
    var dict = [String: [Int]]()
    var priceDict = [String: Int]()
    var carNumbers = [String]()
    
    for record in records {
        var recordArr: [Any] = record.split(separator: " ").map { String($0) }
        recordArr[0] = exchangeMin(recordArr[0] as! String)
        
        if dict[recordArr[1] as! String] != nil {
            dict[recordArr[1] as! String]!.append(recordArr[0] as! Int)
        } else {
            dict[recordArr[1] as! String] = [recordArr[0] as! Int]
            priceDict[recordArr[1] as! String] = 0
            carNumbers.append(recordArr[1] as! String)
        }
    }
    
    for (key, value) in dict {
        if value.count % 2 == 1 {
            dict[key]!.append(1439)
        }
    }
    
    for carNumber in carNumbers {
        var totalTime = 0
        var totalPrice = 0
        for i in 0..<dict[carNumber]!.count {
            if i % 2 == 0 {
                let d = dict[carNumber]![i + 1] - dict[carNumber]![i]
                totalTime += d
            }
        }
        
        if totalTime <= defaultTime {
            totalPrice = defaultPrice
        } else {
            totalTime -= defaultTime
            totalPrice += defaultPrice
            let m = Int(ceil(Double(totalTime) / Double(unitTime)))
            totalPrice += m * unitPrice
        }
        priceDict[carNumber]! = totalPrice
    }
    
    carNumbers.sort()
    
    var ret = [Int]()
    
    for carNumber in carNumbers {
        ret.append(priceDict[carNumber]!)
    }
    
    return ret
}

print(solution([180, 5000, 10, 600], ["05:34 5961 IN", "06:00 0000 IN", "06:34 0000 OUT", "07:59 5961 OUT", "07:59 0148 IN", "18:59 0000 IN", "19:09 0148 OUT", "22:59 5961 IN", "23:00 5961 OUT"]) == [14600, 34400, 5000])
print(solution([120, 0, 60, 591], ["16:00 3961 IN","16:00 0202 IN","18:00 3961 OUT","18:00 0202 OUT","23:58 3961 IN"]) == [0, 591])
print(solution([1, 461, 1, 10], ["00:00 1234 IN"]) == [14841])
