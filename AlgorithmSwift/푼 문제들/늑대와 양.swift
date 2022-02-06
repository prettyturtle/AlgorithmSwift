let RC = readLine()!.split(separator: " ").map { Int($0)! }
let R = RC[0]
let C = RC[1]

var pasture = [[String]]()

for _ in 1...R {
    let row = readLine()!.map { String($0) }
    pasture.append(row)
}

var check = false

// 풀이 1

let dy = [-1, 0, 1, 0]
let dx = [0, 1, 0, -1]


for row in 0..<R {
    for col in 0..<C {
        if pasture[row][col] == "W" {
            for d in 0..<4 {
                let dyRow = row + dy[d]
                let dxCol = col + dx[d]
                if dyRow != -1 && dyRow != R && dxCol != -1 && dxCol != C {
                    if pasture[dyRow][dxCol] == "S" {
                        check = true
                    }
                }
            }
        }
    }
}
// 풀이 2
//var reversedPasture = [[String]]()
//
//for col in 0..<C {
//    var temp = [String]()
//    for row in 0..<R {
//        temp.append(pasture[row][col])
//    }
//    reversedPasture.append(temp)
//}
//
//for row in pasture {
//    for i in 0..<C-1 {
//        if row[i] + row[i+1] == "SW" || row[i] + row[i+1] == "WS" {
//            check = true
//        }
//    }
//}
//
//for row in reversedPasture {
//    for i in 0..<R-1 {
//        if row[i] + row[i+1] == "SW" || row[i] + row[i+1] == "WS" {
//            check = true
//        }
//    }
//}

if check {
    print(0)
} else {
    print(1)
    for i in 0..<R {
        for j in 0..<C {
            if pasture[i][j] == "." {
                pasture[i][j] = "D"
            }
        }
    }

    for i in pasture {
        print(i.joined(separator: ""))
    }
}
