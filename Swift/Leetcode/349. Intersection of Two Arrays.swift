class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var map:[Int: Bool] = [:]
        nums1.forEach { (i) in
            map[i] = false
        }
        nums2.forEach { (i) in
            if map[i] != nil {
                map[i] = true
            }
        }
        return Array(map.filter({ (k, v) -> Bool in
            return v
        }).keys)
    }
}
