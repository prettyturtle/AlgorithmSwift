import Foundation
let nrc = readLine()!.split(separator: " ").map { Int($0)! }
let n = nrc[0]
let r = nrc[1]
let c = nrc[2]

var count = 0

func Z(power: Int, x: Int, y: Int) {
    if power <= 2 {
        if x == r && y == c {
            count += 0
        } else if x == r && y+1 == c {
            count += 1
        } else if x+1 == r && y == c {
            count += 2
        } else if x+1 == r && y+1 == c {
            count += 3
        }
    } else {
        if c >= y + power / 2 && r < x + power / 2 {
            count += (power / 2) * (power / 2) * 1
            Z(power: power / 2, x: x, y: y + (power / 2))
        } else if r >= x + power / 2 && c < y + power / 2  {
            count += (power / 2) * (power / 2) * 2
            Z(power: power / 2, x: x + (power / 2), y: y)
        } else if r >= x + power / 2 && c >= y + power / 2 {
            count += (power / 2) * (power / 2) * 3
            Z(power: power / 2, x: x + (power / 2), y: y + (power / 2))
        } else if r < x + power / 2 && c < y + power / 2 {
            Z(power: power / 2, x: x, y: y)
        }
    }
}
Z(power: Int(pow(2, Double(n))), x: 0, y: 0)
print(count)
