class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var map:[Character: Int] = [:]
        var sArray = Array(s)
        for i in 0..<sArray.count {
            if map[sArray[i]] == nil {
                map[sArray[i]] = 1
            } else {
                map[sArray[i]]! += 1
            }
        }
        
        var tArray = Array(t)
        for i in 0..<tArray.count {
            if map[tArray[i]] == nil { return false }
            map[tArray[i]]! -= 1
        }
        
        return map.filter({ (k, v) -> Bool in
            return v != 0
        }).count == 0
    }
}
