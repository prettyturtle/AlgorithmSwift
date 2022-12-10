import Foundation

func solution(_ s: String) -> Int {
    
    let ss = s.split(separator: " ").map { String($0) }
    
    var st = [String]()
    
    for i in ss {
        if i == "Z" {
            if !st.isEmpty {
                st.removeLast()
            }
        } else {
            st.append(i)
        }
    }
        
    let ret = st.map { Int($0)! }.reduce(0, +)
    
    return ret
}
