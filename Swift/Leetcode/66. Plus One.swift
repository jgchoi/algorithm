/*
 Given a non-negative integer represented as a non-empty array of digits, plus one to the integer.
 
 You may assume the integer do not contain any leading zero, except the number 0 itself.
 
 The digits are stored such that the most significant digit is at the head of the list*/
class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = Array(digits)
        var n = result.count
        for i in stride(from: n-1, to: -1, by: -1) {
            if result[i] < 9 {
                result[i] += 1
                return result
            }
            result[i] = 0
        }
        result.insert(1, at: 0)
        return result
    }
}
