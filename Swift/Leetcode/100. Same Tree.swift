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
    func isSameTree(_ a: TreeNode?, _ b: TreeNode?) -> Bool {
        if a == nil && b == nil {
            return true
        } else if a == nil || b == nil || a!.val != b!.val {
            return false
        }
        return isSameTree(a!.left, b!.left) && isSameTree(a!.right, b!.right)
    }
}
