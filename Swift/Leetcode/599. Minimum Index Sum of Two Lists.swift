class Solution {
    func findRestaurant(_ list1: [String], _ list2: [String]) -> [String] {
        var map:[String: (Int, Bool)] = [:]
        var minIndex = Int.max
        for i in 0..<list1.count {
            map[list1[i]] = (i, false)
        }
        for i in 0..<list2.count {
            if map[list2[i]] != nil {
                map[list2[i]]!.0 += i
                map[list2[i]]!.1 = true
                minIndex = min(minIndex, map[list2[i]]!.0)
            }
        }
        return Array(map.filter({ (k,v) -> Bool in
            return v.0 == minIndex && v.1
        }).keys)
    }
}
