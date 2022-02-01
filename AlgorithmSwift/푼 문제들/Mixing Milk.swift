let firstBucket = readLine()!.split(separator: " ").map { Int($0)! }
let secondBucket = readLine()!.split(separator: " ").map { Int($0)! }
let thirdBucket = readLine()!.split(separator: " ").map { Int($0)! }

let firstBucketCapacity = firstBucket[0]
let secondBucketCapacity = secondBucket[0]
let thirdBucketCapacity = thirdBucket[0]

let firstBucketAmount = firstBucket[1]
let secondBucketAmount = secondBucket[1]
let thirdBucketAmount = thirdBucket[1]

let capacityArr: [Int] = [firstBucketCapacity, secondBucketCapacity, thirdBucketCapacity]
var amountArr: [Int] = [firstBucketAmount, secondBucketAmount, thirdBucketAmount]

func mixMilk(_ index: Int, amountArr: [Int]) -> [Int] {
    let currIdx = index % 3
    let nxtIdx = (index+1) % 3
    var amountArr = amountArr

    if amountArr[currIdx] + amountArr[nxtIdx] > capacityArr[nxtIdx] {
        amountArr[currIdx] = amountArr[currIdx] + amountArr[nxtIdx] - capacityArr[nxtIdx]
        amountArr[nxtIdx] = capacityArr[nxtIdx]
    } else {
        amountArr[nxtIdx] += amountArr[currIdx]
        amountArr[currIdx] = 0
    }
    return amountArr
}

for i in 0...99 {
    amountArr = mixMilk(i, amountArr: amountArr)
}

for i in amountArr {
    print(i)
}
