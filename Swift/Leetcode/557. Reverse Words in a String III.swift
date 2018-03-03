/*
 Given a string, you need to reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.
 
 Example 1:
 Input: "Let's take LeetCode contest"
 Output: "s'teL ekat edoCteeL tsetnoc"
 Note: In the string, each word is separated by single space and there will not be any extra space in the string.
 */
class Solution {
    func reverseString(_ s: String) -> String {
        var reversed: [Character] = []
        let sArray = Array(s)
        for i in stride(from: s.count-1, to: -1, by: -1) {
            reversed.append(sArray[i])
        }
        return String(reversed)
    }
    
    func reverseWords(_ s: String) -> String {
        var words = s.split(separator: " ")
        var result = ""
        for i in 0..<words.count {
            result += reverseString(String(words[i]))
            if i != words.count - 1 {
                result += " "
            }
        }
        return result
    }
}
