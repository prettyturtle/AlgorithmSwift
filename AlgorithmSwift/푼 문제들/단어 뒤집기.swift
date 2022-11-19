    (1...Int(readLine()!)!).map { _ in readLine()!.split(separator: " ").map { String($0.reversed()) }.joined(separator: " ") }.forEach { print($0) }
