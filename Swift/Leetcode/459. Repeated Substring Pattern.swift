/*
 Given a non-empty string check if it can be constructed by taking a substring of it and appending multiple copies of the substring together. You may assume the given string consists of lowercase English letters only and its length will not exceed 10000.
 Example 1:
 Input: "abab"
 
 Output: True
 
 Explanation: It's the substring "ab" twice.
 Example 2:
 Input: "aba"
 
 Output: False
 Example 3:
 Input: "abcabcabcabc"
 
 Output: True
 
 Explanation: It's the substring "abc" four times. (And the substring "abcabc" twice.)*/

if(s.count < 2) { return false }
let n = s.count
for i in 0..<n/2 {
    if(n%(i+1) == 0) {
        let m = n/(i+1)
        let idx = s.index(s.startIndex, offsetBy: i)
        let substr: String = String(s[...idx])
        if(String(repeating: substr, count: m) == s) { return true }
    }
}
return false
