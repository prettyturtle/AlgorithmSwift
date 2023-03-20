import Foundation

func solution(_ s: String, _ skip: String, _ index: Int) -> String {
    
    let initalAlphabet = Unicode.Scalar("A").value
    let endAlphabet = Unicode.Scalar("Z").value
    
    
    var li = [String]()
    for k in initalAlphabet...endAlphabet {
       if let val = Unicode.Scalar(k) {
          li.append(String(val).lowercased())
       }
    }
    
    li = li.filter { !skip.contains($0)}
    
    var result = [String]()
    
    for i in s.map { String($0) } {
        var idx = 0
        
        for l in 0..<li.count {
            if li[l] == i {
                idx = l
                break
            }
        }
        
        result.append(li[(idx + index) % li.count])
    }
    
    return result.joined()
}
