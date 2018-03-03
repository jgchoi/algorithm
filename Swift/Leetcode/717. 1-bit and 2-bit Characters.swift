class Solution {
    func isOneBitCharacter(_ bits: [Int]) -> Bool {
        let size = bits.count
        if bits[size-1] != 0 { return false }
        var i = 0
        while i < size {
            if bits[i] == 1 {
                if i == size-2 {
                    return false
                }
                i += 2
            } else {
                i += 1
            }
        }
        return true
    }
}
