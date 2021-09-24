func merge(left: [Int], right: [Int]) -> [Int] {
    var merged: [Int] = []
    var leftPoint = 0
    var rightPoint = 0
    
    while left.count > leftPoint, right.count > rightPoint {
        if left[leftPoint] > right[rightPoint] {
            merged.append(right[rightPoint])
            rightPoint += 1
        } else {
            merged.append(left[leftPoint])
            leftPoint += 1
        }
    }
    
    while left.count > leftPoint {
        merged.append(left[leftPoint])
        leftPoint += 1
    }
    
    while right.count > rightPoint {
        merged.append(right[rightPoint])
        rightPoint += 1
    }
    
    return merged
}


func mergeSplit(_ data: [Int]) -> [Int] {
    if data.count <= 1 {
        return data
    }
    let medium = (data.count) / 2
    let left = mergeSplit(Array(data[0..<medium]))
    let right = mergeSplit(Array(data[medium..<data.count]))
    
    return merge(left: left, right: right)
}


// TEST
var data = [44, 55, 72, 83, 74, 57, 86, 71, 85, 75, 17, 67, 59, 82, 7, 88, 13, 68, 19]

print(mergeSplit(data))
