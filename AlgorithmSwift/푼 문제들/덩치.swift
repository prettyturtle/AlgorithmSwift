let N = Int(readLine()!)!

var persons = [(Int, Int)]()

for _ in 1...N {
    let person = readLine()!.split(separator: " ").map { Int(String($0))! }
    let dungchi = (person[0], person[1])
    persons.append(dungchi)
}

for i in persons.indices {
    var rank = 1
    for j in persons.indices {
        if persons[i].0 < persons[j].0 && persons[i].1 < persons[j].1 {
            rank += 1
        }
    }
    print(rank)
}
