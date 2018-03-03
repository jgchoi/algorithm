class Solution {
    func countBinarySubstrings(_ s: String) -> Int {
        var result = 0
        var zero = 0, one = 0
        var switched = false
        let sArray = Array(s)
        for i in 0..<sArray.count{
            if sArray[i] == "0" {
                if switched {
                    zero = 0
                }
                zero += 1
                switched = false
                
                if one > 0 {
                    result += 1
                }
                one -= 1
            } else {
                if !switched {
                    one = 0
                }
                one += 1
                switched = true
                
                if zero > 0 {
                    result += 1
                }
                zero -= 1
            }
        }
        return result
    }
}
