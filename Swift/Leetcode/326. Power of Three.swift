/*
 Given an integer, write a function to determine if it is a power of three.
 
 Follow up:
 Could you do it without using any loop / recursion?
 
 Credits:
 Special thanks to @dietpepsi for adding this problem and creating all test cases.
 
*/

// Alternate answer that does not use loop

return n>0 && 1162261467%n == 0

// Original Answer
func isPowerOfThree(_ n: Int) -> Bool {
    if n == 1 { return true }
    var num = n
    while num > 0 {
        if num%3 != 0 { return false }
        if num/3 == 1 { return true }
        num /= 3
    }
    return false
}
