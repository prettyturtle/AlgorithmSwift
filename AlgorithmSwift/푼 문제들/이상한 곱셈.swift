print(readLine()!.split(separator: " ").map { String($0).map { Int(String($0))! } }.map { $0.reduce(0, +) }.reduce(1, *))
