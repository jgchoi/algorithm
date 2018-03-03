class Solution {
    func romanToInt(_ s: String) -> Int {
        let map:[Character: Int] = ["I":1, "V":5, "X":10, "L":50, "C":100, "D":500, "M": 1000]
        var result = 0
        let sArray = Array(s)
        for i in 0..<sArray.count {
            if i != sArray.count-1 && map[sArray[i]]! < map[sArray[i+1]]! {
                result -= map[sArray[i]]!
            } else {
                result += map[sArray[i]]!
            }
        }
        return result
    }
    
}
