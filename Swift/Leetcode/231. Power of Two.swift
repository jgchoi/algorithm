/*
 Given an integer, write a function to determine if it is a power of two.
 */

class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        return n>0 && 1073741824 % n == 0
    }
}
