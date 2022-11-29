import Foundation

func solution(_ X:String, _ Y:String) -> String {
    var dicX = [String: Int]()
    
    let x = X.map { String($0) }
    let y = Y.map { String($0) }
    
    for i in x {
        if dicX[i] == nil {
            dicX[i] = 1
        } else {
            dicX[i]! += 1
        }
    }
    
    var nums = Array(repeating: 0, count: 10)
    
    for i in y {
        if dicX[i] != nil {
            if dicX[i] != 0 {
                nums[Int(i)!] += 1
                dicX[i]! -= 1
            }
        }
    }
    
    var answer = ""
    
    for i in (0...9).reversed() {
        if nums[i] != 0 {
            for _ in 0..<nums[i] {
                answer += i.description
            }
        }
    }
    if answer == "" {
        answer = "-1"
    } else if Set(answer) == ["0"] {
        answer = "0"
    }
    
    return answer
}
