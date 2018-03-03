class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var currentIndex = 0
        for i in 0..<nums.count {
            if nums[i] != 0 {
                nums[currentIndex] = nums[i]
                currentIndex += 1
            }
        }
        for i in currentIndex..<nums.count {
            nums[i] = 0
        }
    }
}
