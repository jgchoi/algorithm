class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var target:[Character: Int] = [:]
        ransomNote.forEach { (c) in
            if target[c] != nil {
                target[c]! += 1
            }else {
                target[c] = 1
            }
        }
        magazine.forEach { (c) in
            if target[c] != nil {
                target[c]! -= 1
            }
        }
        return target.filter({ (k, v) -> Bool in
            return v > 0
        }).isEmpty
    }
}
