/*
 매개변수로 숫자가 들어있는 배열 A와 숫자 N이 주어진다.
 예를 들어 A = [1,2,3,4,5], N = 5
 
 다음 조건에 맞는 함수를 작성하여라
 1. A의 배열에서 두 원소의 합이 N이고 중복이 아닌 쌍들을 반환한다
 2. 각 쌍들 중 순서만 다르고 원소의 값은 같은(중복의 경우) 경우은 허용하지 않는다
    - 예를 들어 [1, 4], [2, 3], [3, 2], [4, 1]이 두 원소의 합이 5가 되는 쌍들이다
    - 그리고 [1, 4]와 [4, 1], [2, 3]과 [3, 2]는 중복으로 간주한다
    - 따라서 최종 반환 값은 [1, 4], [2, 3]이다
 3. 반환 타입은 마음대로 설정한다
 4. 특이한 케이스는 존재하지 않는다(빈 배열이 존재하지 않는다, 숫자가 아닌 타입이 들어있는 배열 등...)
 */

// Sol 1
// O(n^2)
func findPair1(arr: [Int], target: Int) -> Set<[Int]> {
    var result = [[Int]]()
    
    for i in arr {
        if arr.contains(target - i) {
            let pair = [min(i, target - i), max(i, target - i)]
            result.append(pair)
        }
    }
    
    let ret = Set(result)
    return ret
}

print(findPair1(arr: [1,2,3,4,5], target: 5))


// Sol 2
// O(n)
func findPair2(arr: [Int], target: Int) -> Set<[Int]> {
    var result = [[Int]]()
    var dict = [Int: Int]()
    
    for i in arr {
        dict[target - i] = i
    }
    
    for i in arr {
        if dict[i] != nil {
            let pair = [min(i, dict[i]!), max(i, dict[i]!)]
            result.append(pair)
        }
    }
    
    
    let ret = Set(result)
    return ret
}

print(findPair2(arr: [1,2,3,4,5], target: 5))
