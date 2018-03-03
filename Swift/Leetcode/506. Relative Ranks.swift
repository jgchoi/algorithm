class Solution {
    func findRelativeRanks(_ nums: [Int]) -> [String] {
        var sortedNums = nums.sorted { $0 > $1 }
        var result = [String]()
        var map:[Int:Int] = [:]
        for i in 0..<nums.count {
            map[sortedNums[i]] = i
        }
        for i in 0..<nums.count {
            if let rank = map[nums[i]] {
                if rank == 0 {
                    result.append("Gold Medal")
                } else if rank == 1 {
                    result.append("Silver Medal")
                } else if rank == 2 {
                    result.append("Bronze Medal")
                } else {
                    result.append("\(rank+1)")
                }
            }
        }
        return result
    }
}
