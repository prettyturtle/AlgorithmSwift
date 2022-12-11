import Foundation

func solution(_ s:String) -> [Int] {
    var st = [String]()
    let sArr = s.map { String($0) }
    var answer = Array(repeating: 0, count: s.count)
    
    for i in 0..<s.count {
        let temp = sArr[i]
        
        if st.contains(temp) {
            for j in (0..<st.count).reversed() {
                if temp == st[j] {
                    answer[i] = st.count - j
                    break
                }
            }
        } else {
            answer[i] = -1
        }
        
        st.append(temp)
    }
    
    return answer
}
