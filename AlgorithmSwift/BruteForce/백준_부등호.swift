let n = Int(readLine()!)!

let bus = readLine()!.split(separator: " ").map { $0 }

func permutation(_ arr: [Int], _ target: Int) -> [[Int]] {
    var result = [[Int]]()
    var arrDict = [Int: Bool]()
    for i in arr {
        arrDict[i] = false
    }

    func permute(_ current: [Int]) {
        if current.count == target {
            
            var check = true
            for i in 0..<bus.count {
                if bus[i] == "<" {
                    if current[i] > current[i + 1] {
                        check = false
                        break
                    }
                } else {
                    if current[i] < current[i + 1] {
                        check = false
                        break
                    }
                }
            }
            
            if check { result.append(current) }
            return
        }

        for i in 0..<arr.count {
            if arrDict[i] == true {
                continue
            } else {
                arrDict[i] = true
                permute(current + [arr[i]])
                arrDict[i] = false
            }
        }

    }

    permute([])

    return result
}

let permutes = permutation(Array((0..<10)), n + 1)
print(permutes.first!.map { String($0) }.joined())
print(permutes.last!.map { String($0) }.joined())
