class Solution {
    func longestPalindrome(_ s: String) -> Int {
        var result = 0
        var map:[Character: Int] = [:]
        s.forEach { (c) in
            if map[c] == nil {
                map[c] = 1
            } else {
                if map[c] == 1 {
                    map[c] = 0
                    result += 2
                } else {
                    map[c] = 1
                }
            }
            
            
        }
        let extra = !map.filter { (k,v) -> Bool in
            return v == 1
            }.isEmpty ? 1 : 0
        
        return result + extra
    }
}
