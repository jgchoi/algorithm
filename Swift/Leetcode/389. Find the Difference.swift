class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var map: [Character: Int] = [:]
        t.forEach { (c) in
            if map[c] != nil {
                map[c]! += 1
            } else {
                map[c] = 1
            }
        }
        print(map)
        s.forEach { (c) in
            map[c]! -= 1
        }
        print(map)
        return map.filter({ (k, v) -> Bool in
            return v == 1
        }).keys.first!
    }
    
}
