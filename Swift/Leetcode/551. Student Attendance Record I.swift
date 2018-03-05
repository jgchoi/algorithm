/*
 You are given a string representing an attendance record for a student. The record only contains the following three characters:
 'A' : Absent.
 'L' : Late.
 'P' : Present.
 A student could be rewarded if his attendance record doesn't contain more than one 'A' (absent) or more than two continuous 'L' (late).
 
 You need to return whether the student could be rewarded according to his attendance record.
 
 Example 1:
 Input: "PPALLP"
 Output: True
 Example 2:
 Input: "PPALLL"
 Output: False

*/

class Solution {
    func checkRecord(_ s: String) -> Bool {
        var numberOfL = 0
        var numberOfA = 0
        for char in s {
            if char == "A" { numberOfA += 1}
            if char == "L" {
                numberOfL += 1
                if numberOfL == 3 { return false }
            } else {
                numberOfL = 0
            }
        }
        return numberOfA<2
    }
}
