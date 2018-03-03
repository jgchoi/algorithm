class Solution {
    func nextGreaterElement(_ findNums: [Int], _ nums: [Int]) -> [Int] {
        var result: [Int] = []
        var map: [Int: Int] = [:]
        for i in 0..<nums.count {
            map[nums[i]] = i
        }
        
        for i in 0..<findNums.count {
            if let index = map[findNums[i]] {
                for j in index+1..<nums.count {
                    if nums[j] > findNums[i] {
                        result.append(nums[j])
                        break
                    }
                }
            }
            if result.count != i+1 {
                result.append(-1)
            }
        }
        return result
    }
}
