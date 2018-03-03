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
    var minValue = Int.max
    var previous = Int.max
    func getMinimumDifference(_ root: TreeNode?) -> Int {
        inOrder(root)
        return minValue
    }
    
    func inOrder(_ tree: TreeNode?) {
        if tree == nil { return }
        inOrder(tree!.left)
        minValue = min(minValue, abs(tree!.val - previous))
        previous = tree!.val
        inOrder(tree!.right)
    }
}
