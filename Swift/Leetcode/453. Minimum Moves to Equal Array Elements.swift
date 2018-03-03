class Solution {
    func minMoves(_ nums: [Int]) -> Int {
        var minNum = nums[0]
        var sum = 0
        for i in 0..<nums.count {
            minNum = min(minNum, nums[i])
            sum += nums[i]
        }
        return sum - minNum * nums.count
    }
}
