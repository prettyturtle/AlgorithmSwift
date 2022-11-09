extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}


var nums = readLine()!.asIntArr

let standard = [1, 2, 3, 4, 5]

while nums != standard {
    for i in 0..<nums.count-1 {
        if nums[i] > nums[i + 1] {
            let temp = nums[i + 1]
            
            nums[i + 1] = nums[i]
            nums[i] = temp
            
            print(nums.map { String($0) }.joined(separator: " "))
        }
    }
}
