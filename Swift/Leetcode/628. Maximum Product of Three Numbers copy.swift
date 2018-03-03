/*
Given an integer array, find three numbers whose product is maximum and output the maximum product.

Example 1:
Input: [1,2,3]
Output: 6
Example 2:
Input: [1,2,3,4]
Output: 24
Note:
The length of the given array will be in range [3,104] and all elements are in the range [-1000, 1000].
Multiplication of any three numbers in the input won't exceed the range of 32-bit signed integer.

*/

func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
    var result = 0
    func getLength(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        var left = getLength(root?.left)
        var right = getLength(root?.right)
        result = max(result, left + right)
        return max(left, right) + 1
    }
    getLength(root)
    return result
}
