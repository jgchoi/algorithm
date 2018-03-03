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
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        if root?.right == nil && root?.left == nil {
            return root
        }
        
        let right = root?.right
        root?.right = invertTree(root?.left)
        root?.left = invertTree(right)
        return root
    }
}
