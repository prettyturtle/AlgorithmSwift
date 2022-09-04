extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

let n = readLine()!.asInt
var deck = [Int]()

for _ in 1...n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    
    let keyword = input.first!
    
    if keyword == "push_front" {
        let num = input.last!.asInt
        deck.insert(num, at: 0)
    } else if keyword == "push_back" {
        let num = input.last!.asInt
        deck.append(num)
    } else if keyword == "pop_front" {
        if deck.isEmpty {
            print("-1")
        } else {
            print(deck.removeFirst())
        }
    } else if keyword == "pop_back" {
        if deck.isEmpty {
            print("-1")
        } else {
            print(deck.removeLast())
        }
    } else if keyword == "size" {
        print(deck.count)
    } else if keyword == "empty" {
        print(deck.isEmpty ? "1" : "0")
    } else if keyword == "front" {
        if let fir = deck.first {
            print(fir)
        } else {
            print("-1")
        }
    } else if keyword == "back" {
        if let las = deck.last {
            print(las)
        } else {
            print("-1")
        }
    }
}
