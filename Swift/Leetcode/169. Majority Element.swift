class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var map:[Int: Int] = [:]
        var result = 0
        var maxCount = 0
        for i in 0..<nums.count {
            if map[nums[i]] != nil {
                map[nums[i]]! += 1
            } else {
                map[nums[i]] = 1
            }
            if maxCount < map[nums[i]]! {
                maxCount = map[nums[i]]!
                result = nums[i]
            }
        }
        return result
    }
}
