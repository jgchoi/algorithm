/*
 In a given integer array nums, there is always exactly one largest element.

Find whether the largest element in the array is at least twice as much as every other number in the array.

If it is, return the index of the largest element, otherwise return -1.

Example 1:

Input: nums = [3, 6, 1, 0]
Output: 1
Explanation: 6 is the largest integer, and for every other number in the array x,
6 is more than twice as big as x.  The index of value 6 is 1, so we return 1.


Example 2:

Input: nums = [1, 2, 3, 4]
Output: -1
Explanation: 4 isn't at least as big as twice the value of 3, so we return -1.

*/

class Solution {
    func dominantIndex(_ nums: [Int]) -> Int {
        var max1 = 0
        var max2 = 0
        var index = -1
        for i in 0..<nums.count {
            if nums[i] > max1 {
                max2 = max1
                max1 = nums[i]
                index = i
            } else if nums[i] > max2 {
                max2 = nums[i]
            }
        }
        return max1 >= max2*2 ? index : -1
        
    }
}
