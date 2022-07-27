// 딕셔너리
let t = Int(readLine()!)!

for _ in 1...t {
    let _ = Int(readLine()!)!
    let note1 = readLine()!.split(separator: " ").map { Int(String($0))! }
    let _ = Int(readLine()!)!
    let note2 = readLine()!.split(separator: " ").map { Int(String($0))! }

    var dic = [Int: Void]()

    for i in note1 {
        if dic[i] == nil {
            dic[i] = ()
        }
    }

    for i in note2 {
        if dic[i] != nil {
            print(1)
        } else {
            print(0)
        }
    }
}

// -> 시간초과 O(n)


// Binary Search
let t = Int(readLine()!)!

func binarySearch(n: Int, note1: [Int], val: Int) -> Int {
    var left = 0
    var right = n - 1
    
    while left <= right {
        let mid = (left + right) / 2
        
        if val == note1[mid] {
            return 1
        } else if val > note1[mid] {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return 0
}

for _ in 1...t {
    let n = Int(readLine()!)!
    let note1 = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
    let _ = Int(readLine()!)!
    let note2 = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    for i in note2 {
        print(binarySearch(n: n, note1: note1, val: i))
    }
}

// -> 시간초과?????? O(logn)
// -> 입출력때문에 시간초과가 난다.


// Binary Search + 입출력 FastIO 이용

import Foundation

class FastIO {
    private let buffer: [UInt8]
    private var index: Int = 0
    private let fhOutput: FileHandle = FileHandle.standardOutput

    init(fhInput: FileHandle = FileHandle.standardInput) {
        buffer = Array(try! fhInput.readToEnd()!) + [UInt8(0)]
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }
        return buffer[index]
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true

        while now == 10 || now == 32 {
            now = read()
        }

        if now == 45 {
            isPositive.toggle(); now = read()
        }

        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now - 48)
            now = read()
        }

        return sum * (isPositive ? 1 : -1)
    }

    @inline(__always) func readByteSequenceWithoutSpaceAndLineFeed() -> [UInt8] {
        var now = read()

        while now == 10 || now == 32 {
            now = read()
        }

        let beginIndex = index - 1

        while now != 10,
              now != 32,
              now != 0 {
            now = read()
        }

        return Array(buffer[beginIndex..<(index - 1)])
    }

    @inline(__always) func print(_ s: String) {
        fhOutput.write(s.data(using: .utf8)!)
    }
}


let fio = FastIO()
let t = fio.readInt()

func binarySearch(n: Int, note1: [Int], val: Int) -> Int {
    var left = 0
    var right = n - 1
    
    while left <= right {
        let mid = (left + right) / 2
        
        if val == note1[mid] {
            return 1
        } else if val > note1[mid] {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return 0
}

for _ in 1...t {
    let n = fio.readInt()
    var note1 = [Int]()
    for _ in 0..<n {
        note1.append(fio.readInt())
    }
    note1.sort()
    let m = fio.readInt()
    for _ in 0..<m {
        print(binarySearch(n: n, note1: note1, val: fio.readInt()))
    }
}

// -> 통과
