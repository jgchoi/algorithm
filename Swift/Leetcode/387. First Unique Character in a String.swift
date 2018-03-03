class Solution {
    func firstUniqChar(_ s: String) -> Int {
        var map:[Character: Int] = [:]
        let sArray = Array(s)
        
        for i in 0..<s.count {
            let char = sArray[i]
            if map[char] == nil {
                map[char] = i
            } else {
                map[char]! -= i
            }
        }
        
        return map.filter { (k,v) -> Bool in
            return v >= 0
            }.values.sorted().first ?? -1
    }
}
