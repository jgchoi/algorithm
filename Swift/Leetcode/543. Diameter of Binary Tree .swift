//543. Diameter of Binary Tree
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {
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
}
