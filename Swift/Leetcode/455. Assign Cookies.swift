class Solution {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        var sortedG = g.sorted()
        var sortedS = s.sorted()
        var currentChildIndex = 0
        var currentCookieIndex = 0
        var result = 0
        while currentChildIndex < g.count {
            while currentCookieIndex < s.count {
                if sortedG[currentChildIndex] <= sortedS[currentCookieIndex] {
                    result += 1
                    currentCookieIndex += 1
                    break
                } else {
                    currentCookieIndex += 1
                }
            }
            currentChildIndex += 1
        }
        return result
    }
}
