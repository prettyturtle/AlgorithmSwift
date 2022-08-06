let n = Int(readLine()!)!

var rooms = [(Int, Int)]()

for _ in 1...n {
    let temp = readLine()!.split(separator: " ").map { Int($0)! }
    let room = (temp[0], temp[1])
    rooms.append(room)
}
rooms.sort {
    if $0.1 == $1.1 {
        return $0.0 < $1.0
    } else {
        return $0.1 < $1.1
    }
}

var last = 0
var count = 0

for room in rooms {
    if last <= room.0 {
        last = room.1
        count += 1
    }
}
print(count)
