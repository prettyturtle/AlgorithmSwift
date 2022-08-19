let n = Int(readLine()!)!

(1...n)
    .map { _ -> (Int, String) in
        let temp = readLine()!.split(separator: " ").map { String($0) }
        let age = Int(temp[0])!
        let name = temp[1]
        
        return (age, name)
    }.sorted {
        $0.0 < $1.0
    }
    .forEach {
        print($0.0, $0.1)
    }
