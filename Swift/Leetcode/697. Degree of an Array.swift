class Solution {
    func findShortestSubArray(_ nums: [Int]) -> Int {
        var map:[Int:[Int]] = [:]
        var maxCount = 1
        for i in 0..<nums.count {
            if map[nums[i]] != nil {
                map[nums[i]]!.append(i)
                let count = map[nums[i]]!.count
                if maxCount < count {
                    maxCount = count
                }
            } else {
                map[nums[i]] = [i]
                if maxCount == 1 {
                    maxCount = 1
                }
            }
        }
        
        var result = Int.max
        let array = map.filter { (k,v) -> Bool in
            return v.count == maxCount
            }.values
        array.forEach { (c) in
            result = min(result, c.last! - c.first! + 1)
        }
        return result
    }
}
