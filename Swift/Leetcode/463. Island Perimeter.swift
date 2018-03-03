class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        var result = 0
        for i in 0..<grid.count {
            for j in 0..<grid[i].count {
                if grid[i][j] == 1 {
                    result += 4
                    if i-1 >= 0 && grid[i-1][j] == 1 {
                        result -= 1
                    }
                    
                    if i+1 < grid.count && grid[i+1][j] == 1 {
                        result -= 1
                    }
                    
                    
                    if j-1 >= 0 && grid[i][j-1] == 1 {
                        result -= 1
                    }
                    if j+1 < grid[i].count && grid[i][j+1] == 1 {
                        result -= 1
                    }
                }
            }
        }
        return result
    }
}
