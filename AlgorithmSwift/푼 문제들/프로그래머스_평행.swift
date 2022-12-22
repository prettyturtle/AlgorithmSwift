import Foundation

func solution(_ dots: [[Int]]) -> Int {
    
    let nums = [0, 1, 2, 3]
    
    for i in 0...2 {
        for j in i+1...3 {
            let temp = nums.filter { $0 != i && $0 != j }
            
            let a = dots[i]
            let b = dots[j]
            let c = dots[temp[0]]
            let d = dots[temp[1]]
            
            let x = Double(b[1] - a[1]) / Double(b[0] - a[0])
            let y = Double(d[1] - c[1]) / Double(d[0] - c[0])
            
            if x == y {
                return 1
            }
        }
    }
    
    return 0
}
