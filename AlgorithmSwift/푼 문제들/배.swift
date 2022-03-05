let N = Int(readLine()!)!
let crains = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted(by: >)

let M = Int(readLine()!)!
var goodsWeights = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted(by: >)

var count = 0

if crains.first! < goodsWeights.first! {
    print(-1)
} else {
    while true {
        if goodsWeights.isEmpty {
            break
        }

        for crain in crains {
            for (j, weight) in goodsWeights.enumerated() {
                if crain >= weight {
                    goodsWeights.remove(at: j)
                    break
                }
            }
        }
        count += 1
    }
    print(count)
}
