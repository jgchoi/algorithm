class Solution {
    func titleToNumber(_ s: String) -> Int {
        var string = s.uppercased()
        var exp = s.count - 1
        var result = 0
        for c in string.unicodeScalars {
            result += Int(pow(26.0, Double(exp))) * Int((UInt8(c.value) - UInt8(ascii: "A") + 1))
            exp -= 1
        }
        return result
    }
}
