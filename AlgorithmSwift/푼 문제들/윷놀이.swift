extension String {
    var asInt: Int { Int(self)! }
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

enum 윷짝 {
    case 배등(Int, Int)
    
    var 결과: 윷결과? {
        switch self {
        case .배등(let int, let int2):
            switch (int, int2) {
            case (1, 3):
                return .도
            case (2, 2):
                return .개
            case (3, 1):
                return .걸
            case (4, 0):
                return .윷
            case (0, 4):
                return .모
            case (_, _):
                return nil
            }
        }
    }
}
enum 윷결과: String {
    case 도 = "A"
    case 개 = "B"
    case 걸 = "C"
    case 윷 = "D"
    case 모 = "E"
}


for _ in 1...3 {
    let temp = readLine()!.asIntArr
    
    var 배 = 0
    var 등 = 0
    
    for i in temp {
        if i == 0 {
            배 += 1
        } else {
            등 += 1
        }
    }
    
    print(윷짝.배등(배, 등).결과!.rawValue)
}
