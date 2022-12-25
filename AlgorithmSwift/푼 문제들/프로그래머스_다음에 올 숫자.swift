import Foundation

enum GongChaBi {
    case cha
    case bi
}

func isGongChaBi(_ nums: [Int]) -> GongChaBi {
    if nums[2] - nums[1] == nums[1] - nums[0] {
        return .cha
    }
    return .bi
}
func getGongCha(_ nums: [Int]) -> Int {
    return nums[1] - nums[0]
}
func getGongBi(_ nums: [Int]) -> Int {
    return nums[1] / nums[0]
}

func solution(_ common: [Int]) -> Int {
    switch isGongChaBi(common) {
    case .cha:
        let gongCha = getGongCha(common)
        return common.last! + gongCha
    case .bi:
        let gongCha = getGongBi(common)
        return common.last! * gongCha
    }
}
