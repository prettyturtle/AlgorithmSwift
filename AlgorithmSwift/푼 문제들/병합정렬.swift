func mergeSplit(_ arr: [Int]) -> [Int] {
    if arr.count <= 1 {
        return arr
    }
    let medium = arr.count / 2
    
    let leftArr = mergeSplit(Array(arr[..<medium]))
    let rightArr = mergeSplit(Array(arr[medium...]))
    
    return merge(leftArr: leftArr, rightArr: rightArr)
}

func merge(leftArr: [Int], rightArr: [Int]) -> [Int] {
    var merged = [Int]()
    var leftIndex = 0
    var rightIndex = 0
    
    while leftArr.count > leftIndex && rightArr.count > rightIndex {
        if leftArr[leftIndex] > rightArr[rightIndex] {
            merged.append(rightArr[rightIndex])
            rightIndex += 1
        } else {
            merged.append(leftArr[leftIndex])
            leftIndex += 1
        }
    }
    while leftArr.count > leftIndex {
        merged.append(leftArr[leftIndex])
        leftIndex += 1
    }
    while rightArr.count > rightIndex {
        merged.append(rightArr[rightIndex])
        rightIndex += 1
    }
    return merged
}

print(mergeSplit([5,4,3,2,1]))
