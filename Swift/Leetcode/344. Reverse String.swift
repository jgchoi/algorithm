/*
 Write a function that takes a string as input and returns the string reversed.
 
 Example:
 Given s = "hello", return "olleh".
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
}
