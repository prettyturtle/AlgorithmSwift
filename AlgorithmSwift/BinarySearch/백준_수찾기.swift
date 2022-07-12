let n = Int(readLine()!)!
let a = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
let m = Int(readLine()!)!
let b = readLine()!.split(separator: " ").map { Int($0)! }

func binarySearch(_ n: Int, arr: [Int]) -> Int {
    var left = 0
    var right = arr.count - 1
    
    while left <= right {
        let mIndex = (left + right) / 2
        let middle = arr[mIndex]
        
        if middle == n {
            return 1
        } else if middle < n {
            left = mIndex + 1
        } else {
            right = mIndex - 1
        }
    }
    return 0
}

b.forEach {
    print(binarySearch($0, arr: a))
}
