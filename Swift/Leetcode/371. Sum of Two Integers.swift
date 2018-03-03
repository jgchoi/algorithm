class Solution {
    func getSum(_ a: Int, _ b: Int) -> Int {
        var x = a
        var y = b
        while y != 0 {
            var carry = x & y;
            x = x ^ y;
            y = carry << 1;
        }
        return x;
    }
}
