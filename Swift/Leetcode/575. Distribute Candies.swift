class Solution {
    func distributeCandies(_ candies: [Int]) -> Int {
        
        var map: [Int:Int] = [:]
        var brother: [Int:Int] = [:]
        var i = 0
        for i in 0..<candies.count {
            map[candies[i]] = i
        }
        
        return min(candies.count/2, map.keys.count)
    }
}
