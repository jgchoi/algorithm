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
    func findTilt(_ root: TreeNode?) -> Int {
        var tilt = 0
        func findTotal(_ root: TreeNode?) -> Int {
            if root == nil { return 0 }
            return root!.val + findTotal(root?.left) + findTotal(root?.right)
        }
        if root == nil { return 0 }
        return abs(findTotal(root?.left) - findTotal(root?.right)) + findTilt(root?.left) + findTilt(root?.right)
    }
}
