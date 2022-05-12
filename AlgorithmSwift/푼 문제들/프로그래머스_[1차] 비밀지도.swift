func solution(_ n: Int, _ arr1: [Int], _ arr2: [Int]) -> [String] {
    var map1 = [[String]]()
    var map2 = [[String]]()
    
    for i in arr1 {
        var binary = String(i, radix: 2)
        while binary.count < n {
            binary = "0" + binary
        }
        binary = binary.replacingOccurrences(of: "1", with: "#")
        binary = binary.replacingOccurrences(of: "0", with: " ")
        map1.append(binary.map { String($0) })
    }
    
    for i in arr2 {
        var binary = String(i, radix: 2)
        while binary.count < n {
            binary = "0" + binary
        }
        binary = binary.replacingOccurrences(of: "1", with: "#")
        binary = binary.replacingOccurrences(of: "0", with: " ")
        map2.append(binary.map { String($0) })
    }
    
    var tempRet = Array(repeating: Array(repeating: "", count: n), count: n)
    
    for i in 0..<n {
        for j in 0..<n {
            if map1[i][j] == "#" || map2[i][j] == "#" {
                tempRet[i][j] = "#"
            } else {
                tempRet[i][j] = " "
            }
        }
    }
    
    let ret = tempRet.map { $0.joined(separator: "") }
    return ret
}
print(solution(5, [9,20,28,18,11], [30, 1, 21, 17, 28]) == ["#####", "# # #", "### #", "#  ##", "#####"])
print(solution(6, [46, 33, 33 ,22, 31, 50], [27 ,56, 19, 14, 14, 10]) == ["######", "###  #", "##  ##", " #### ", " #####", "### # "])
