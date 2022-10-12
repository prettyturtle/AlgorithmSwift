extension String {
    var asIntArr: [Int] {
        self
            .split(separator: " ")
            .map { Int($0)! }
    }
}

var rgb = readLine()!.asIntArr.sorted()

var count = 0

count += rgb.first!

rgb[1] -= rgb[0]
rgb[2] -= rgb[0]

if rgb[1] >= 3 {
    let m = rgb[1] / 3
    rgb[1] = rgb[1] % 3
    count += m
}

for i in 1...2 {
    if rgb[i] >= 3 {
        let m = rgb[i] / 3
        rgb[i] = rgb[i] % 3
        count += m
    }
}
if rgb[1] == 0 && rgb[2] == 0 {
    
} else if rgb[1] == 0 || rgb[2] == 0 {
    count += 1
} else {
    if rgb[1] == 1 && rgb[2] == 1 {
        count += 1
    } else {
        count += 2
    }
}

print(count)
