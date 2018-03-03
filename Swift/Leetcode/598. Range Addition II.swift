class Solution {
    func maxCount(_ m: Int, _ n: Int, _ ops: [[Int]]) -> Int {
        if ops.isEmpty { return m*n }
        var a = ops[0][0]
        var b = ops[0][1]
        for i in 0..<ops.count {
            a = min(a, ops[i][0])
            b = min(b, ops[i][1])
        }
        return a*b
    }
}
