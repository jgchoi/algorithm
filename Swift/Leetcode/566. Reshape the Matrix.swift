class Solution {
    func matrixReshape(_ nums: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        var newMatrix: [[Int]] = []
        var currentR = 0
        var currentC = 0
        if nums.count * nums[0].count != r * c {
            return nums
        }
        newMatrix.append([])
        for i in 0..<nums.count {
            for j in 0..<nums[i].count {
                if currentR < r {
                    if currentC >= c {
                        currentR += 1
                        newMatrix.append([])
                        currentC = 0
                    }
                    if currentC < c {
                        newMatrix[currentR].append(nums[i][j])
                        currentC += 1
                    }
                }
            }
        }
        
        return newMatrix
    }
}
