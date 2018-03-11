/*
 We define a harmonious array is an array where the difference between its maximum value and its minimum value is exactly 1.
 
 Now, given an integer array, you need to find the length of its longest harmonious subsequence among all its possible subsequences.
 
 Example 1:
 Input: [1,3,2,2,5,2,3,7]
 Output: 5
 Explanation: The longest harmonious subsequence is [3,2,2,2,3].
 Note: The length of the input array will not exceed 20,000.
 */
class Solution {
    func findLHS(_ nums: [Int]) -> Int {
        var map:[Int: Int] = [:]
        for i in 0..<nums.count {
            if map[nums[i]] == nil {
                map[nums[i]] = 1
            } else {
                map[nums[i]]! += 1
            }
        }
        var result = 0
        for (key, value) in map {
            if map[key+1] != nil {
                result = max(result, value+map[key+1]!)
            }
        }
        return result
    }
}
