/*
 Given numRows, generate the first numRows of Pascal's triangle.
 
 For example, given numRows = 5,
 Return
 
 [
 [1],
 [1,1],
 [1,2,1],
 [1,3,3,1],
 [1,4,6,4,1]
 ]*/
class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var result: [[Int]] = []
        var row: [Int] = []
        for _ in 0..<numRows {
            row.insert(1, at: 0)
            if row.count-1 > 1 {
                for j in 1..<row.count-1 {
                    row[j] = row[j] + row[j+1]
                }
            }
            
            result.append(row)
        }
        return result
    }
}
