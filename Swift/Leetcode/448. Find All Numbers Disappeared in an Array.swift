//448. Find All Numbers Disappeared in an Array
class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        if nums.count == 0 { return [] }
        var result:[Int:Bool] = [:]
        for i in 1...nums.count {
            result[i] = true
        }
        
        for i in 0..<nums.count {
            result[nums[i]] = false
        }
        
        return Array(result.filter({ (key, value) -> Bool in
            return value
        }).keys)
    }
}
