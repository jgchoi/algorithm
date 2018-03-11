/*
 Write an algorithm to determine if a number is "happy".
 
 A happy number is a number defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. Those numbers for which this process ends in 1 are happy numbers.
 
 Example: 19 is a happy number
 
 12 + 92 = 82
 82 + 22 = 68
 62 + 82 = 100
 12 + 02 + 02 = 1
 Credits:
 Special thanks to @mithmatt and @ts for adding this problem and creating all test cases.
 */

var encounted = Set<Int>()
func isHappy(_ n: Int) -> Bool {
    if encounted.contains(n) { return false }
    encounted.insert(n)
    var number = n
    var next = 0
    while number > 0 {
        let currentDigit = number%10
        number /= 10
        next = currentDigit*currentDigit + next
    }
    if next == 1 { return true }
    return isHappy(next)
}
