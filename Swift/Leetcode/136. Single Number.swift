class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var temp = 0
        for i in 0..<nums.count {
            temp ^= nums[i]
        }
        return temp
    }
}
