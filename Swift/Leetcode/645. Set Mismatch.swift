/*
 The set S originally contains numbers from 1 to n. But unfortunately, due to the data error, one of the numbers in the set got duplicated to another number in the set, which results in repetition of one number and loss of another number.
 
 Given an array nums representing the data status of this set after the error. Your task is to firstly find the number occurs twice and then find the number that is missing. Return them in the form of an array.
 
 Example 1:
 Input: nums = [1,2,2,4]
 Output: [2,3]
 Note:
 The given array size will in the range [2, 10000].
 The given array's numbers won't have any order.*/

class Solution {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        var map: [Int: Int] = [:]
        var total = 0
        var exptected = 0
        for i in 0..<nums.count {
            if map[nums[i]] == nil {
                map[nums[i]] = 1
            } else {
                map[nums[i]]! += 1
            }
            total += nums[i]
            exptected += i+1
        }
        
        
        
        let duplicatedNumber = map.filter { (k,v) -> Bool in
            return v == 2
            }.keys.first!
        let missed = exptected - total + duplicatedNumber
        return [duplicatedNumber, missed]
    }
}
