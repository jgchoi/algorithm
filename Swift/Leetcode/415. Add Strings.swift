/*
 Given two non-negative integers num1 and num2 represented as string, return the sum of num1 and num2.
 
 Note:
 
 The length of both num1 and num2 is < 5100.
 Both num1 and num2 contains only digits 0-9.
 Both num1 and num2 does not contain any leading zero.
 You must not use any built-in BigInteger library or convert the inputs to integer directly.
 */
class Solution {
    func addStrings(_ num1: String, _ num2: String) -> String {
        var len1 = num1.count-1
        var len2 = num2.count-1
        let num1Array = Array(num1)
        let num2Array = Array(num2)
        var sum = 0
        var carry = 0
        var result = ""
        while len1 >= 0 || len2 >= 0 {
            var first = 0
            var second = 0
            if len1 >= 0 {
                print(len1)
                first = Int(num1Array[len1].unicodeScalars.first!.value) - Int(UInt8(ascii: "0"))
            }
            if len2 >= 0 {
                second = Int(num2Array[len2].unicodeScalars.first!.value) - Int(UInt8(ascii: "0"))
            }
            sum = carry + first + second
            if sum <= 9 {
                result = "\(sum)" + result
                sum = 0
                carry = 0
            } else {
                result = "\(sum%10)" + result
                sum = 0
                carry = 1
            }
            len1 -= 1
            len2 -= 1
        }
        if carry == 1 {
            result = "\(1)" + result
        }
        return result
    }
}
