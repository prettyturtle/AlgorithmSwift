let N = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }

let M = Int(readLine()!)!
let strangeNums = readLine()!.split(separator: " ").map { Int(String($0))! }

let sett = Set(nums).intersection(Set(strangeNums))

for i in strangeNums {
    if sett.contains(i) {
        print("1", terminator: " ")
    } else {
        print("0", terminator: " ")
    }
}
