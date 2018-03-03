class Solution {
    func hasAlternatingBits(_ n: Int) -> Bool {
        var num = n
        var lastBit = num & 1
        while num != 0 {
            if lastBit == (num >> 1) & 1 {
                return false
            }
            num >>= 1
            lastBit = num & 1
        }
        return true
    }
}
