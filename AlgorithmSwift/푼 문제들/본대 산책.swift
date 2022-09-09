extension String {
    var asInt: Int { Int(self)! }
}

let n = readLine()!.asInt

typealias MapType = (
    정보과학관: Int,
    전산관: Int,
    미래관: Int,
    신앙관: Int,
    한경직기념관: Int,
    진리관: Int,
    형남공학관: Int,
    학생회관: Int
)

var map: MapType = (정보과학관: 1, 전산관: 0, 미래관: 0, 신앙관: 0, 한경직기념관: 0, 진리관: 0, 형남공학관: 0, 학생회관: 0)

func next(_ mmap: MapType) -> MapType {
    var temp = (정보과학관: 0, 전산관: 0, 미래관: 0, 신앙관: 0, 한경직기념관: 0, 진리관: 0, 형남공학관: 0, 학생회관: 0)
    temp.정보과학관 = (mmap.전산관 + mmap.미래관) % 1000000007
    temp.전산관 = (mmap.신앙관 + mmap.미래관 + mmap.정보과학관) % 1000000007
    temp.미래관 = (mmap.신앙관 + mmap.전산관 + mmap.정보과학관 + mmap.한경직기념관) % 1000000007
    temp.신앙관 = (mmap.전산관 + mmap.미래관 + mmap.진리관 + mmap.한경직기념관) % 1000000007
    temp.진리관 = (mmap.학생회관 + mmap.한경직기념관 + mmap.신앙관) % 1000000007
    temp.한경직기념관 = (mmap.진리관 + mmap.신앙관 + mmap.미래관 + mmap.형남공학관) % 1000000007
    temp.학생회관 = (mmap.진리관 + mmap.형남공학관) % 1000000007
    temp.형남공학관 = (mmap.학생회관 + mmap.한경직기념관) % 1000000007
    return temp
}

for _ in 1...n {
    map = next(map)
}

print(map.정보과학관)
