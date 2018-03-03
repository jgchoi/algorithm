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
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        var leftVal = 0
        if root?.left != nil && root?.left?.left == nil && root?.left?.right == nil {
            leftVal = root!.left?.val ?? 0
        }
        
        return sumOfLeftLeaves(root?.left) + sumOfLeftLeaves(root?.right) + leftVal
    }
    
}
