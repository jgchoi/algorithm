class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        var originalColor = image[sr][sc]
        var newImage = Array(image)
        
        
        func checkNearField(_ r: Int, _ c: Int) {
            if newImage[r][c] != originalColor {
                return
            }
            newImage[r][c] = -1
            
            if r-1 >= 0 {
                checkNearField(r-1, c)
            }
            if r+1 < newImage.count {
                checkNearField(r+1, c)
            }
            if c-1 >= 0 {
                checkNearField(r, c-1)
            }
            if c+1 < newImage[r].count {
                checkNearField(r, c+1)
            }
        }
        checkNearField(sr, sc)
        for i in 0..<newImage.count {
            for j in 0..<newImage[i].count {
                if newImage[i][j] == -1 {
                    newImage[i][j] = newColor
                }
            }
        }
        return newImage
    }
}
