func quickSort(_ data: [Int]) -> [Int] {
    
    if data.count <= 1 {
        return data
    }
    
    var left: [Int] = []
    var right: [Int] = []
    
    let pivot = data[0]
    
    for i in 1..<data.count {
        if pivot > data[i] {
            left.append(data[i])
        } else {
            right.append(data[i])
        }
    }
    return quickSort(left) + [pivot] + quickSort(right)
}
