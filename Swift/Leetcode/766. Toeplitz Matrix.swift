class Solution {
    func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
        let rows = matrix.count
        let cols = matrix[0].count
        for row in stride(from: rows-1, to: -1, by: -1) {
            var currentRow = row
            var currentCol = 0
            var targetValue = matrix[row][currentCol]
            while currentRow < rows {
                currentRow += 1
                currentCol += 1
                if currentCol == cols || currentRow == rows {
                    break
                }
                if targetValue != matrix[currentRow][currentCol] {
                    return false
                }
                
            }
            currentCol = 0
        }
        for col in 1..<cols {
            var currentRow = 0
            var currentCol = col
            var targetValue = matrix[currentRow][col]
            while currentCol < cols {
                currentRow += 1
                currentCol += 1
                if currentCol == cols || currentRow == rows {
                    break
                }
                if targetValue != matrix[currentRow][currentCol] {
                    return false
                }
                
            }
            currentCol = 0
        }
        return true
    }
}
