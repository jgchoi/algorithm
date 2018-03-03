class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var currentMax = 0
        var result = 0
        for i in 0..<nums.count {
            if nums[i] == 0 {
                currentMax = 0
            } else {
                currentMax += 1
                result = max(result, currentMax)
            }
        }
        return result
    }
}
