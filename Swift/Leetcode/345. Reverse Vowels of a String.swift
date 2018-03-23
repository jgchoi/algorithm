/*Write a function that takes a string as input and reverse only the vowels of a string.
 
 Example 1:
 Given s = "hello", return "holle".
 
 Example 2:
 Given s = "leetcode", return "leotcede".
 
 Note:
 The vowels does not include the letter "y".
 

 */
class Solution {
    func reverseVowels(_ s: String) -> String {
        var i = 0
        var j = s.count - 1
        var sArray = Array(s)
        while i < j {
            while i < j && !isVowel(sArray[i]) {
                i += 1
            }
            while i < j && !isVowel(sArray[j]) {
                j -= 1
            }
            if i < j {
                let temp = sArray[i]
                sArray[i] = sArray[j]
                sArray[j] = temp
                i += 1
                j -= 1
            }
        }
        return String(sArray)
    }
    
    func isVowel(_ c: Character) -> Bool {
        if "aeiouAEIOU".contains(c) {
            return true
        }
        return false
    }
}
