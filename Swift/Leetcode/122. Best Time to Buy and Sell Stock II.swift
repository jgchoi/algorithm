class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.isEmpty { return 0 }
        var result = 0
        for i in 0..<prices.count-1 {
            if prices[i+1] > prices[i] {
                result += prices[i+1] - prices[i]
            }
        }
        return result
    }
}
