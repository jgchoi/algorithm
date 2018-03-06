/**
 Given a string and an integer k, you need to reverse the first k characters for every 2k characters counting from the start of the string. If there are less than k characters left, reverse all of them. If there are less than 2k but greater than or equal to k characters, then reverse the first k characters and left the other as original.
 Example:
 Input: s = "abcdefg", k = 2
 Output: "bacdfeg"
 Restrictions:
 The string consists of lower English letters only.
 Length of the given string and k will in the range [1, 10000]

 */
class Solution {
    func reverseStr(_ s: String, _ k: Int) -> String {
        var sArray = Array(s)
        let size = s.count
        var i = 0
        func swap(_ left: Int,_ right: Int) {
            var l = left
            var r = right
            while l < r {
                let temp = sArray[l]
                sArray[l] = sArray[r]
                sArray[r] = temp
                l += 1
                r -= 1
            }
        }
        while i < size {
            let j = min(i+k-1, size-1)
            swap(i, j)
            i += 2*k
        }
        
        return String(sArray)
    }
    
}
