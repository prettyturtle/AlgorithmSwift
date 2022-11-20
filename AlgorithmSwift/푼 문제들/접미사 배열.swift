let s = readLine()!.map { String($0) }

(0..<s.count).map { s[$0...].joined() }.sorted(by: <).forEach { print($0) }
