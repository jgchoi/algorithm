class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var map:[Int:Int] = [:]
        for i in 0..<numbers.count {
            if let matchIndex = map[target - numbers[i]] {
                return [matchIndex, i+1]
            } else {
                map[numbers[i]] = i+1
            }
        }
        return []
    }
}
