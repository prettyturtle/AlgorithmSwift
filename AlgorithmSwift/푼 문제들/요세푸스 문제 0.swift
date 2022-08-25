extension String {
    var asInt: Int { return Int(self)! }
    var asIntArr: [Int] { return self.split(separator: " ").map { Int($0)! } }
}


//[1,2,3,4,5,6,7]
//[3,4,5,6,7,1,2,]
//[4,5,6,7,1,2,]
//[6,7,1,2,4,5,]
//[7,1,2,4,5,]
//[2,4,5,7,1,]
//[4,5,7,1,]
//[7,1,4,5,]
//[1,4,5,]
//[5,1,4,]

let nk = readLine()!.asIntArr
let (n, k) = (nk[0], nk[1])

var numArr = (1...n).map { Int($0) }

var result = [Int]()

while !numArr.isEmpty {
    
    for _ in 1..<k {
        numArr.append(numArr.removeFirst())
    }
    
    result.append(numArr.removeFirst())
}

var answer = result.map { String($0) }.joined(separator: ", ")

answer = "<" + answer
answer += ">"
print(answer)
