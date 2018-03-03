class Solution {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var result = 0
        var cGrid = grid
        func getArea(_ i: Int,_ j: Int) -> Int {
            if cGrid[i][j] != 1 {
                return 0
            }
            var result = 0
            if cGrid[i][j] == 1 {
                result += 1
                cGrid[i][j] = 2
            }
            if i - 1 >= 0 {
                result += getArea(i-1, j)
            }
            if i + 1 < cGrid.count {
                result += getArea(i+1, j)
            }
            if j - 1 >= 0 {
                result += getArea(i, j-1)
            }
            if j + 1 < cGrid[i].count {
                result += getArea(i, j+1)
            }
            return result
        }
        
        for i in 0..<cGrid.count {
            for j in 0..<cGrid[i].count {
                if cGrid[i][j] == 1 {
                    result = max(result, getArea(i, j))
                }
            }
        }
        return result
    }
}
