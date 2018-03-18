/*
 Find the contiguous subarray within an array (containing at least one number) which has the largest sum.
 
 For example, given the array [-2,1,-3,4,-1,2,1,-5,4],
 the contiguous subarray [4,-1,2,1] has the largest sum = 6.
 */

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSoFar = nums[0]
        var maxVal = nums[0]
        for i in 1..<nums.count {
            maxSoFar += nums[i]
            maxSoFar = max(nums[i], maxSoFar)
            maxVal = max(maxSoFar, maxVal)
        }
        return maxVal
    }
}
