let n = Int(readLine()!)!
var members: [(Int, Int, String)] = []

for count in 1...n {
    let ageAndName = readLine()!.split(separator: " ")
    let age = Int(ageAndName[0])!
    let name = String(ageAndName[1])
    
    members.append((count, age, name))
    
}

let sortedMembers = members.sorted {
    if $0.1 == $1.1 {
        return $0.0 < $1.0
    }
    return $0.1 < $1.1
}

for member in sortedMembers {
    print(member.1, member.2)
}



// 재풀이
let t = Int(readLine()!)!

var people = [(Int, String)]()

for _ in 1...t {
    let p = readLine()!.split(separator: " ")
    let a = Int(p[0])!
    let b = String(p[1])
    
    people.append((a, b))
}

people.sort {
    $0.0 < $1.0
}

people.forEach { print($0.0, $0.1) }
