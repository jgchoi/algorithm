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
    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
        var map: [Int: Bool] = [:]
        var result = false
        func getValue(root: TreeNode?) {
            if root != nil {
                if map[k-root!.val] != nil {
                    result = true
                } else {
                    map[root!.val] = true
                }
                getValue(root: root?.left)
                getValue(root: root?.right)
            }
        }
        getValue(root: root)
        return result
    }
}
