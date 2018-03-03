class Solution {
    func numberOfBoomerangs(_ points: [[Int]]) -> Int {
        var result = 0
        var map: [Int: Int] = [:]
        for i in 0..<points.count {
            for j in 0..<points.count {
                if i == j { continue }
                let distance = distanceBetween(pointA: points[i], pointB: points[j])
                if map[distance] == nil {
                    map[distance] = 1
                } else {
                    map[distance] = map[distance]! + 1
                }
            }
            map.values.forEach({ (v) in
                result += v * (v-1)
            })
            map.removeAll()
        }
        return result
    }
    
    func distanceBetween(pointA: [Int], pointB: [Int]) -> Int {
        let dx = pointA[0] - pointB[0]
        let dy = pointA[1] - pointB[1]
        return dx*dx + dy*dy
    }
    
}
