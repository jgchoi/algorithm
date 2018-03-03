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
    func convertBST(_ root: TreeNode?) -> TreeNode? {
        if root != nil {
            root?.val += convertBST(root?.right)?.val ?? 0
            
            root?.left?.val += root?.val ?? 0
            convertBST(root?.left)
            
        }
        return root
    }
}
